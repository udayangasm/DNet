package com.websystique.springmvc.model;

public class User {
	
	public User() {
	}
	
	public String userName;
	public String password_hash;
	public String description;
	public String emailOrNumber;
	
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public String getPassword_hash() {
		return password_hash;
	}
	public void setPassword_hash(String password_hash) {
		this.password_hash = password_hash;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public String getEmailOrNumber() {
		return emailOrNumber;
	}
	public void setEmailOrNumber(String emailOrNumber) {
		this.emailOrNumber = emailOrNumber;
	}
}