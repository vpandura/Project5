
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
</head>
	<body>




			<%
			String UserName= "";
			String Password = "";
			
		
			String userName = request.getParameter("username");
			String password = request.getParameter("password");
			
			// if database doesn't exists, MongoDB will create it for you
			
			MongoClient mongo;
		   mongo = new MongoClient("localhost", 27017);							
			// If database doesn't exists, MongoDB will create it for you
			DB db = mongo.getDB("project");
			
			DBCollection registration = db.getCollection("registration");
			
			
		
			//logic
			
		 
			 //DBCollection collection=db.getCollection("drank");
			BasicDBObject bs = new BasicDBObject();
			bs.put("username", userName);
			bs.put("password",password);
			DBCursor cur = registration.find (bs);
		
			while(cur.hasNext())
			{
				BasicDBObject obj = (BasicDBObject)cur.next();
				UserName = obj.getString("username");
				Password = obj.getString("password");
			
				if((UserName.equals(userName))&&(Password.equals(password)))
				{
					response.sendRedirect("index-1.jsp");
				}
				else 
				{
					//response.setContentType("text/html");
					//PrintWriter out = response.getWriter();
					out.println("<html>");
					out.println("<head>");
					out.println("<title>Login Failure!!!</title>");  
					out.println("</head>");
					out.println("<body>");
					out.println("<h1>Login Failure!!!Re-enter email or password</h1>"); 
					out.println("</body>");
					out.println("</html>");
				}
			}
		
		 //}
			
	  
		
	  
	%>
	
	</body>
	</html>
	