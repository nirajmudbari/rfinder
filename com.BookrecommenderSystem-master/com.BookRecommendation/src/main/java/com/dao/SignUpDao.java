package com.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import com.connection.Mysql;
import com.model.SignUpBean;




public class SignUpDao {
	
	 public String signUpUser(SignUpBean signUpBean) {
		 
		 
		 String firstname=signUpBean.getFirstName();
     	String lastname=signUpBean.getLastName();
     	String email=signUpBean.getEmail();
     	String password=signUpBean.getPassword();
     	Connection con=null;
     	
     	  try{
     	       con=Mysql.createConnection();
     	      
     	      String sql="insert into signup(FirstName,LastName,Email,Password) values(?,?,?,?)";
     	       
     	      PreparedStatement  ps = con.prepareStatement(sql);
     	        
     	        ps.setString(1, firstname);
     	        ps.setString(2, lastname);
     	        ps.setString(3, email);
     	        ps.setString(4, password);
     	        
     	     int i  = ps.executeUpdate();
     	    
     	     if(i!=0) 
     	    	 return "sucess";
     	     
     	  }
     	 
         catch(SQLException e){
             System.out.println(e);
         } 
     	  
		return "Error";
         
	 }      
	 }

