package servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import DButill.roomsUtill;
import service.HRooms;

/**
 * Servlet implementation class delete
 */
@WebServlet("/delete")
public class delete extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public delete() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
		
		String roomid = request.getParameter("roomid");
	  
		boolean isTrue;
		
		isTrue = roomsUtill.deletereserve(roomid);
		
		if (isTrue == true) {
			RequestDispatcher dispatcher = request.getRequestDispatcher("Rooms_Dashboard.jsp");
			dispatcher.forward(request, response);
		}
		else {
			
			List<HRooms> resDetails = roomsUtill.getreserveDetails(roomid);
			request.setAttribute("resDetails", resDetails);
			
			RequestDispatcher dispatcher = request.getRequestDispatcher("account.jsp");
			dispatcher.forward(request, response);
		}
		
		
	}
		
	    
	

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
