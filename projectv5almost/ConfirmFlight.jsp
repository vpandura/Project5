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
		<%@page import="comBook.Project.model.Book"%>
		<%@page import="comTicket.PrjTicket.model.Ticket"%>
	</head>
	<body>
	 
	<%
		
		String Airlines = request.getParameter("Airlines");
		String EcoPriceOneWay = request.getParameter("EcoPriceOneWay");
		String BusPriceOneWay = request.getParameter("BusPriceOneWay");
		String EcoPriceTwoWay = request.getParameter("EcoPriceTwoWay");
		String BusPriceTwoWay = request.getParameter("BusPriceTwoWay");
		String sourceCity = request.getParameter("sourceCity");
		String destinationCity = request.getParameter("destinationCity");
		String DepTime = request.getParameter("DepTime");
		String ArrTime = request.getParameter("ArrTime");
		String flightID = request.getParameter("flightID");
		String arrDate = request.getParameter("arrDate");
		String depDate = request.getParameter("depDate");
		String NoFlyers = request.getParameter("NoFlyers");
		//int NoFlyers = integer.("NoFlyers");
		String PrefClass = request.getParameter("PrefClass");
		String TripType = request.getParameter("TripType");
		/*String round = "Round-Trip";
		String oneway = "One-Way";
		String economy = "Economy";
		String business = "Business";*/
		
		Double total = 0.0;
		
		
		
			
		//String Key = request.getParameter("key");
		
		Book shoppingBook;
		shoppingBook = (Book) session.getAttribute("Book");
		session.setAttribute("Book", shoppingBook);
		shoppingBook = (Book) session.getAttribute("Book");
		HashMap<String, List<String>> product = shoppingBook.getbookItems();
		out.println("<html>");
		out.println("<head>");
		out.println("<link rel='stylesheet' href='styles.css' type='text/css' />");
		out.println("</head>");
		out.println("<body>");
		out.println("<h1>Flights Booked</h1>");
		out.println("<table border='2'>");
			out.println("<tr>");
				out.println("<th>Flight ID#</th>");
				out.println("<th>Airlines</th>");
				/*out.println("<th>Economy Class price-One way</th>");
				out.println("<th>Business  Class price-One way</th>");
				out.println("<th>Economy Class price-Round trip</th>");
				out.println("<th>Business  Class price-Round trip</th>");*/
				out.println("<th>Source City</th>");
				out.println("<th>Destination City</th>");
				out.println("<th>Departure time</th>");
				out.println("<th>Arrival Time</th>");
				//out.println("<td> "+NoFlyers+" <td>");
				
				/*out.println("<th>Number of Flyers</th>");
				out.println("<th>Preferred Class</th>");
				out.println("<th>Trip Type</th>");
				out.println("<th>Departure Date</th>");
				out.println("<th>Return Date</th>");*/
				//out.println("<th></th>");
			out.println("</tr>");
	
		for(String key: product.keySet()){
			List<String> items = product.get(key);
			out.println("<tr>");
				out.println("<td>"+key+"</td>");
				out.println("<td>"+items.get(0)+"</td>");
				/*out.println("<td>"+items.get(1)+"</td>");
				out.println("<td>"+items.get(2)+"</td>");			
				out.println("<td>"+items.get(3)+"</td>");
				out.println("<td>"+items.get(4)+"</td>");*/
				out.println("<td>"+items.get(5)+"</td>");
				out.println("<td>"+items.get(6)+"</td>");
				out.println("<td>"+items.get(7)+"</td>");
				out.println("<td>"+items.get(8)+"</td>");
				/*out.println("<td>"+items.get(9)+"</td>");
				out.println("<td>"+items.get(10)+"</td>");
				out.println("<td>"+items.get(11)+"</td>");
				out.println("<td>"+items.get(12)+"</td>");
				out.println("<td>"+items.get(13)+"</td>");*/
				//out.println("<td><form method='get' action='deleteItem'><input type='hidden' name='key' value='"+key+"'><input type='hidden' name='productPrice' value='"+items.get(0)+"'><input type='hidden' name='rebate' value='"+items.get(1)+"'><input type='hidden' name='discount' value='"+items.get(2)+"'><input type='submit' value='delete'></form></td>");
			//out.println("<td><form method='get' action='deleteitem.jsp'><input type='hidden' name='key' value='"+key+"'><input type='hidden' name='productPrice' value='"+items.get(0)+"'><input type='submit' value='delete'></form></td>");
			//out.println("</tr>"); 
				
		if(PrefClass.equals("Economy")){
			if(TripType.equals("RoundTrip")){
				total = Double.parseDouble(items.get(3)) * Double.parseDouble(NoFlyers);
			}else if(TripType.equals("OneWay")){
				total = Double.parseDouble(items.get(1)) * Double.parseDouble(NoFlyers);
			}else{
				total = 0.0;
			}
		}else if(PrefClass.equals("Business")){
			if(TripType.equals("RoundTrip")){
				total = Double.parseDouble(items.get(4)) * Double.parseDouble(NoFlyers);
			}else if(TripType.equals("OneWay")){
				total = Double.parseDouble(items.get(2)) * Double.parseDouble(NoFlyers);
			}else{
				total = 0.0;
			}
		}else{
			total = 0.0;
		}
				
		
		} 		
		out.println("</table>");
		
		String total_string = total.toString();
		
		out.println("<html>");
		out.println("<head>");
		out.println("<link rel='stylesheet' href='styles.css' type='text/css' />");
		out.println("</head>");
		out.println("<body>");
		out.println("<h1>Booking Details</h1>");
		out.println("<table border='2'>");
			out.println("<tr>");
				out.println("<th>Number of Flyers</th>");
				out.println("<th>Trip Type</th>");
				out.println("<th>Preferred Class</th>");
				out.println("<th>Departure Date</th>");
				out.println("<th>Return Date</th>");
				out.println("<th>Total Price</th>");
			out.println("</tr>");
		out.println("<tr>");
				out.println("<td>"+NoFlyers+"</td>");
				out.println("<td>"+TripType+"</td>");
				out.println("<td>"+PrefClass+"</td>");
				out.println("<td>"+depDate+"</td>");			
				out.println("<td>"+arrDate+"</td>");
				out.println("<td>"+total_string+"</td>");
		out.println("</tr>");	
		out.println("</table>");
		
		out.println("<h1>Payment Details</h1>");
		out.println("<form method='get' action='receipt.jsp'><table><tr><td>Name:</td><td><input type='text' name='customerName'></td></tr><tr><td>Address:</td><td><input type='text' name='address'></td></tr><tr><td>Credit Card Number:</td><td><input type='text' name='card'></td></tr><tr><td>Phone No.:</td><td><input type='text' name='phone'></td></tr><tr><td>Email ID:</td><td><input type='email' name='emailID'></td></tr><tr><td>Total Payment:</td><td><input type='text' name='totaltostring' value="+total_string+" readonly></td></tr><tr><td></td><td><input type='submit' value='Confirm and Pay'></td></tr></table></form>");
		out.print("<input type='hidden' name='total_string' value="+total_string+" readonly>");
        out.print("<input type='hidden' name='flightID' value="+flightID+" readonly>");
		out.print("<input type='hidden' name='Airlines' value="+Airlines+" readonly>");
		out.print("<input type='hidden' name='PrefClass' value="+PrefClass+" readonly>");
		out.print("<input type='hidden' name='TripType' value="+TripType+" readonly>");
		out.print("<input type='hidden' name='EcoPriceOneWay' value="+EcoPriceOneWay+" readonly>");
		out.print("<input type='hidden' name='EcoPriceTwoWay' value="+EcoPriceTwoWay+" readonly>");
		out.print("<input type='hidden' name='BusPriceOneWay' value="+BusPriceOneWay+" readonly>");
		out.print("<input type='hidden' name='BusPriceTwoWay' value="+BusPriceTwoWay+" readonly>");
		out.print("<input type='hidden' name='NoFlyers' value="+NoFlyers+" readonly>");
		
		out.println("</body>");	
		out.println("</html>");
%>		