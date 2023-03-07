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

import DButill.calenderUtill;
import service.Calender;

/**
 * Servlet implementation class calenderSearch
 */
@WebServlet("/calenderSearch")
public class calenderSearch extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public calenderSearch() {
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
		String searchIn = request.getParameter("search");
		boolean isTrue;
		
	
		//call the method retrieve based on the user name
		isTrue = calenderUtill.validate(searchIn);
		
		
		if(isTrue == true) {
			
			//create a List object and call the method retEmployee
			List <Calender> calDetails = calenderUtill.getcalender(searchIn);
			request.setAttribute("calDetails",calDetails);
			
			//forward the response to user.jsp
			RequestDispatcher dis = request.getRequestDispatcher("Calenderaccount.jsp");
			dis.forward(request, response);
		}
		else {
			
			//Validation
			out.println("<script type='text/javascript'>");
			out.println("alert('The search-in date you entered is not found');");
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
