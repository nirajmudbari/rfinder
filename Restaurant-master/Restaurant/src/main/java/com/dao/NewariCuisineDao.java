package com.dao;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.connection.Mysql;
import com.model.Restaurant;

public class NewariCuisineDao {

public List<Restaurant> GetRestaurantList() {
		
		List<Restaurant> restaurantList = new ArrayList<Restaurant>();

		 Connection con=null;
    	 
	     	try
	     	 {
	     		con=Mysql.createConnection();
	     		Statement statement = con.createStatement();
				
				
				ResultSet rs = statement.executeQuery("select * from books where Cat_id = 7 order by RAND() limit 24");
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
