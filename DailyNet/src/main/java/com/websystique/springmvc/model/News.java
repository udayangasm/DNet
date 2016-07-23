package com.websystique.springmvc.model;

import java.util.Date;
import java.util.List;

public class News {

	
	public String header;
	public String paragraph1;
	public String paragraph2;
	public String imageName;
	public long date;
	
	
	public List<String> otherNews;
	public List<Integer> otherIDs;
	
	
	public List<Integer> getOtherIDs() {
		return otherIDs;
	}
	public void setOtherIDs(List<Integer> otherIDs) {
		this.otherIDs = otherIDs;
	}
	public List<String> getOtherNews() {
		return otherNews;
	}
	public void setOtherNews(List<String> otherNews) {
		this.otherNews = otherNews;
	}
	public String getHeader() {
		return header;
	}
	public void setHeader(String header) {
		this.header = header;
	}
	public String getParagraph1() {
		return paragraph1;
	}
	public void setParagraph1(String paragraph1) {
		this.paragraph1 = paragraph1;
	}
	public String getParagraph2() {
		return paragraph2;
	}
	public void setParagraph2(String paragraph2) {
		this.paragraph2 = paragraph2;
	}
	public String getImageName() {
		return imageName;
	}
	public void setImageName(String imageName) {
		this.imageName = imageName;
	}
	public long getDate() {
		return date;
	}
	public void setDate(long date) {
		this.date = date;
	}


	
}
