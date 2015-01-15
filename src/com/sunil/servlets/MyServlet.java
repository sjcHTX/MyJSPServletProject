package com.sunil.servlets;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class MyServlet
 */
//@WebServlet(description = "Test Servlet", urlPatterns = { "/MyServlet" })
public class MyServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public MyServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("In doGet Method!");
		String username;
		PrintWriter printWriter = response.getWriter();
		username = (String) request.getParameter("username");
		if(username != null){
			request.getSession().setAttribute("username", username);
			request.getServletContext().setAttribute("username", username);			
		}
		
		printWriter.println("request username is " + username);		
		printWriter.println("session username is " + request.getSession().getAttribute("username"));
		printWriter.println("Servlet context InitParameter username is " + request.getServletContext().getInitParameter("username"));
		printWriter.println("Servlet context getAttribute username is " + request.getServletContext().getAttribute("username"));
		printWriter.println("ServletConfig username is " + this.getServletConfig().getInitParameter("username"));
		
		
	}

/*	@Override
	public void init(ServletConfig config) throws ServletException {
		// TODO Auto-generated method stub
		super.init(config);
	}

	@Override
	public void init() throws ServletException {
		// TODO Auto-generated method stub
		super.init();
	}*/
	
	
	
	

}
