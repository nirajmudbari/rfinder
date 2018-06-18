package com.connection;

import java.sql.Connection;
import java.sql.DriverManager;

public class Mysql {

	public static Connection createConnection()
	 {
	 Connection con = null;
	 String url = "jdbc:mysql://localhost/romfinder"; //MySQL URL followed by the database name
	 String username = "root"; //MySQLusername
	 String password = ""; //MySQL password
	 
	 try 
	 {
	 try 
	 {
	 Class.forName("com.mysql.jdbc.Driver"); //loading MySQL drivers. This differs for database servers 
	 System.out.println("Driver loaded");
	 } 
	 catch (ClassNotFoundException e)
	 {
	 e.printStackTrace();
	 }
	 
	 con = DriverManager.getConnection(url, username, password); //attempting to connect to MySQL database
	 System.out.println("Printing connection object "+con);
	 } 
	 catch (Exception e) 
	 {
	 e.printStackTrace();
	 }
	 System.out.println("connection establish");
	 return con; 
	 }
	}


