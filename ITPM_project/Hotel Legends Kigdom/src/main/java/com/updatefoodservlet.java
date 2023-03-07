package com;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/updatefoodservlet")
public class updatefoodservlet extends HttpServlet {
	private static final long serialVersionUID = 1L;


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String idfood =request.getParameter("idfood");
		String foodname =request.getParameter("foodname");
		String foodtype =request.getParameter("foodtype");
		String quantity =request.getParameter("quantity");
		String price =request.getParameter("price");
		
		
		request.setAttribute("idfood", idfood);
		request.setAttribute("foodname", foodname);
		request.setAttribute("foodtype", foodtype);
		request.setAttribute("quantity", quantity);
		request.setAttribute("price", price);

	boolean istrue;
	istrue=insertfoodutill.updatefood(idfood,foodname, foodtype, quantity, price);
	
	if(istrue == true) {
		RequestDispatcher dis = request.getRequestDispatcher("fooddelete.jsp");
		dis.forward(request, response);
		} else {
		RequestDispatcher dis2 = request.getRequestDispatcher("search.jsp");
		dis2.forward(request, response);
		}
	
	}
}
