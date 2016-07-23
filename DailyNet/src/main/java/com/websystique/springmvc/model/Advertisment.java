package com.websystique.springmvc.model;

import java.util.ArrayList;
import java.util.List;

public class Advertisment{
	
	
	public Advertisment(){
		
		
	}
	public int id;
	public String description;
	public String image;
	public String category;
	public int position;
	public String header;

	public String city;
	public String searchTag;
	public List<String> otherImages = new ArrayList<String>();; 
    public String lan;
    public String lat;
    public List<String> tags = new ArrayList<String>(); 
	public String[] tagArray = new String[5]; 
	public String moreDescription;
	public long postedDate;
	public Double dlan;
    public Double dlat;
    
    public String email;
    public String mobile;
    public int viewCount;
    public String price;
    public String userName;
	
    public String getPrice() {
		return price;
	}
	public void setPrice(String price) {
		this.price = price;
	}
	public String details;
    
    public String stringDate;
    
	
	public String getStringDate() {
		return stringDate;
	}
	public void setStringDate(String stringDate) {
		this.stringDate = stringDate;
	}
	public int getViewCount() {
		return viewCount;
	}
	public void setViewCount(int viewCount) {
		this.viewCount = viewCount;
	}
	
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getMobile() {
		return mobile;
	}
	public void setMobile(String mobile) {
		this.mobile = mobile;
	}
	public Double getDlan() {
		return dlan;
	}
	public void setDlan(Double dlan) {
		this.dlan = dlan;
	}
	public Double getDlat() {
		return dlat;
	}
	public String getDetails() {
		return details;
	}
	public void setDetails(String details) {
		this.details = details;
	}
	public void setDlat(Double dlat) {
		this.dlat = dlat;
	}
	public long getPostedDate() {
		return postedDate;
	}
	public void setPostedDate(long postedDate) {
		this.postedDate = postedDate;
	}
	public String getMoreDescription() {
		return moreDescription;
	}
	public void setMoreDescription(String moreDescription) {
		this.moreDescription = moreDescription;
	}
	public List<String> getTags() {
		return tags;
	}
	public void setTags(List<String> tags) {
		this.tags = tags;
	}
	public String[] getTagArray() {
		return tagArray;
	}
	public void setTagArray(String[] tagArray) {
		this.tagArray = tagArray;
	}
	
	public String getLan() {
		return lan;
	}
	public void setLan(String lan) {
		this.lan = lan;
	}
	public String getLat() {
		return lat;
	}
	public void setLat(String lat) {
		this.lat = lat;
	}
	public List<String> getOtherImages() {
		return otherImages;
	}
	public void setOtherImages(List<String> otherImages) {
		this.otherImages = otherImages;
	}

	public String getCity() {
		return city;
	}
	public void setCity(String city) {
		this.city = city;
	}
	public String getHeader() {
		return header;
	}
	public void setHeader(String header) {
		this.header = header;
	}
	public int getPosition() {
		return position;
	}
	public void setPosition(int position) {
		this.position = position;
	}
	public String getCategory() {
		return category;
	}
	public void setCategory(String category) {
		this.category = category;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public String getImage() {
		return image;
	}
	public String getSearchTag() {
		return searchTag;
	}
	public void setSearchTag(String searchTag) {
		this.searchTag = searchTag;
	}
	public void setImage(String image) {
		this.image = image;
	}
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
		
}