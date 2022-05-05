package com;


import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/insertfoodservlet")
public class insertfoodservlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		
		String foodname=request.getParameter("foodname");
		String foodtype=request.getParameter("foodtype");
		String quantity=request.getParameter("quantity");
		String price=request.getParameter("price");

		
		
		int id=insertfoodutill.insertfood(foodname, foodtype, quantity, price);
		
		request.setAttribute("idfood", id);
		
	
			RequestDispatcher dis = request.getRequestDispatcher("search.jsp");
			dis.forward(request, response);
			
	}
	
	
}
		
		
	
	

