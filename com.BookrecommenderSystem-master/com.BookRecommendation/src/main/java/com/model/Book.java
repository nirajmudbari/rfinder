package com.model;

import java.io.Serializable;

public class Book  implements Serializable{
	
	private int Id;
	
	
	public int getId() {
		return Id;
	}
	public void setId(int id) {
		Id = id;
	}
	private String ISBN;
	
	
	public String getISBN() {
		return ISBN;
	}
	public void setISBN(String iSBN) {
		ISBN = iSBN;
	}
	public String getBook_Title() {
		return Book_Title;
	}
	public void setBook_Title(String book_Title) {
		Book_Title = book_Title;
	}
	public String getBook_Author() {
		return Book_Author;
	}
	public void setBook_Author(String book_Author) {
		Book_Author = book_Author;
	}
	public String getYear_of_Publication() {
		return Year_of_Publication;
	}
	public void setYear_of_Publication(String year_of_Publication) {
		Year_of_Publication = year_of_Publication;
	}
	public String getImage() {
		return Image;
	}
	public void setImage(String image) {
		Image = image;
	}
	public int getCat_id() {
		return Cat_id;
	}
	public void setCat_id(int cat_id) {
		Cat_id = cat_id;
	}
	private String Book_Title;
	private String Book_Author;
	private String Year_of_Publication;
	private String Image;
	private int Cat_id;
	

}
