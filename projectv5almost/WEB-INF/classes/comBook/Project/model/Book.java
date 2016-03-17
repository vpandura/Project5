package comBook.Project.model;
import java.util.HashMap;
import java.util.*;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.*;
import javax.servlet.ServletException;



	public class Book {
    HashMap<String, List<String>> bookItems;
    public Book(){
     bookItems = new HashMap<String, List<String>>();
      
    }
    public HashMap getbookItems(){
        return bookItems;
    }
    //public void deletebook(String flightID){
       // bookItems.remove(flightID);
   // }
	public void BookFlight(String flightID, List<String> value){
        bookItems.put(flightID, value);
    }
   
}
     	
