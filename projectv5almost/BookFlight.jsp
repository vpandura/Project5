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
		String noOfSeats = request.getParameter("noOfSeats");
		/*String arrDate = request.getParameter("arrDate");
		String depDate = request.getParameter("depDate");
		String NoFlyers = request.getParameter("NoFlyers");
		String PrefClass = request.getParameter("PrefClass");
		String TripType = request.getParameter("TripType");*/
		

        Book shoppingBook;	
        shoppingBook = (Book) session.getAttribute("Book");
        if(shoppingBook == null){
          shoppingBook = new Book();
          session.setAttribute("Book", shoppingBook);
        }  
		List<String> features = new ArrayList();
		
		features.add(Airlines);
		features.add(EcoPriceOneWay);
		features.add(BusPriceOneWay);
		features.add(EcoPriceTwoWay);
		features.add(BusPriceTwoWay);
		features.add(sourceCity);
		features.add(destinationCity);
		features.add(DepTime);
		features.add(ArrTime);
		/*features.add(NoFlyers);
		features.add(PrefClass);
		features.add(TripType);
		features.add(arrDate);
		features.add(depDate);*/
		shoppingBook.BookFlight(flightID, features);
		session.setAttribute("Book", shoppingBook);
		
		MongoClient mongo;
		mongo = new MongoClient("localhost", 27017);
		
		DB db = mongo.getDB("project");
		// If the collection does not exists, MongoDB will create it for you
		DBCollection myBook = db.getCollection("myBook");
		
		BasicDBObject doc = new BasicDBObject("title", "myBook").
			append("Airlines", Airlines).
			append("EcoPriceOneWay", EcoPriceOneWay).
			append("BusPriceOneWay", BusPriceOneWay).
			append("EcoPriceTwoWay", EcoPriceTwoWay).
			append("BusPriceTwoWay", BusPriceTwoWay).
			append("sourceCity", sourceCity).
			append("destinationCity", destinationCity).
			append("DepTime", DepTime).
			append("ArrTime", ArrTime);
			/*append("NoFlyers", NoFlyers).
			append("PrefClass", PrefClass).
			append("TripType", TripType).
			append("depDate", depDate).
			append("arrDate", arrDate);*/
			myBook.insert(doc);
		
		System.out.println("Document inserted successfully");
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
				out.println("<th>Economy Class price-One way</th>");
				out.println("<th>Business  Class price-One way</th>");
				out.println("<th>Economy Class price-Round trip</th>");
				out.println("<th>Business  Class price-Round trip</th>");
				out.println("<th>Source City</th>");
				out.println("<th>Destination City</th>");
				out.println("<th>Departure time</th>");
				out.println("<th>Arrival Time</th>");
				/*out.println("<th>Number of Flyers</th>");
				out.println("<th>Preferred Class</th>");
				out.println("<th>Trip Type</th>");
				out.println("<th>Departure Date</th>");
				out.println("<th>Return Date</th>");*/
			out.println("</tr>");
	
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
				/*out.println("<td>"+items.get(9)+"</td>");
				out.println("<td>"+items.get(10)+"</td>");
				out.println("<td>"+items.get(11)+"</td>");
				out.println("<td>"+items.get(12)+"</td>");
				out.println("<td>"+items.get(13)+"</td>");*/
				//out.println("<td><form method='get' action='deleteItem'><input type='hidden' name='key' value='"+key+"'><input type='hidden' name='productPrice' value='"+items.get(0)+"'><input type='hidden' name='rebate' value='"+items.get(1)+"'><input type='hidden' name='discount' value='"+items.get(2)+"'><input type='submit' value='delete'></form></td>");
			//out.println("<td><form method='get' action='deleteitem.jsp'><input type='hidden' name='key' value='"+key+"'><input type='hidden' name='productPrice' value='"+items.get(0)+"'><input type='submit' value='delete'></form></td>");
			//out.println("</tr>"); 
		} 		
		out.println("</table>");
			
		out.println("<form method='get' action='BookPassenger.jsp'><input type='submit' value='Confirm'></form>");
		out.print("<input type='hidden' name='flightID' value="+flightID+" readonly>");
                    //out.print("<input type='hidden' name='flightName' value="+flightName+" readonly>");
					out.print("<input type='hidden' name='noOfSeats' value="+noOfSeats+" readonly>");
                    out.print("<input type='hidden' name='sourceCity' value="+sourceCity+" readonly>");
					out.print("<input type='hidden' name='destinationCity' value="+destinationCity+" readonly>");
					out.print("<input type='hidden' name='Airlines' value="+Airlines+" readonly>");
					out.print("<input type='hidden' name='EcoPriceOneWay' value="+EcoPriceOneWay+" readonly>");
					out.print("<input type='hidden' name='BusPriceOneWay' value="+BusPriceOneWay+" readonly>");
					out.print("<input type='hidden' name='EcoPriceTwoWay' value="+EcoPriceTwoWay+" readonly>");
					out.print("<input type='hidden' name='BusPriceTwoWay' value="+BusPriceTwoWay+" readonly>");
					out.print("<input type='hidden' name='DepTime' value="+DepTime+" readonly>");
					out.print("<input type='hidden' name='ArrTime' value="+ArrTime+" readonly>");
		out.println("</body>");	
		out.println("</html>");
%>		