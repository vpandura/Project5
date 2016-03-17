<!doctype html>
<%@ page language="java" %>
<%@page import="java.util.*" %>
<%@page import ="java.io.*" %>
<%@page import ="javax.servlet.ServletException" %>
<%@page import ="javax.servlet.annotation.WebServlet " %>
<%@page import ="javax.servlet.http.HttpServlet " %>
<%@page import ="javax.servlet.http.HttpServletRequest " %>
<%@page import ="javax.servlet.http.HttpServletResponse" %>
<%@page import ="com.mongodb.MongoClient " %>
<%@page import ="com.mongodb.MongoException " %>
<%@page import ="com.mongodb.WriteConcern" %>
<%@page import ="com.mongodb.DB " %>
<%@page import ="com.mongodb.DBCollection " %>
<%@page import ="com.mongodb.BasicDBObject " %>
<%@page import ="com.mongodb.DBObject" %>
<%@page import ="com.mongodb.DBCursor " %>
<%@page import ="com.mongodb.ServerAddress " %>
<%@page import ="java.util.Arrays " %>
<%@page import ="java.util.List" %>
<%@page import ="java.util.Set " %>
<%@page import ="java.util.Date " %>
<%@page import ="java.util.HashMap" %>
<%@page import ="java.util.Map" %>
<%@page import ="java.io.IOException" %>
<html lang="en">
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

    <body>
        <header>
            <div class="navbar navbar-default navbar-fixed-top navbar-inverse">
                <div class="container">
                    <div class="navbar-header">
                        <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#example"> <span class="icon-bar"></span> <span class="icon-bar"></span> <span class="icon-bar"></span> </button>
                        <img src="images/logo.svg" width="50px" alt="TicketEasy-logo" style=" padding-top:8px;" class="navbar-left">
                        <h1 class="navbar-brand" style="display:inline-block; margin-left:1px; margin-top:5px; color:rgba(255,255,255,0.2); font-family: 'Myriad-Pro'; font-size:
                            1.7em;">TicketEasy</h1>
                    </div>
                    <div class="collpase navbar-collapse" id=""> <a class="btn btn-primary navbar-btn navbar-right" style="margin-top:15px; font-family:'Myriad-Pro';">My Account &nbsp;<span class="glyphicon glyphicon-menu-down"></span></a> </div>
                </div>
            </div>
        </header>
        <!-- Header --> 
		<%
			String searchParameter = "American Airlines";
			String searchField = "Airlines";
			
			MongoClient mongo;
		   mongo = new MongoClient("localhost", 27017);							
			// If database doesn't exists, MongoDB will create it for you
			DB db = mongo.getDB("project");
			
			// If the collection does not exists, MongoDB will create it for you
			DBCollection flights = db.getCollection("flights");
			
			//find and display
			
			BasicDBObject searchQuery = new BasicDBObject();
			searchQuery.put(searchField, searchParameter);
			
			DBCursor cursor = flights.find(searchQuery);
			
			out.println("<h1> American Airlines Flights </h1>");
			while(cursor.hasNext()){
				BasicDBObject obj = (BasicDBObject) cursor.next();
				
				
				
        out.println("<div class='container' id='sign-in-container' style='margin-top:5%'>");
            out.println("<div class='row'>);
              out.println("  <div class='col-md-6 col-md-offset-3 sign-in-container-top'>");
                   out.println(" <h1 class='text-center'>American Airlines</h1>");
                   out.println(" <hr>);
                   out.println(" <form action='CustomerRegistrationStatus.jsp' method='post'>");
                        out.println("<div class='form-group col-md-10 col-md-offset-1' >");
                          out.println("  <label class='control-label text-center' for='firstname' >Flight ID</label>");
							out.println("<input type='text'  name='flightID' class='form-control' value="+obj.getString("flightID")+"  readonly>");
                           
                       out.println(" </div>");
                       out.println(" <div class='form-group col-md-10 col-md-offset-1' >");
                           out.println(" <label class='control-label text-center' for='lastname' >Flight Name</label>");
                            
							out.println("<input type='text'  name='flightName' class='form-control' value="+obj.getString("flightName")+"  readonly>");
                           out.println(" <br>");
                           out.println(" <hr>");
                        out.println("</div>");
                        out.println("<div class='form-group col-md-10 col-md-offset-1' >");
                           out.println(" <label class='control-label text-center' for='emailaddress' >No. of seats</label>");
                            
							out.println("<input type='text' name='noOfSeats' class='form-control' value="+obj.getString("noOfSeats")+"  readonly>");
                       out.println(" </div>");
                        out.println("<div class='form-group col-md-10 col-md-offset-1'>");
                          out.println("  <label class="control-label text-center" for="phonenumber" >Source city</label>");
							out.println("<input type='text' name='sourceCity' value="+obj.getString("sourceCity")+"  readonly>");
                            
                           out.println(" <br>");
                           out.println(" <hr>");
                       out.println(" </div>");
                      
                        out.println("<div class='form-group col-md-10 col-md-offset-1'  >");
                           out.println(" <label class='control-label text-center' for='username' >Destination City</label>");
                            out.println("<input type='text' name='destinationCity' value="+obj.getString("destinationCity")+"  readonly>");
                       out.println(" </div>");
                       out.println(" <input type='submit' class='btn btn-danger col-md-6 col-md-offset-3 sign-in-button' value='Register'>");
                   out.println(" </form>");
               out.println(" </div>");
           out.println(" </div>");
       out.println(" </div>");
	%>
        <footer style="position:static; bottom:0; left:0; width:100%;">
            <div style="width:100%; margin:0px; padding:0px;">
                <ol class="breadcrumb" style="background-color:rgba(0,0,0,0.73); color:rgba(255,255,255,1.00); border-radius:0px; margin-bottom:0px;">
                    <li><a style="color:rgba(201,201,201,1.00);">Home</a></li>
                    <li style="color:inherit" class="active">Register</li>
                </ol>
            </div>
            <div class="jumbotron" style="margin:0px; padding-top:10px; padding-bottom:5px;">
                <p class="text-center" style="font-size:1.2em;">Copyright &copy TicketEasy </p>
            </div>

        </footer>

    </body>
</html>
