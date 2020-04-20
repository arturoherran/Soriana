package com.Soriana.controller;
import com.Soriana.model.Customer;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class CreateCustomerServlet
 */
@WebServlet(description = "controller of customer registration", urlPatterns = { "/CreateCustomerServlet" })
public class CreateCustomerServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CreateCustomerServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
//		RequestDispatcher rd = request.getRequestDispatcher("createCustomer.jsp");
//		request.setAttribute("request", response);
//		
//		response.getWriter().append("Served at: ").append(request.getContextPath());
//	
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		boolean flag = false;
		
		List<Customer> customers = new ArrayList<>();
		
		int customerId = Integer.parseInt(request.getParameter("customerId"));
		String customerName = request.getParameter("customerName");
		int customerAge = Integer.parseInt(request.getParameter("customerAge"));
		String customerNumber = request.getParameter("customerNumber");
		String customerEmail = request.getParameter("customerEmail");
		
		customers.add(new Customer(customerId, customerName, customerAge, customerNumber, customerEmail));
		
		int lastIndex = customers.size() - 1;
		String newCustomer = "";
		flag = true;
		newCustomer = customers.get(lastIndex).getCustomerName();

		System.out.println(newCustomer + " ha sido creado krnal");
		request.setAttribute("newCustomer", newCustomer);
		
//		para manadar al GET
//		doGet(request, response);
		
//		response.sendRedirect("/Soriana/createCustomer.jsp");
		String destination = "/createCustomer.jsp";
		
//		Para forwardear, veamos si funciona y nos saca de CreateCustomerServlet
		RequestDispatcher rd = request.getRequestDispatcher(destination);
		
		rd.forward(request,response);
		
	}

}
