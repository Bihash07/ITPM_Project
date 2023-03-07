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
 * Servlet implementation class update
 */
@WebServlet("/update")
public class update extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public update() {
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
		String guestName = request.getParameter("guestName");
		String rooms = request.getParameter("rooms");
		String adults = request.getParameter("adults");
		String children = request.getParameter("children");
		
		
		boolean isTrue;
		
		isTrue = roomsUtill.updatereserve(roomid, guestName, rooms, adults, children);
		
		if(isTrue == true) {
			
			List<HRooms> resDetails = roomsUtill.getreserveDetails(roomid);
			request.setAttribute("resDetails", resDetails);
			
			RequestDispatcher dis = request.getRequestDispatcher("account.jsp");
			dis.forward(request, response);
		}
		else {
			List<HRooms> resDetails = roomsUtill.getreserveDetails(roomid);
			request.setAttribute("resDetails", resDetails);
			
			RequestDispatcher dis = request.getRequestDispatcher("account.jsp");
			dis.forward(request, response);
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
