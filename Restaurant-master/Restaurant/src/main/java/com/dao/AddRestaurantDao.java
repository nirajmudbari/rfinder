package com.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;

import com.connection.Mysql;
import com.model.Restaurant;

public class AddRestaurantDao {
	
	public static Restaurant setinfo(Restaurant rt) {
		PreparedStatement ps = null;
		String name=rt.getRestaurantname();
		Double contact=rt.getContact();
    	String street=rt.getStreet();
    	String city=rt.getCity();
    	String image=rt.getImage();
    	Double latitude=rt.getLatitude();
    	Double longitude=rt.getLongitude();
    	
    	
    	
    	 Connection con=null;
    	 
     	try
     	 {
     		con=Mysql.createConnection(); //establishing connection
     		
        

            String query="insert into restaurant(name,contact,street,city,latitude,longitude,image)"+" VALUES(?,?,?,?,?,?)";
            ps = con.prepareStatement(query);
            ps.setString(2,name);
            ps.setDouble(3, contact);
            ps.setString(4, street);
            ps.setString(5, city);
            ps.setDouble(6,latitude);
            ps.setDouble(7,longitude);
            ps.setString(8,image);
           
            
            ps.executeUpdate();
  	  }
  	  catch(Exception e) {
  		  System.out.println("Unable to connect to database"+e);
  	  }
  	return rt;
	
	}
	

}
