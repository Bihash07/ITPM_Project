package facility;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/GuideInsertServlet")
public class GuideInsertServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String yname = request.getParameter("yrname");
		String language = request.getParameter("cono");
		String email = request.getParameter("email");
		String date = request.getParameter("datee");
		String timeperiod = request.getParameter("days");
		String contactno  = request.getParameter("cono");
		String places = request.getParameter("place");
		
		boolean isTrue;
		isTrue = OtherServices.InsertforGuide(yname,language,email,date,timeperiod,contactno,places);
		
		if(isTrue == true) {
			
			RequestDispatcher dis03 = request.getRequestDispatcher("OtherServices.jsp");
			dis03.forward(request, response);
		}
		else {
			RequestDispatcher dis04 = request.getRequestDispatcher("unsuccess.jsp");
			dis04.forward(request, response);
			
		}
		
	
		
	}

}
