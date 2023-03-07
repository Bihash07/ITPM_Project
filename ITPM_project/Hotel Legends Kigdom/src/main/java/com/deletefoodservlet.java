package com;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/deletefoodservlet")
public class deletefoodservlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
			String idfood =request.getParameter("idfood");
			boolean istrue;
			istrue=insertfoodutill.deletefood(idfood);
			
			if(istrue == true) {
				RequestDispatcher dis = request.getRequestDispatcher("home.jsp");
				dis.forward(request, response);
				} else {
					
				RequestDispatcher dis2 = request.getRequestDispatcher("search.jsp");
				dis2.forward(request, response);
				}
			
			
		
	}

}
