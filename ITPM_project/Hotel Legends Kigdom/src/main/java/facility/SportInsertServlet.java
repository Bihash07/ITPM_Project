package facility;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/SportInsertServlet")
public class SportInsertServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
  
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String name = request.getParameter("yname");
		String contact = request.getParameter("cno");
		String date = request.getParameter("date");
		String time = request.getParameter("time");
		String members = request.getParameter("mem");
		String remarks  = request.getParameter("remarks");
		String ground = request.getParameter("ground");
		String other  = request.getParameter("other");
		String pool = request.getParameter("pool");
		
		
		boolean isTrue;
		isTrue = OtherServices.InsertSportRes(name, contact, date, time, members, remarks, ground, other, pool);
		
		if(isTrue == true) {
			
			RequestDispatcher dis01 = request.getRequestDispatcher("OS_sportSearch.jsp");
			dis01.forward(request, response);
		}
		else {
			RequestDispatcher dis02 = request.getRequestDispatcher("unsuccess.jsp");
			dis02.forward(request, response);
			
		}
		
	}

}
