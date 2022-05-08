package facility;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/SportDeleteServlet")
public class SportDeleteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String name= request.getParameter("name");
		boolean isTrue;
		
		
		isTrue = OtherServices.DeleteSportRes(name);
		
		
		if(isTrue == true) {
			
			
			RequestDispatcher dis09 = request.getRequestDispatcher("OS_sportSearch.jsp");
			dis09.forward(request, response);
			
		}
		else {
			
			List<ResDetails> rDetails = OtherServices.getResdetails(name);
			request.setAttribute("rDetails", rDetails);
		
			RequestDispatcher dis10 = request.getRequestDispatcher("unsuccess.jsp");
			dis10.forward(request, response);
		}
		
	}

}
