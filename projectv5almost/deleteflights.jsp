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

		   String searchParameter = request.getParameter("flightID");	
		  
		   DB db = mongo.getDB("project");
			
			DBCollection flights = db.getCollection("flights");
			System.out.println("Collection flights selected successfully");
			
			BasicDBObject query = new BasicDBObject();
				query.append("flightID",searchParameter);
				flights.remove(query);
			
			%>
			<h1>Flight details Removed Successfully</h1>
			<br>
		   
			<h3>To go back</h1>
			<a href = 'index.jsp'>Click here</a>
			</body>
			</html>
				

		
