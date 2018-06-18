package com.model;

public class LoginBean {
	
	private String Email;
	private String Password;
	private int Id;
	
		public int getId() {
		return Id;
	}
	public void setId(int id) {
		Id = id;
	}
		public String getEmail() {
		return Email;
	}
	public void setEmail(String email) {
		Email = email;
	}
	public String getPassword() {
		return Password;
	}
	public void setPassword(String password) {
		Password = password;
	}
	public boolean valid;

	public boolean isValid() {
		return valid;
	}
	public void setValid(boolean valid) {
		this.valid = valid;
	}
	
	}
