<html>
	<head>
		<%@ page language="java" %>
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
		<%@page import="comBook.Project.model.Book%>
	</head>
	<body>
	<% 
		/*String Key = request.getParameter("key");
		String flightName = request.getParameter("flightName");
		String sourceCity = request.getParameter("sourceCity");
		String destinationCity = request.getParameter("destinationCity");
		String Airlines = request.getParameter("Airlines");
		String EcoPriceOneWay = request.getParameter("EcoPriceOneWay");
		String BusPriceOneWay = request.getParameter("BusPriceOneWay");
		String EcoPriceTwoWay = request.getParameter("EcoPriceTwoWay");
		String BusPriceTwoWay = request.getParameter("BusPriceTwoWay");
		String sourceCity = request.getParameter("sourceCity");
		String destinationCity = request.getParameter("destinationCity");*/
		String DepTime = request.getParameter("DepTime");
		String ArrTime = request.getParameter("ArrTime");
		String NoFlyers = request.getParameter("NoFlyers");
		String PrefClass = request.getParameter("PrefClass");
		String TripType = request.getParameter("TripType");
			
			Book shoppingBook;
			shoppingBook = (Book) session.getAttribute("Book");
			session.setAttribute("Book", shoppingBook);
			shoppingBook = (Book) session.getAttribute("Book");
        
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            HashMap<String, List<String>> product = shoppingBook.getbookItems();
			out.println("<html>");
			out.println("<head>");
			out.println("<link rel='stylesheet' href='styles1.css' type='text/css' />");
			out.println("</head>");
			out.println("<body>");
			out.println("<h1>Book Flight</h1>");
			out.println("<table border='2'>");
			out.println("<tr>");
				out.println("<th>Flight ID</th>");
				out.println("<th>Airlines</th>");
				out.println("<th>Flight Name</th>");
				out.println("<th>Price</th>");
				out.println("<th>Number of Flyers</th>");
				out.println("<th>Source City</th>");
				out.println("<th>Destination City</th>");
				out.println("<th>Departure Date</th>");
				out.println("<th>Arrival Date</th>");
			out.println("</tr>");
			double total = 0.0;
			for(String key: product.keySet()){
			List<String> items = product.get(key);
			out.println("<tr>");
				out.println("<td>"+key+"</td>");
				out.println("<td>"+items.get(0)+"</td>");
				out.println("<td>"+items.get(1)+"</td>");
				out.println("<td>"+items.get(2)+"</td>");
				
				out.println("<td>"+items.get(3)+"</td>");
				out.println("<td>"+items.get(4)+"</td>");
				out.println("<td>"+items.get(5)+"</td>");
				out.println("<td>"+items.get(6)+"</td>");
				out.println("<td>"+items.get(7)+"</td>");
				out.println("<td>"+items.get(8)+"</td>");
				//out.println("<td>"+items.get(1)+"</td>");
				//out.println("<td>"+items.get(2)+"</td>");
				//total = total+Double.parseDouble(items.get(0))-Double.parseDouble(items.get(1))-Double.parseDouble(items.get(2));
				if(PrefClass == "1"){
					if(TripType == "OneWay"){
						total = NoFlyers * Double.parseDouble(EcoPriceOneWay);
					}else if(TripType == "RoundTrip"){
						total = NoFlyers * Double.parseDouble(EcoPriceOneWay);
					}else{
						total = 999;
					}
				}else if(PrefClass == "2"){
					if(TripType == "OneWay"){
						total = NoFlyers * Double.parseDouble(EcoPriceOneWay);
					}else if(TripType == "RoundTrip"){
						total = NoFlyers * Double.parseDouble(EcoPriceOneWay);
					}else{
						total = 799;
					}
				}else{
					total = 899;
				}
				//total = total+Double.parseDouble(items.get(0));
				
				//out.println("<td><form method='get' action='deleteitem.jsp'><input type='hidden' name='key' value='"+key+"'><input type='hidden' name='productPrice' value='"+items.get(0)+"'><input type='hidden' name='rebate' value='"+items.get(1)+"'><input type='hidden' name='discount' value='"+items.get(2)+"'><input type='submit' value='delete'></form></td>");
//out.println("<td><form method='get' action='deleteitem.jsp'><input type='hidden' name='key' value='"+key+"'><input type='hidden' name='productPrice' value='"+items.get(0)+"'><input type='submit' value='delete'></form></td>");
							
			
			
			
			out.println("</tr>");	
		} 		
			out.println("</table>");
			out.println("<hr/>");
			out.println("Total Amount:");
			out.println(total);
			out.println("<hr/>");
			out.println("<form method='get' action='placeorder.jsp'><table><tr><td>Name:</td><td><input type='text' name='customerName'></td></tr><tr><td>Address:</td><td><input type='text' name='address'></td></tr><tr><td>Credit Card Number:</td><td><input type='text' name='card'></td></tr><tr><td>Phone No.:</td><td><input type='text' name='phone'></td></tr><tr><td></td><td><input type='submit' value='Place Order'></td></tr></table></form>");
			//out.println("<form action='/Assignment1/console.html'><input type='submit' value='Add More Items'></form>");
			//out.println("<form method='get' action='proceedToCheckOut'><input type='submit' value='Proceed to Checkout'></form>");
			out.println("</body>");	
			out.println("</html>"); 
		%>
		