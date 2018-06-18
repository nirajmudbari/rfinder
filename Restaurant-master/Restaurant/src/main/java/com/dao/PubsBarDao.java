package com.dao;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.connection.Mysql;
import com.model.Restaurant;

public class PubsBarDao {

public List<Restaurant> GetRestaurantList() {
		
		List<Restaurant> restaurantList = new ArrayList<Restaurant>();

		 Connection con=null;
    	 
	     	try
	     	 {
	     		con=Mysql.createConnection();
	     		Statement statement = con.createStatement();
				
				
				ResultSet rs = statement.executeQuery("select * from restaurant where Cat_id = 1 order by RAND()");
				System.out.println(rs);
				while (rs.next()) {

					// Defining Event Object
					Restaurant rt=new Restaurant();
					rt.setId(rs.getInt("restaurantId"));
					rt.setRestaurantname(rs.getString("name"));	
					rt.setContact(rs.getDouble("contact"));
					rt.setStreet(rs.getString("street"));
					rt.setCity(rs.getString("city"));
					rt.setLatitude(rs.getDouble("latitude"));
					rt.setLongitude(rs.getDouble("longitude"));
					rt.setImage(rs.getString("image"));
					

					// Adding the Event Object to List
					restaurantList.add(rt);
				}        

				// Closing the Resources
				rs.close();
				statement.close();
				con.close();

			} catch (SQLException e) {

				System.out.println(e);
				
			}

			return restaurantList;
		}
}
