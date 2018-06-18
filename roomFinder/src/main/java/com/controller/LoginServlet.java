package com.controller;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;


import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.dao.LoginDao;
import com.model.LoginBean;

@WebServlet("/login.do")
public class LoginServlet extends HttpServlet {
	
    public LoginServlet() {
       
    }
    private static final long serialVersionUID = 1L;


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			
		String email=request.getParameter("email");
    	String pass=request.getParameter("password");
    	
    	LoginBean loginBean= new LoginBean();
    	
    	loginBean.setEmail(email);
    	loginBean.setPassword(pass);
    	System.out.println("check000");
    	String id="";
    	System.out.println("check");
    	id=LoginDao.authenticateUser(loginBean);
    	int str = loginBean.getId();
		
    	System.out.println("hi"+id);
//    	LoginDao loginDao = new LoginDao();
    
    	String userValidate = LoginDao.authenticateUser(loginBean); //Calling authenticateUser function
    		 
//        if(userValidate.equals("Admin")) //If function returns success string then user will be rooted to Home page
//    		 {
//    		// request.setAttribute("Email", email); //with setAttribute() you can define a "key" and value pair so that you can get it in future using getAttribute("key")
//    			
//    			HttpSession session=request.getSession();
//	        	session.setAttribute("Email", email);
//	        	session.setAttribute("Password", pass);
//	        	session.setAttribute("ID", str);
//	        	
//	        		        			
//    			request.getRequestDispatcher("Admin.jsp").forward(request, response);//RequestDispatcher is used to send the control to the invoked page.
//    		 }
    		 if(userValidate.equals("User"))
    		 {
    		 request.setAttribute("errMessage", userValidate); //If authenticateUser() function returns other than SUCCESS string it will be sent to Login page again. Here the error message returned from function has been stored in a errMessage key.

    			
    		 request.getRequestDispatcher("afterlogin.jsp").forward(request, response);//forwarding the request
    		 }
    		 else {
    			 request.getRequestDispatcher("index.jsp").forward(request, response);
    		 }
    		 }
		

		// request.getRequestDispatcher("login.jsp").forward(request, response);//forwarding the request
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	/*protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//doGet(request, response);
		
		
	}  */
