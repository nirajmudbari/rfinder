package com.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import com.connection.Mysql;
import com.model.LoginBean;

public class LoginDao {
	public  static String authenticateUser(LoginBean loginBean) {
		
    	String email = loginBean.getEmail();
    	String pass = loginBean.getPassword();
    	
    	
    	String Id="";
    	 
    	 String dbemail=null;
        String dbpassword=null;
       
        Connection con=null;

    	try
    	 {
    		con=Mysql.createConnection(); //establishing connection
    		
       
    		 String sql="select * from signup where email=? and password=?";
 	        PreparedStatement  ps = con.prepareStatement(sql);
 	        
 	        ps.setString(1, email);
 	        ps.setString(2, pass);
 	       
 	        java.sql.ResultSet rs=ps.executeQuery() ;
 	        while(rs.next()) {
 	        	dbemail = rs.getString(2);
 	        	dbpassword=rs.getString(3);
 	        	//System.out.println("dbemail");
 	        	
 	        	
// 	        	
// 	        	
 	        	
 	        }
 	       if(email.equals("rajivchelsea25@gmail.com") && pass.equals("123456") || email.equals("love20chelsea@gmail.com") && pass.equals("123676"))
			   return "Admin"; ////If the user entered values are already present in database, which means user has already registered so I will return SUCCESS message.
		   
		   else if(email.equals(dbemail) && pass.equals(dbpassword))
		   return "User";
 	      
		 
 }
		 catch(SQLException e)
		 {
		 e.printStackTrace();
		 }
		 return "error"; // Just returning appropriate message otherwise
		 
		 }

}
