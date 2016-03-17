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
<link rel="stylesheet" href="default.css" type="text/css" />
</head>
	<body>
	<div align="center">

<%
			String searchParameter = "Frontier Airlines";
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
			
			out.println("<h1> Frontier Airlines Flights </h1>");
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
                        out.println("<h4>Airlines:</h4>");
                        out.println("</td>");
                        out.println("<td>");
                        out.println("<input type='text'  name='Airlines' value="+obj.getString("Airlines")+"  readonly>");
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
					 out.println("</table>");
					 
                    out.print("<form action='' method='get' >");
				  out.println(" <input type='submit' class='btn btn-primary' value='Book'>");
				  out.print("<input type='hidden' name='flightID' value="+obj.getString("flightID")+" readonly>");
                    out.print("<input type='hidden' name='flightName' value="+obj.getString("flightName")+" readonly>");
                    out.print("<input type='hidden' name='noOfSeats' value="+obj.getString("noOfSeats")+" readonly>");
                    out.print("<input type='hidden' name='sourceCity' value="+obj.getString("sourceCity")+" readonly>");
					out.print("<input type='hidden' name='destinationCity' value="+obj.getString("destinationCity")+" readonly>");
					out.print("<input type='hidden' name='Airlines' value="+obj.getString("Airlines")+" readonly>");
					out.print("<input type='hidden' name='EcoPriceOneWay' value="+obj.getString("EcoPriceOneWay")+" readonly>");
					out.print("<input type='hidden' name='BusPriceOneWay' value="+obj.getString("BusPriceOneWay")+" readonly>");
					out.print("<input type='hidden' name='EcoPriceTwoWay' value="+obj.getString("EcoPriceTwoWay")+" readonly>");
					out.print("<input type='hidden' name='BusPriceTwoWay' value="+obj.getString("BusPriceTwoWay")+" readonly>");
					out.print("<input type='hidden' name='DepTime' value="+obj.getString("DepTime")+" readonly>");
					out.print("<input type='hidden' name='ArrTime' value="+obj.getString("ArrTime")+" readonly>");
                    out.print("</form>");
					
					
					out.print("<form action='review.jsp' method='get' >");
				  out.println(" <input type='submit' class='btn btn-success' value='Write Review'>");
				   out.print("<input type='hidden' name='flightID' value="+obj.getString("flightID")+" readonly>");
                    out.print("<input type='hidden' name='flightName' value="+obj.getString("flightName")+" readonly>");
                    out.print("<input type='hidden' name='noOfSeats' value="+obj.getString("noOfSeats")+" readonly>");
                    out.print("<input type='hidden' name='sourceCity' value="+obj.getString("sourceCity")+" readonly>");
				 out.print("<input type='hidden' name='destinationCity' value="+obj.getString("destinationCity")+" readonly>");
				 out.print("<input type='hidden' name='Airlines' value="+obj.getString("Airlines")+" readonly>");
					out.print("<input type='hidden' name='EcoPriceOneWay' value="+obj.getString("EcoPriceOneWay")+" readonly>");
					out.print("<input type='hidden' name='BusPriceOneWay' value="+obj.getString("BusPriceOneWay")+" readonly>");
					out.print("<input type='hidden' name='EcoPriceTwoWay' value="+obj.getString("EcoPriceTwoWay")+" readonly>");
					out.print("<input type='hidden' name='BusPriceTwoWay' value="+obj.getString("BusPriceTwoWay")+" readonly>");
					out.print("<input type='hidden' name='DepTime' value="+obj.getString("DepTime")+" readonly>");
					out.print("<input type='hidden' name='ArrTime' value="+obj.getString("ArrTime")+" readonly>");
                    out.print("</form>");
					
					
					out.print("<form action='ViewReviews.jsp' method='get' >");
				  out.println(" <input type='submit' class='btn btn-info' value='View Review'>");
				  out.print("<input type='hidden' name='flightID' value="+obj.getString("flightID")+" readonly>");
                    out.print("<input type='hidden' name='flightName' value="+obj.getString("flightName")+" readonly>");
                    out.print("<input type='hidden' name='noOfSeats' value="+obj.getString("noOfSeats")+" readonly>");
                    out.print("<input type='hidden' name='sourceCity' value="+obj.getString("sourceCity")+" readonly>");
					out.print("<input type='hidden' name='destinationCity' value="+obj.getString("destinationCity")+" readonly>");
					out.print("<input type='hidden' name='Airlines' value="+obj.getString("Airlines")+" readonly>");
					out.print("<input type='hidden' name='EcoPriceOneWay' value="+obj.getString("EcoPriceOneWay")+" readonly>");
					out.print("<input type='hidden' name='BusPriceOneWay' value="+obj.getString("BusPriceOneWay")+" readonly>");
					out.print("<input type='hidden' name='EcoPriceTwoWay' value="+obj.getString("EcoPriceTwoWay")+" readonly>");
					out.print("<input type='hidden' name='BusPriceTwoWay' value="+obj.getString("BusPriceTwoWay")+" readonly>");
					out.print("<input type='hidden' name='DepTime' value="+obj.getString("DepTime")+" readonly>");
					out.print("<input type='hidden' name='ArrTime' value="+obj.getString("ArrTime")+" readonly>");
                    out.print("</form>");
			}
			
			%>
			</div>
		</body>
       </html>	
		
	
	
