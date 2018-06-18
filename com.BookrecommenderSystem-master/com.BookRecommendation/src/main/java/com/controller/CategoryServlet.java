package com.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Category
 */
@WebServlet("/Category.do")
public class CategoryServlet extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		 try{
	        	String user_book_category=request.getParameter("user_book_category");
	        	
	        	
	        	
	        	String sql="insert into selectcategory(`Cat-id`) values(?)";
	       
	        		Class.forName("com.mysql.jdbc.Driver");
	                
	        //2. Connecting
	        
	        Connection con = DriverManager.getConnection("jdbc:mysql://localhost/book","root","");
	        
	        PreparedStatement  ps = con.prepareStatement(sql);
	        
	        ps.setString(1, user_book_category);
	       
	        ps.executeUpdate();
	        
	       
	        
		}

	        catch(ClassNotFoundException ex){
	            System.out.println(ex);
	        } 
	        
	        catch(SQLException e){
	            System.out.println(e);
	        }
	        
	        request.getRequestDispatcher("User.jsp").forward(request, response);

	}
	
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
