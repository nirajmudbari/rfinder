package com.dao;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.connection.Mysql;
import com.model.Book;

public class RomanceDao {
public List<Book> GetBookList() {
		
		List<Book> bookList = new ArrayList<Book>();

		 Connection con=null;
    	 
	     	try
	     	 {
	     		con=Mysql.createConnection();
	     		Statement statement = con.createStatement();
				
				
				ResultSet rs = statement.executeQuery("select * from books where Cat_id = 5 order by RAND() limit 24");
				System.out.println(rs);
				while (rs.next()) {

					// Defining Event Object
					Book bk=new Book();
					bk.setISBN(rs.getString("ISBN"));
					bk.setBook_Title(rs.getString("Book_Title"));
					bk.setBook_Author(rs.getString("Book_Author"));
					bk.setYear_of_Publication(rs.getString("Year_of_Publication"));
					bk.setImage(rs.getString("Image"));
					
					

					// Adding the Event Object to List
					bookList.add(bk);
				}        

				// Closing the Resources
				rs.close();
				statement.close();
				con.close();

			} catch (SQLException e) {

				System.out.println(e);
				
			}

			return bookList;
		}
			
			
	}