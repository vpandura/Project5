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

<%
			//Get the values from the form
			String flightID = request.getParameter("flightID");
			String flightName = request.getParameter("flightName");
			String sourceCity = request.getParameter("sourceCity");
			String destinationCity =request.getParameter("destinationCity");
			String Airlines =request.getParameter("Airlines");
			String classTravelled =request.getParameter("classTravelled");
			String LastFlightDate=request.getParameter("LastFlightDate");
			String foodService=request.getParameter("foodService");
			String passengerName=request.getParameter("passengerName");
			String passengerAge = request.getParameter("passengerAge");
			String passengerGender = request.getParameter("passengerGender");
			int reviewRating = Integer.parseInt(request.getParameter("reviewRating"));	
		    String reviewDate = request.getParameter("reviewDate");
			String recommend = request.getParameter("recommend");
			String reviewText = request.getParameter("reviewText");
			
			
			
			
			
			
			
			
			
			MongoClient mongo;
		   mongo = new MongoClient("localhost", 27017);							
			// If database doesn't exists, MongoDB will create it for you
			DB db = mongo.getDB("project");
				
			// If the collection does not exists, MongoDB will create it for you
			DBCollection myReviews = db.getCollection("myReviews");
			
				
			BasicDBObject doc = new BasicDBObject("title", "myReviews").
				append("flightID", flightID).
				append("flightName", flightName).
				append("sourceCity", sourceCity).
				append("destinationCity", destinationCity).
				
				append("Airlines", Airlines).
				append("classTravelled", classTravelled).
				append("LastFlightDate", LastFlightDate).
				append("foodService", foodService).
				
				append("passengerName",passengerName).
				append("passengerAge", passengerAge).
				append("passengerGender", passengerGender).
				
				append("reviewRating", reviewRating).
				append("reviewDate", reviewDate).
				append("recommend", recommend).
				append("reviewText", reviewText);
				
				
				
									
			myReviews.insert(doc);
				
			System.out.println("Document inserted successfully");
			
			//Send the response back to the JSP
			//PrintWriter out = response.getWriter();
			
						
			out.println("<html>");
			out.println("<head>");
			out.println("<meta http-equiv='Content-Type' content='text/html; charset=utf-8' />");
			out.println("<title>Write Review</title>");
			out.println("<link rel='stylesheet' href='styles.css' type='text/css' />");
			out.println("</head>");
			out.println("<head> </head>");
			out.println("<body>");
			out.println("<h1 style='text-align:center;'> Review submitted </h1>");
			
			out.println("<table>");
			
			out.println("<tr>");
			out.println("<td>");
			out.println("<p style='text-align:center;'><a href='index.jsp' class='formbutton'>Home page</a></p>");
			//out.println("<p style='text-align:center;'><a href='DataAnalytics.html' class='formbutton'>Data Analysis</a></p>");
			//out.println("<a href='index.jsp'> Index </a>");
			out.println("</td>");
			out.println("</tr>");
			
			
			
			out.println("</table>");
			
			out.println("</body>");
			out.println("</html>");
		
	%>