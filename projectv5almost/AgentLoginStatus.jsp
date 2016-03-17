
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
			
			
			String username = request.getParameter("username");
			String password = request.getParameter("password");
			
		
			//Admin
			String chkUnameAA = "agentdomAA";
			String chkUnameDA = "agentdomDA"; 
			String chkUnameSA = "agentdomSA"; 
			String chkUnameFA = "agentdomFA"; 
			String chkUnameAI = "agentintAI"; 
			String chkUnameEA = "agentintEA"; 
			String chkUnameVA = "agentintVA";
			String chkUnameBA = "agentintBA";
			String chkPword = "1234";
		
			//logic
			
			//for(int i = 0; i<8; ++i){
				
				if((chkUnameAA.equals(username))&&(chkPword.equals(password)))
				{	
					response.sendRedirect("AgentWorkPageAA.jsp");
				}else if((chkUnameDA.equals(username))&&(chkPword.equals(password)))
				{	
					response.sendRedirect("AgentWorkPageDA.jsp");
				}else if((chkUnameSA.equals(username))&&(chkPword.equals(password)))
				{	
					response.sendRedirect("AgentWorkPageSA.jsp");
				}else if((chkUnameFA.equals(username))&&(chkPword.equals(password)))
				{	
					response.sendRedirect("AgentWorkPageFA.jsp");
				}else if((chkUnameAI.equals(username))&&(chkPword.equals(password)))
				{	
					response.sendRedirect("AgentWorkPageAI.jsp");
				}else if((chkUnameEA.equals(username))&&(chkPword.equals(password)))
				{	
					response.sendRedirect("AgentWorkPageEA.jsp");
				}else if((chkUnameVA.equals(username))&&(chkPword.equals(password)))
				{	
					response.sendRedirect("AgentWorkPageVA.jsp");
				}else if((chkUnameBA.equals(username))&&(chkPword.equals(password)))
				{	
					response.sendRedirect("AgentWorkPageBA.jsp");
				}else
				{
				out.println("<html>");
				out.println("<head>");
				out.println("<title>Login Failure!!!</title>");  
				out.println("</head>");
				out.println("<body>");
				out.println("<h1>Login Failure!!!Re-enter email or password</h1>"); 
				out.println("</body>");
				out.println("</html>");
				}
			
			//}
			
	  
		
	  
	%>  
	
	</body>
	</html>
	