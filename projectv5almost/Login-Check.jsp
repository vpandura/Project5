<%@page import="com.mongodb.DBObject"%>
<%@page import="com.mongodb.DBCursor"%>
<%@page import="com.mongodb.MongoException"%>
<%@page import="com.mongodb.BasicDBObject"%>
<%@page import="com.mongodb.DBCollection"%>
<%@page import="com.mongodb.DB"%>
<%@page import="com.mongodb.MongoClient"%>
<%@page import="customer.*"%>
<%@page import="errorLog.*"%>
<!doctype html>

<head>
    <meta charset="utf-8">
    <title>Book Cheap Air Tickets, Domestic Flight Ticket Booking at Lowest Airfare on TicketEasy.</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css" integrity="sha512-dTfge/zgoMYpP7QbHy4gWMEGsbsdZeCXz7irItjcC3sPUFtf0kuFbDz/ixG7ArTxmDjLXDmezHubeNikyKGVyQ==" crossorigin="anonymous">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap-theme.min.css" integrity="sha384-aUGj/X2zp5rLCbBxumKTCw2Z50WgIr1vs/PFN4praOTvYXWlVyh2UtNUU0KAUhAX" crossorigin="anonymous">
    <style>
        @font-face {
            font-family: Myriad-Pro;
            src: url(fonts/MYRIADPRO-REGULAR.OTF);
        }
        *{
            font-family:Myriad-Pro;
        }
        .sign-in-container-top {
            border: 1px rgba(214,214,214,1.00) solid;
            background-color: rgba(214,214,214,0.3);
            border-radius: 10px;
            border-radius: 10px;
            padding-bottom: 25px;
            margin-bottom:5%;
        }
        .sign-in-container-bottom {
            border: 1px rgba(214,214,214,1.00) solid;
            background-color: rgba(0,0,0,0.05);
            border-top: none;
            border-bottom-left-radius: 10px;
            border-bottom-right-radius: 10px;
            padding-bottom: 25px;
        }
        .sign-in-button {
            margin-top: 20px;
        }
        .create-account-button {
            margin-top: 15px;
        }
    </style>
</head>


<header>
    <div class="navbar navbar-default navbar-fixed-top navbar-inverse">
        <div class="container">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#example"> <span class="icon-bar"></span> <span class="icon-bar"></span> <span class="icon-bar"></span> </button>
                <img src="images/logo.svg" width="50px" alt="TicketEasy-logo" style=" padding-top:8px;" class="navbar-left">
                <h1 class="navbar-brand" style="display:inline-block; margin-left:1px; margin-top:5px; color:rgba(255,255,255,0.2); font-family: 'Myriad-Pro'; font-size:
                    1.7em;">TicketEasy</h1>
            </div>
            <div class="collpase navbar-collapse"> <a class="btn btn-primary navbar-btn navbar-right" style="margin-top:15px; font-family:'Myriad-Pro';">My Account &nbsp;<span class="glyphicon glyphicon-menu-down"></span></a> </div>
        </div>
    </div>
</header>
<!-- Header --> 

<!-- JSP Script-->
<%
    // Insert into MongoDB
    MongoClient mongo;
    customer customerObj = new customer();
    error errorMsg = new error();
    boolean usernameCheck = false;
    boolean passwordCheck = false;
    boolean bothGood = false;

    mongo = new MongoClient("localhost", 27017);
    DB db = mongo.getDB("TicketEasy");
    DBCollection register = db.getCollection("Customer Register");

    String userName = request.getParameter("username");
    String password = request.getParameter("password");

    BasicDBObject getRecord = new BasicDBObject();
    getRecord.put("Username", userName);

    DBCursor cursor = register.find(getRecord);

    if (cursor.hasNext()) {
        BasicDBObject obj = (BasicDBObject) cursor.next();
        customerObj.setFirstName((String) obj.getString("First Name"));
        customerObj.setUserName((String) obj.get("Username"));
        customerObj.setPassword((String) obj.get("Password"));

        if (customerObj.getUserName().equals(userName) && customerObj.getPassword().equals(password)) {
            bothGood = true;
        }else if(customerObj.getUserName().equals(userName) && !customerObj.getPassword().equals(password)){
            passwordCheck = false;
        }else if(!customerObj.getUserName().equals(userName) && customerObj.getPassword().equals(password)){
            usernameCheck = false;
        }
    } else if (!cursor.hasNext()) {
        usernameCheck = false;
    }
%>


<!-- Welcome Block -->
<%
    String fname = customerObj.getFirstName();
    String uName = customerObj.getUserName();
    String pWord = customerObj.getPassword();
%>

<%
    if (!usernameCheck) {
        String Message = "Incorrect Username!!";
        errorMsg.setMessage(Message);
        String bg = "bg-danger";
        errorMsg.setBackgroundColor(bg);
        String entrancemsg = "Sorry";
        errorMsg.setEntrance(entrancemsg);
    } 
    if (!passwordCheck) {
        String Message = "Incorrect Password!!";
        errorMsg.setMessage(Message);
        String bg = "bg-danger";
        errorMsg.setBackgroundColor(bg);
        String entrancemsg = "Sorry";
        errorMsg.setEntrance(entrancemsg);
    } 
    if (bothGood) {
        String Message = "Login Successful!!";
        errorMsg.setMessage(Message);
        String bg = "bg-success";
        errorMsg.setBackgroundColor(bg);
        String entrancemsg = "Welcome " + fname;
        errorMsg.setEntrance(entrancemsg);
		//out.println("<td>");
		/*out.println("<tr>");
								out.println("<td> <input type='text' name='Airlines' value='Airlines' checked> Select </td>");
                                out.println("<td> Airline Name: </td>");
                                out.println("<td>");
                                    out.println("<select name = 'Airlines'>");
										out.println("<option value= 'American Airlines'>All Products</option>");
                                out.println("</td>");
                            out.println("</tr>");*/
    }
    String entranceMssg = errorMsg.getEntrance();
    String message = errorMsg.getMessage();
    String backgroundColor = errorMsg.getBackgroundColor();
%>

<div class="jumbotron">
    <div class="container">
        <br><h1 style=" font-size: 18px;"><%=entranceMssg%></h1><br>
        <div class="row">
            <p class="text-center <%=backgroundColor%>" style="padding-top: 1%; padding-bottom: 1%;"><%=message%></p><br>
            <p style="font-size:12px; margin-top: 5%;" class="text-center">*Please remember your username and password</p>
        </div>
    </div> 
</div>


<footer style="position:absolute; bottom:0; left:0; width:100%;">
    <div style="width:100%; margin:0px; padding:0px;">
        <ol class="breadcrumb" style="background-color:rgba(0,0,0,0.73); color:rgba(255,255,255,1.00); border-radius:0px; margin-bottom:0px;">
            <li><a style="color:rgba(201,201,201,1.00);">Home</a></li>
            <li style="color:inherit" class="active">Sign in</li>
        </ol>
    </div>
    <div class="jumbotron" style="margin:0px; padding-top:10px; padding-bottom:5px;">
        <p class="text-center" style="font-size:1.2em;">Copyright &copy TicketEasy </p>
    </div>

</footer>



