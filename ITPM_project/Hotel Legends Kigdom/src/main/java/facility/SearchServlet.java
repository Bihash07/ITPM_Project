package facility;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/SearchServlet")
public class SearchServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		PrintWriter out = response.getWriter();
		response.setContentType("text/html");
		
		
		
		String name = request.getParameter("sportR");
		boolean isTrue;
		
		
		isTrue = OtherServices.validate(name);
		
		if(isTrue == true) {
			List<ResDetails> RDetails = OtherServices.getResdetails(name);
			request.setAttribute("RDetails",RDetails);
			
			RequestDispatcher dis = request.getRequestDispatcher("OS_sportView.jsp");
			dis.forward(request, response);
			
		
		}else {
			out.println("<script type='text/javascript'>");
			out.println("alert('Incorrect Name');");
			out.println("location='OS_sportSearch.jsp'");
			out.println("</script>");
		}
			
	}

}
