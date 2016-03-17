<html>
<head>
  <title>Review for Flights</title>
  <%@page language="java" %>
		<%@page import="java.util.*" %>
		<%@page import="java.io.*" %>
		<%@page import="javax.servlet.*" %>
		<%@page import="java.util.Date" %>
		<%@page import="com.mongodb.*"%>
		<link rel="stylesheet" href="default.css" type="text/css" />
		
</head>
<body>
  <h1>Flight Reviews</h1>
	
	
	<%
	    String flightID = request.getParameter("flightID");
		String flightName = request.getParameter("flightName");
		String sourceCity = request.getParameter("sourceCity");
		String destinationCity = request.getParameter("destinationCity");
		String Airlines = request.getParameter("Airlines");	

		MongoClient mongo;
		mongo = new MongoClient("localhost", 27017);
		DB db = mongo.getDB("project");
		DBCollection myReviews = db.getCollection("myReviews");
		
		
	%>
		
	<h3><%=Airlines%>:<%=flightID%></h3>
		
	<form method="get" action="SubmitReview.jsp">
		
		<fieldset>
			<legend>Flight Information:</legend>
			
			<table>
				<tr>
					<td> flightID: </td>
					<td> <%=flightID%> </td>
				</tr>
				
				<tr>
					<td> flightName: </td>
					<td> <%=flightName%> </td>
				</tr>
				
				<tr>
					<td> sourceCity: </td>
					<td> <%=sourceCity%> </td>
				</tr>
				
				<tr>
					<td> destinationCity: </td>
					<td> <%=destinationCity%> </td>
				</tr>
				
				<tr>
					<td> Airlines: </td>
					<td> <%=Airlines%> </td>
				</tr>
			</table>
		</fieldset>
		
		<fieldset>
			<legend>Reviews:</legend>
			<table>
			
				<tr>
					<td> Flight ID: </td>
					<td> <input type="text" name="flightID" value="<%=flightID%>" readonly>  </td>
				</tr>
				
				<tr>
					<td> Flight Name: </td>
					<td> <input type="text" name="flightName" value="<%=flightName%>" readonly>  </td>
				</tr>
				
				<tr>
					<td> Source City: </td>
					<td> <input type="text" name="sourceCity" value="<%=sourceCity%>" readonly>  </td>
				</tr>
				
				<tr>
					<td> Destination City: </td>
					<td> <input type="text" name="destinationCity" value="<%=destinationCity%>" readonly>  </td>
				</tr>
				
				<tr>
					<td> Airlines: </td>
					<td> <input type="text" name="Airlines" value="<%=Airlines%>" readonly>  </td>
				</tr>
				
				
				
				
				
				
				
				
				
				
				
				
				
					<tr>
						<td> Class Travelled: </td>
						<td> <select name="classTravelled">
							<option value="1" selected>Economy</option>
							<option value="2">Business</option> 
						</td>
					</tr>
				
				<tr>
					<td> Last Flight date: </td>
					<td> <input type="date" name="LastFlightDate"> </td>
				</tr>
				
				<tr>
					<td> Food service: </td>
					<td> <select name="foodService">
						<option value="1" selected>Excellent</option>
						<option value="2">Very Good</option>
						<option value="2">Satisfactory</option>
						<option value="2">Bad</option>  </td>
				</tr>
				
					
				<tr>
					<td> Passenger Name: </td>
					<td> <input type="text" name="passengerName"> </td>
				</tr>
				
				<tr>
					<td> Passenger Age: </td>
					<td> <input type="text" name="passengerAge"> </td>
				</tr>
				
				<tr>
					<td> Passenger Gender: </td>
					<td> <select name="passengerGender">
						<option value="1" selected>Male</option>
						<option value="2">Female</option>  </td>
				</tr>
				
				
				
				<tr>
					<td> Rate the flight : </td>
					<td>
						<select name="reviewRating">
						<option value="1" selected>1</option>
						<option value="2">2</option>
						<option value="3">3</option>
						<option value="4">4</option>
						<option value="5">5</option>  
					</td>
				</tr>
				
				<tr>
					<td> Review Date: </td>
					<td> <input type="date" name="reviewDate"> </td>
				</tr>
				
				<tr>
					<td> Would you recommend to others? </td>
					<td> <select name="recommend">
						<option value="1" selected>Yes</option>
						<option value="2">No</option>  </td>
				</tr>
				
				
				<tr>
					<td> Review Text: </td>
					<td><textarea name="reviewText" rows="4" cols="50"> </textarea></td>
				</tr>
				
			</table>
				
			<br><br>
			<input type="submit" value="Submit Review">
			
		</fieldset>
		
	</form>
		
	
</body>
</html>