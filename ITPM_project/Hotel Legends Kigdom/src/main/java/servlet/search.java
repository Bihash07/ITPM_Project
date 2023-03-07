package servlet;

import java.io.IOException;
import java.io.PrintWriter;
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
 * Servlet implementation class search
 */
@WebServlet("/search")
public class search extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public search() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
		
		PrintWriter out = response.getWriter();
		response.setContentType("text/html");
		
		//Declare Variables and get the Parameters from the form
		String guestName = request.getParameter("search");
		boolean isTrue;
		
	
		//call the method retrieve based on the user name
		isTrue = roomsUtill.validate(guestName);
		
		
		if(isTrue == true) {
			
			//create a List object and call the method retEmployee
			List <HRooms> resDetails = roomsUtill.getreserve(guestName);
			request.setAttribute("resDetails",resDetails);
			
			//forward the response to user.jsp
			RequestDispatcher dis = request.getRequestDispatcher("account.jsp");
			dis.forward(request, response);
		}
		else {
			
			//Validation
			out.println("<script type='text/javascript'>");
			out.println("alert('The guest name you entered is not found');");
			out.println("location='searchR.jsp'");
			out.println("</script>");
			
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
