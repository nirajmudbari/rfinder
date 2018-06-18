package com.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;

import com.connection.Mysql;
import com.model.Book;

public class AddBookDao {
	public static Book setinfo(Book bk) {
		PreparedStatement ps = null;
		String isbn=bk.getISBN();
		String title=bk.getBook_Title();
    	String author=bk.getBook_Author();
    	String year=bk.getYear_of_Publication();
    	String image=bk.getImage();
    	
    	 Connection con=null;
    	 
     	try
     	 {
     		con=Mysql.createConnection(); //establishing connection
     		
        

            String query="insert into bx_book(ISBN,Book_Title, Book_Author, Year_of_Publication, Image)"+" VALUES(?,?,?,?,?)";
            ps = con.prepareStatement(query);
            ps.setString(1, isbn);
            ps.setString(2, title);
            ps.setString(3, author);
            ps.setString(4, year);
            ps.setString(5,image);
           
            
            ps.executeUpdate();
  	  }
  	  catch(Exception e) {
  		  System.out.println("Unable to connect to database"+e);
  	  }
  	return bk;
	
	}
	
}
