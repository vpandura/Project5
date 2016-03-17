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
	<body>

	 <div align ="center">
		<%

			//Get the values from the form
			String flightID = request.getParameter("flightID");
			String flightName = request.getParameter("flightName");
			String noOfSeats = request.getParameter("noOfSeats");
			String Airlines = request.getParameter("Airlines");
			String sourceCity = request.getParameter("sourceCity");
			String destinationCity = request.getParameter("destinationCity");
			String EcoPriceOneWay = request.getParameter("EcoPriceOneWay");
			String BusPriceOneWay = request.getParameter("BusPriceOneWay");
			String EcoPriceTwoWay = request.getParameter("EcoPriceTwoWay");
			String BusPriceTwoWay = request.getParameter("BusPriceTwoWay");
			String DepTime = request.getParameter("DepTime");
			String ArrTime = request.getParameter("ArrTime");
			
			MongoClient mongo;
		   mongo = new MongoClient("localhost", 27017);							
			// If database doesn't exists, MongoDB will create it for you
			DB db = mongo.getDB("project");
				
			// If the collection does not exists, MongoDB will create it for you
			DBCollection flights = db.getCollection("flights");
			//System.out.println("Collection addproducts selected successfully");
			
			BasicDBObject doc = new BasicDBObject("title", "flights").
				append("flightID", flightID).
				append("flightName",flightName).
				append("noOfSeats", noOfSeats).
				append("Airlines",Airlines).
				append("sourceCity", sourceCity).
				append("destinationCity", destinationCity).
				
				append("EcoPriceOneWay", EcoPriceOneWay).
				append("BusPriceOneWay", BusPriceOneWay).
				append("EcoPriceTwoWay", EcoPriceTwoWay).
				append("BusPriceTwoWay", BusPriceTwoWay).
				append("DepTime", DepTime).
				append("ArrTime", ArrTime);
									
			flights.insert(doc);
				
			
		%>
		
		<h1> Flight:<%=flightID%> of airline <%=Airlines%> is added successfully</h1>
			
			<table>
			
			<tr>
			<td>
			
			<a href='index-1.jsp'> Index </a>
			</td>
			</tr>
			
			
			
			</table>
			</div>
			</body>
			</html>
		
		
		
		
		
		
			
				
			