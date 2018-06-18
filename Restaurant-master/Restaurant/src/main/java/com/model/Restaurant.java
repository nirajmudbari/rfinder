package com.model;

public class Restaurant {
	private int restaurantId;
	public int getId() {
		return restaurantId;
	}
	public void setId(int id) {
		this.restaurantId = restaurantId;
	}
	
	public String getRestaurantname() {
		return Restaurantname;
	}
	public void setRestaurantname(String restaurantname) {
		Restaurantname = restaurantname;
	}
	public String getStreet() {
		return street;
	}
	public void setStreet(String street) {
		this.street = street;
	}
	public String getCity() {
		return city;
	}
	public void setCity(String city) {
		this.city = city;
	}
	public double getLatitude() {
		return latitude;
	}
	public void setLatitude(double latitude) {
		this.latitude = latitude;
	}
	public double getLongitude() {
		return longitude;
	}
	public void setLongitude(double longitude) {
		this.longitude = longitude;
	}
	public double getContact() {
		return contact;
	}
	public void setContact(double contact) {
		this.contact = contact;
	}
	private String Restaurantname;
	private double contact;
	private String street;
	private String city;
	private double latitude;
	private double longitude;
	private String image;
	private int cat_id;
	public String getImage() {
		return image;
	}
	public void setImage(String image) {
		this.image = image;
	}
	public int getCat_id() {
		return cat_id;
	}
	public void setCat_id(int cat_id) {
		this.cat_id = cat_id;
	}
	
	

}
