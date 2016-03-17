<html>
	<head>	
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
<div align="center">
<%
			String searchParameter = request.getParameter("id");
			String searchField = "flightID";
			
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
			
			out.println("<h1>Flight Information </h1>");
			while(cursor.hasNext()){
				BasicDBObject obj = (BasicDBObject) cursor.next();
				
				out.println("<table>");   
                    out.println("<tr>");
                        out.println("<td>");
                        out.println("<h4>Flight ID:</h4>");
                        out.println("</td>");
                        out.println("<td>");
                        out.println("<input type='text'  name='flightID' value="+obj.getString("flightID")+"  readonly>");
                        out.println("</td>");
                    out.println("</tr>");
                    out.println("<tr>");
                        out.println("<td>");
                        out.println("<h4>Flight name:</h4>");
                        out.println("</td>");
                        out.println("<td>");
                        out.println("<input type='text'  name='flightName' value="+obj.getString("flightName")+"  readonly>");
                        out.println("</td>");
                    out.println("</tr>"); 
                    out.println("<tr>");
                        out.println("<td>");
                        out.println("<h4> Total number of seats: </h4>");
                        out.println("</td>");
                        out.println("<td>");
                        out.println("<input type='text' name='noOfSeats' value="+obj.getString("noOfSeats")+"  readonly>");
                        out.println("</td>");
                    out.println("</tr>"); 
                    out.println("<tr>");  
                        out.println("<td>");
                        out.println("<h4>Source City:</h4>");
                        out.println("</td>");
                        out.println("<td>");
                        out.println("<input type='text' name='sourceCity' value="+obj.getString("sourceCity")+"  readonly>");
                        out.println("</td>");
                    out.println("</tr>");
					out.println("<tr>");  
                        out.println("<td>");
                        out.println("<h4>Destination City:</h4>");
                        out.println("</td>");
                        out.println("<td>");
                        out.println("<input type='text' name='destinationCity' value="+obj.getString("destinationCity")+"  readonly>");
                        out.println("</td>");
						 
                    out.println("</tr>");
					
					out.println("<tr>");  
                        out.println("<td>");
                        out.println("<h4>EcoPriceOneWay:</h4>");
                        out.println("</td>");
                        out.println("<td>");
                        out.println("<input type='number' name='EcoPriceOneWay' value="+obj.getString("EcoPriceOneWay")+"  readonly>");
                        out.println("</td>");
						 
                    out.println("</tr>");
					
					out.println("<tr>");  
                        out.println("<td>");
                        out.println("<h4>BusPriceOneWay:</h4>");
                        out.println("</td>");
                        out.println("<td>");
                        out.println("<input type='number' name='BusPriceOneWay' value="+obj.getString("BusPriceOneWay")+"  readonly>");
                        out.println("</td>");
						 
                    out.println("</tr>");
					
					out.println("<tr>");  
                        out.println("<td>");
                        out.println("<h4>EcoPriceTwoWay:</h4>");
                        out.println("</td>");
                        out.println("<td>");
                        out.println("<input type='number' name='EcoPriceTwoWay' value="+obj.getString("EcoPriceTwoWay")+"  readonly>");
                        out.println("</td>");
						 
                    out.println("</tr>");
					
					out.println("<tr>");  
                        out.println("<td>");
                        out.println("<h4>BusPriceTwoWay:</h4>");
                        out.println("</td>");
                        out.println("<td>");
                        out.println("<input type='number' name='BusPriceTwoWay' value="+obj.getString("BusPriceTwoWay")+"  readonly>");
                        out.println("</td>");
						 
                    out.println("</tr>");
					
					out.println("<tr>");  
                        out.println("<td>");
                        out.println("<h4>DepTime:</h4>");
                        out.println("</td>");
                        out.println("<td>");
                        out.println("<input type='text' name='DepTime' value="+obj.getString("DepTime")+"  readonly>");
                        out.println("</td>");
						 
                    out.println("</tr>");
					
					out.println("<tr>");  
                        out.println("<td>");
                        out.println("<h4>ArrTime:</h4>");
                        out.println("</td>");
                        out.println("<td>");
                        out.println("<input type='text' name='ArrTime' value="+obj.getString("ArrTime")+"  readonly>");
                        out.println("</td>");
						 
                    out.println("</tr>");
					
					
					
					
					out.println("<hr>");
				out.println("</table>");
				  out.println(" <input type='submit' class='btn btn-primary' value='Book'>");
					 
                    
			}
			
			%>
			</div>
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
			
		
	
	
