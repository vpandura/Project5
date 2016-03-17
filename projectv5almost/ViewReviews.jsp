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
			//Get the values from the form
			String searchField = "flightID";
			
			//Get the product selected
			String searchParameter = request.getParameter("flightID");
			
			MongoClient mongo;
		   mongo = new MongoClient("localhost", 27017);							
			// If database doesn't exists, MongoDB will create it for you
			DB db = mongo.getDB("project");
				
			// If the collection does not exists, MongoDB will create it for you
			DBCollection myReviews = db.getCollection("myReviews");
			//System.out.println("Collection registration selected successfully");
			
			
			
			// Find and display 
			BasicDBObject searchQuery = new BasicDBObject();
			searchQuery.put(searchField, searchParameter);

			DBCursor cursor = myReviews.find(searchQuery);
			
			//PrintWriter out = response.getWriter();
			//out.println(cursor);
						
			out.println("<html>");
			out.println("<head> </head>");
			out.println("<body>");
			out.println("<h1> Reviews For:"+ searchParameter+ "</h1>");
			
			out.println("<table>");
			
			out.println("<tr>");
			out.println("<td>");
			out.println("<a href='index.jsp'> Index </a>");
			out.println("</td>");
			out.println("</tr>");
			
			
			
			out.println("</table>");
			out.println("<br><br><hr>");
			
			if(cursor.count() == 0){
				out.println("There are no reviews for this product.");
			}else{
			
				out.println("<table>");
				
				String flightID = "";
				String flightName = "";
				String Airlines = "";
				String reviewRating =  "";
				String reviewDate =  "";
				String recommend =  "";
				String reviewText = "";
				
				while (cursor.hasNext()) {
					//out.println(cursor.next());
					BasicDBObject obj = (BasicDBObject) cursor.next();
								
					out.println("<table  border='5' cellpadding='1' cellspacing='1' >");
					
					out.println("<tr>");
					out.println("<td> Flight ID: </td>");
					flightID = obj.getString("flightID");
					out.println("<td>" +flightID+ "</td>");
					out.println("</tr>");
					
					out.println("<tr>");
					out.println("<td> Flight Name: </td>");
					flightName = obj.getString("flightName");
					out.println("<td>" +flightName+ "</td>");
					out.println("</tr>");
					
					out.println("<tr>");
					out.println("<td> Airlines: </td>");
					Airlines = obj.getString("Airlines");
					out.println("<td>" +Airlines+ "</td>");
					out.println("</tr>");
					
					
					out.println("<tr>");
					out.println("<td> Review Rating: </td>");
					reviewRating = obj.getString("reviewRating").toString();
					out.println("<td>" +reviewRating+ "</td>");
					out.println("</tr>");
					
					out.println("<tr>");
					out.println("<td> Review Date: </td>");
					reviewDate = obj.getString("reviewDate");
					out.println("<td>" +reviewDate+ "</td>");
					out.println("</tr>");
					
					out.println("<tr>");
					out.println("<td> Recommend: </td>");
					recommend = obj.getString("recommend");
					out.println("<td>" +recommend+ "</td>");
					out.println("</tr>");
					
					out.println("<tr>");
					out.println("<td> Review Text: </td>");
					reviewText = obj.getString("reviewText");
					out.println("<td>" +reviewText+ "</td>");
					out.println("</tr>");
					out.println("</table>");
					
				}
			}	
				out.println("</table>");
				out.println("</body>");
				out.println("</html>");
			
		%>
		</div>
		</body>
	</html>