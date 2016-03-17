<html>
	<head>
		<%@page language="java" %>
		<%@page import="java.util.*" %>
		<%@page import="java.io.*" %>
		<%@page import="java.text.*" %>
		<%@page import="javax.servlet.*" %>
		<%@page import="javax.servlet.http.*" %>
		<%@page import="com.mongodb.*"%>
		<%@page import="java.io.IOException"%>
		<%@page import="java.util.*"%>
		<%@page import="java.io.*"%>
		<%@page import="java.util.HashMap"%>
	</head>
	<body>
	<%
			String customerName = request.getParameter("customerName");
			String address = request.getParameter("address");
			String phoneNumber = request.getParameter("phone");
			String emailID = request.getParameter("emailID");
			String NoFlyers = request.getParameter("NoFlyers");
			String PrefClass = request.getParameter("PrefClass");
			String TripType = request.getParameter("TripType");
			String EcoPriceOneWay = request.getParameter("EcoPriceOneWay");
			String BusPriceOneWay = request.getParameter("BusPriceOneWay");
			String EcoPriceTwoWay = request.getParameter("EcoPriceTwoWay");
			String BusPriceTwoWay = request.getParameter("BusPriceTwoWay");
			String total_string = request.getParameter("totaltostring");
			//Double t = Double.parseDouble("total");
			
			Random r = new Random( System.currentTimeMillis() );
			int rand= 1000 + r.nextInt(20000);
			String ticketNo = Integer.toString(rand);
			
			Double total = 0.0;
			
		
			
			MongoClient mongo;
			mongo = new MongoClient("localhost", 27017);
			
			// If database doesn't exists, MongoDB will create it for you
			DB db = mongo.getDB("project");
				
			// If the collection does not exists, MongoDB will create it for you
			DBCollection buy = db.getCollection("buy");
			System.out.println("Collection buy selected successfully");
			
				BasicDBObject doc = new BasicDBObject("title", "buy").
				append("customername", customerName).
				append("address", address).
				append("phoneNumber", phoneNumber).
				append("ticketNo", ticketNo).
				append("total_string", total_string);
			buy.insert(doc);
					 
		 	
			response.setContentType("text/html;charset=UTF-8");
			out.println("<!DOCTYPE html>");
			out.println("<html>");
			out.println("<head>");
			out.println("<link rel='stylesheet' href='styles1.css' type='text/css' />");
			out.println("</head>");
			out.println("<body>");
			out.println("<h1>Your Receipt</h1>");
			out.println("<h1>Ticket Number:"+ticketNo+"</h1>");
			out.println("<table border='2'>");
			
			out.println("<tr>");
			out.println("<td>Customer Name</td>");
			out.println("<td>"+customerName+"</td>");
			out.println("</tr>");

			out.println("<tr>");
			out.println("<td>Address</td>");
			out.println("<td>"+address+"</td>");
			out.println("</tr>");

			out.println("<tr>");
			out.println("<td>Phone Number</td>");
			out.println("<td>"+phoneNumber+"</td>");
			out.println("</tr>");
			
			out.println("<tr>");
			out.println("<td>Total Payment</td>");
			out.println("<td>"+total_string+"</td>");
			out.println("</tr>");
			
			out.println("</table>");
			out.println("<a href='index.jsp'>Index Page</a>");
			out.println("</body>");	
			out.println("</html>");
			
	%>
	