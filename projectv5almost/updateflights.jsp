<html>
	<head>
		<%@page language="java"%>
		<%@page import = "java.util.*"%>
		<%@page import = "java.io.*"%>
		<%@page import = "java.text.*"%>
		<%@page import = "java.util.Date"%>
		<%@page import = "java.io.IOException"%>
		<%@page import = "com.mongodb.*"%>
		
	</head>
	<body>
<%
			MongoClient mongo;
			mongo = new MongoClient("localhost", 27017);
    
		   	String flightID = request.getParameter("flightID");
			
			DB db = mongo.getDB("project");
			DBCollection flights = db.getCollection("flights");
			System.out.println("Collection flights selected successfully");
			
			BasicDBObject query = new BasicDBObject();
			query.append("flightID",flightID);
			flights.remove(query);
			
			
			String flightName = request.getParameter("flightName");
			String noOfSeats = request.getParameter("noOfSeats");
			String Airlines = request.getParameter("Airlines");
			String sourceCity = request.getParameter("sourceCity");
			String destinationCity = request.getParameter("destinationCity");
			
			BasicDBObject doc = new BasicDBObject("title", "flights").
				append("flightID", flightID).
				append("flightName",flightName).
				append("noOfSeats", noOfSeats).
				append("Airlines",Airlines).
				append("sourceCity", sourceCity).
				append("destinationCity", destinationCity);
				
				flights.insert(doc);
			
			%>
			<h1>Flight Update Successfully</h1>
			<br>
		    
			<h3>To go back</h1>
			<a href = 'index.jsp'>Click here</a>
			</body>
			</html>
				

		
