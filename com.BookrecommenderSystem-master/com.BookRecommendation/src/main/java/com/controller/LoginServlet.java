package com.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.dao.DisplayBookDao;
import com.dao.LoginDao;
import com.model.Book;
import com.model.LoginBean;


/**
 * Servlet implementation class LoginServlet
 */
@WebServlet("/Login.do")
public class LoginServlet extends HttpServlet {
	public LoginServlet() {
		
	}
	
	private static final long serialVersionUID = 1L;


	
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {	
		 
	        	
	        	String email=request.getParameter("Email");
	        	String pass=request.getParameter("Password");
	        	
	        	LoginBean loginBean= new LoginBean();
	        	
	        	loginBean.setEmail(email);
	        	loginBean.setPassword(pass);
	        	System.out.println("check000");
	        	String id="";
	        	System.out.println("check");
	        	id=LoginDao.authenticateUser(loginBean);
	        	int str = loginBean.getId();
        		
	        	System.out.println("hi"+id);
	        	LoginDao loginDao = new LoginDao();
	        
	        		String userValidate = loginDao.authenticateUser(loginBean); //Calling authenticateUser function
	        		 
	        		if(userValidate.equals("Admin")) //If function returns success string then user will be rooted to Home page
	        		 {
	        		// request.setAttribute("Email", email); //with setAttribute() you can define a "key" and value pair so that you can get it in future using getAttribute("key")
	        			
	        			HttpSession session=request.getSession();
	    	        	session.setAttribute("Email", email);
	    	        	session.setAttribute("Password", pass);
	    	        	session.setAttribute("ID", str);
	    	        	
	    	        		        			
	        			request.getRequestDispatcher("Admin.jsp").forward(request, response);//RequestDispatcher is used to send the control to the invoked page.
	        		 }
	        		 else if(userValidate.equals("User"))
	        		 {
	        		 //request.setAttribute("errMessage", userValidate); //If authenticateUser() function returns other than SUCCESS string it will be sent to Login page again. Here the error message returned from function has been stored in a errMessage key.
	        		 
	        			 HttpSession session=request.getSession();
	     	        	session.setAttribute("Email", str);
	     	        	
	     	        	
	     	        	DisplayBookDao book=new DisplayBookDao();
	     	   		List<Book> bookList = book.GetBookList();
	     	   		
	     	 		
	     	   		
	     	   		request.setAttribute("BookList", bookList);
	        			 request.getRequestDispatcher("User.jsp").forward(request, response);//forwarding the request
	        		 }
	        		 else {
	        			 request.getRequestDispatcher("Dashboard.jsp").forward(request, response);
	        		 }
	        		 }
	 		
	    
		
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		/* String email=request.getParameter("Email");
		String pass=request.getParameter("Password");
		if(email.equals("shekhar")&&pass.equals("pass")) {
			System.out.println("hello");
			request.getRequestDispatcher("/hello.jsp").forward(request, response);
		}else {
		
				request.getRequestDispatcher("/hi.jsp").forward(request, response);
				
			}
	}
	*/
	
}
	}
