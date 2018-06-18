package com.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dao.SignUpDao;
import com.model.UserBean;

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
		
        	String firstname=request.getParameter("firstname");
        	String lastname=request.getParameter("lastname");
        	String phone=request.getParameter("phone");
        	String email=request.getParameter("email");
        	String address=request.getParameter("address");
        	String password=request.getParameter("password");
        	
        	
        
        	UserBean signUpBean = new UserBean();
       
        	signUpBean.setFirstname(firstname);
        	signUpBean.setLastname(lastname);
        	signUpBean.setPhone(phone);
        	signUpBean.setEmail(email);
        	signUpBean.setAddress(address);
        	signUpBean.setPassword(password);
        	
        	
        	
        	SignUpDao signUpDao= new SignUpDao();
        	
        	String userSignUp=signUpDao.signUpUser(signUpBean);
        	
        	if(userSignUp.equals("sucess")) {
        	
      
        request.getRequestDispatcher("login.jsp").forward(request,response);
        	}
        	else {
        		request.setAttribute("errMessage", userSignUp);
        		request.getRequestDispatcher("index.jsp").forward(request,response);
        	}
}
}