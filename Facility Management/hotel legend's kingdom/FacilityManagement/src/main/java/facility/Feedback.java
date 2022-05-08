package facility;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/Feedback")
public class Feedback extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String name = request.getParameter("name");
		String feedback  = request.getParameter("feed");
		String rate = request.getParameter("a");
		
		
		boolean isTrue;
		isTrue = OtherServices.Feedback(name, feedback, rate);
		
		if(isTrue == true) {
			
			RequestDispatcher dis05 = request.getRequestDispatcher("Thankyou.jsp");
			dis05.forward(request, response);
		}
		else {
			RequestDispatcher dis06 = request.getRequestDispatcher("unsuccess.jsp");
			dis06.forward(request, response);
			
		}
		
	}

}
