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
    String account = null;
    String seperator = "-";
    int accId = 0;
    String customerId = null;
    boolean emailCheck = false;
    boolean usernameCheck = false;
    boolean allgood = false;

    mongo = new MongoClient("localhost", 27017);
    DB db = mongo.getDB("TicketEasy");
    DBCollection register = db.getCollection("Agent Register");

    String userName = request.getParameter("username");
    String password = request.getParameter("password");
	String airline = request.getParameter("Airline");

    BasicDBObject regCHK = new BasicDBObject();
    regCHK.put("Account", "TEA - 0000");
    DBCursor findIt = register.find(regCHK);

    if (!findIt.hasNext()) {
        account = "TEA - 0000";
        accId = 1;
        customerId = account + " " + seperator + " " + accId;

        BasicDBObject customerFirst = new BasicDBObject();
        customerFirst.append("Username", userName);
        customerFirst.append("Password", password);
		customerFirst.append("Airline", airline);

        register.insert(customerFirst);
    } 
%>


<!-- Welcome Block -->
<%
    BasicDBObject getRecord = new BasicDBObject();
    getRecord.put("Username", userName);

    DBCursor cursor = register.find(getRecord);

    if (cursor.hasNext()) {
        BasicDBObject obj = (BasicDBObject) cursor.next();
        customerObj.setUserName((String) obj.get("Username"));
        customerObj.setPassword((String) obj.get("Password"));
    }
%>

<div class="jumbotron">
    <div class="container">
        <br><h1 style="font-size: 18px;">Welcome</h1><br>
        <div class="row">
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



