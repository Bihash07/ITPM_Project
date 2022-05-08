package servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import DButill.roomsUtill;


@WebServlet("/insert")
public class insert extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
       
   
    public insert() {
        super();
        
    }
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    	       // int roomid = request.getParameter("roomid");
    			String guestName = request.getParameter("guestName");
    			String rooms = request.getParameter("rooms");
    			String adults = request.getParameter("adults");
    			String children = request.getParameter("children");
    			
    			boolean isTrue;
    			
    			isTrue = roomsUtill.insertreserve( guestName, rooms, adults, children);
    			
    			if(isTrue == true) {
    				RequestDispatcher dis = request.getRequestDispatcher("ProceedPayment.jsp");
    				dis.forward(request, response);
    			} else {
    				RequestDispatcher dis2 = request.getRequestDispatcher("unsuccess.jsp");
    				dis2.forward(request, response);
    			}
    			
    		}

	
    		
    
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	 
		
	}

}
