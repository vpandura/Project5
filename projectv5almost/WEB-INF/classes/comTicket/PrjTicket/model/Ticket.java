package comTicket.PrjTicket.model;
import java.util.HashMap;
import java.util.*;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.*;
import javax.servlet.ServletException;



	public class Ticket {
    HashMap<String, List<String>> ticketItems;
    public Ticket(){
     ticketItems = new HashMap<String, List<String>>();
      
    }
    public HashMap getticketItems(){
        return ticketItems;
    }
    //public void deletebook(String flightID){
       // bookItems.remove(flightID);
   // }
	public void ticketFlight(String flightID, List<String> value){
        ticketItems.put(flightID, value);
    }
   
}
     	
