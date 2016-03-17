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
<h1> Booking and Reviews </h1>
<%

		String Airlines = request.getParameter("Airlines");
		String EcoPriceOneWay = request.getParameter("EcoPriceOneWay");
		String BusPriceOneWay = request.getParameter("BusPriceOneWay");
		String EcoPriceTwoWay = request.getParameter("EcoPriceTwoWay");
		String BusPriceTwoWay = request.getParameter("BusPriceTwoWay");
		String sourceCity = request.getParameter("sourceCity");
		String destinationCity = request.getParameter("destinationCity");
		String noOfSeats = request.getParameter("noOfSeats");
		String DepTime = request.getParameter("DepTime");
		String ArrTime = request.getParameter("ArrTime");
		String flightName = request.getParameter("flightName");
		String flightID = request.getParameter("flightID");
				
				
				  
				  out.println("<h1> Booking Portal</h1>");
				  
		out.println("<form method='get' action='ConfirmFlight.jsp'><table><tr><td>Number of Flyers:</td><td><input type='number' name='NoFlyers'></td></tr><br><tr><td>Trip Type:</td><td><select type='text' name='TripType'><option value='OneWay'>One-Way</option><option value='RoundTrip'>Round-Trip</option></td></tr><br><tr><td>Preferred Class:</td><td><select type='text' name='PrefClass'><option value='Economy'>Economy</option><option value='Business'>Business</option></td></tr><br><tr><td>Departure Date:</td><td><input type='text' name='depDate'></td></tr><tr><td>Return Date:</td><td><input type='text' name='arrDate'></td></tr><tr><td></td><td><input type='submit' value='Confirm'></td></tr></table></form>");
		
			  
			  out.println("<br>");
			  
			  
			  
			  out.println("<br>");
			  
			  out.print("<form action='ConfirmFlight.jsp' method='get' >");
				  //out.println(" <input type='submit' class='btn btn-primary' value='Confirm Booking'>");
					out.print("<input type='hidden' name='flightID' value="+flightID+" readonly>");
                    //out.print("<input type='hidden' name='flightName' value="+flightName+" readonly>");
					out.print("<input type='hidden' name='noOfSeats' value="+noOfSeats+" readonly>");
                    out.print("<input type='hidden' name='sourceCity' value="+sourceCity+" readonly>");
					out.print("<input type='hidden' name='destinationCity' value="+destinationCity+" readonly>");
					out.print("<input type='hidden' name='Airlines' value="+Airlines+" readonly>");
					out.print("<input type='hidden' name='EcoPriceOneWay' value="+EcoPriceOneWay+" readonly>");
					out.print("<input type='hidden' name='BusPriceOneWay' value="+BusPriceOneWay+" readonly>");
					out.print("<input type='hidden' name='EcoPriceTwoWay' value="+EcoPriceTwoWay+" readonly>");
					out.print("<input type='hidden' name='BusPriceTwoWay' value="+BusPriceTwoWay+" readonly>");
					out.print("<input type='hidden' name='DepTime' value="+DepTime+" readonly>");
					out.print("<input type='hidden' name='ArrTime' value="+ArrTime+" readonly>");
					//out.print("<input type='hidden' name='NoFlyers' value="+  +" readonly>");
                    
                    out.print("</form>");
					
					//out.println("</body>");
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

