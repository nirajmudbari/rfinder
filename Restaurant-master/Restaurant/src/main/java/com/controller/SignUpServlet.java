package com.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dao.SignUpDao;
import com.model.SignUpBean;

/**
 * Servlet implementation class SignUpServlet
 */
@WebServlet("/SignUp.do")
public class SignUpServlet extends HttpServlet {
public SignUpServlet() {
		
	}
	
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//		
//        	String firstname=request.getParameter("FirstName");
//        	String lastname=request.getParameter("LastName");
        	String email=request.getParameter("email");
        	String password=request.getParameter("password");
        	
        	
        
        	SignUpBean signUpBean = new SignUpBean();
       
        	signUpBean.setEmail(email);
        	signUpBean.setPassword(password);
        	
        	
        	
        	SignUpDao signUpDao= new SignUpDao();
        	
        	String userSignUp=signUpDao.signUpUser(signUpBean);
        	
        	if(userSignUp.equals("sucess")) {
        	
        		//System.out.println("helo");
        request.getRequestDispatcher("login.jsp").forward(request,response);
        	}
        	else {
        		request.setAttribute("errMessage", userSignUp);
        		request.getRequestDispatcher("Dashboard.jsp").forward(request,response);
        	}
}
}
