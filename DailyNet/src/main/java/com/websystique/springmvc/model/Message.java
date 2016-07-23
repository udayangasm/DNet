package com.websystique.springmvc.model;

public class Message {

	private int ID;
	private int userID;
	private String messageHeder;
	private String messageContent;
	private long postedDate;
	private String messageSentBy;
	private String messageRead;
	private String userName;
	private String recieverUserName;
	
	
	public String getRecieverUserName() {
		return recieverUserName;
	}
	public void setRecieverUserName(String recieverUserName) {
		this.recieverUserName = recieverUserName;
	}
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public String getMessageSentBy() {
		return messageSentBy;
	}
	public void setMessageSentBy(String messageSentBy) {
		this.messageSentBy = messageSentBy;
	}
	public String getMessageRead() {
		return messageRead;
	}
	public void setMessageRead(String messageRead) {
		this.messageRead = messageRead;
	}
	public int getID() {
		return ID;
	}
	public void setID(int iD) {
		ID = iD;
	}
	public int getUserID() {
		return userID;
	}
	public void setUserID(int userID) {
		this.userID = userID;
	}
	public String getMessageHeder() {
		return messageHeder;
	}
	public void setMessageHeder(String messageHeder) {
		this.messageHeder = messageHeder;
	}
	public String getMessageContent() {
		return messageContent;
	}
	public void setMessageContent(String messageContent) {
		this.messageContent = messageContent;
	}
	public long getPostedDate() {
		return postedDate;
	}
	public void setPostedDate(long postedDate) {
		this.postedDate = postedDate;
	}
	
	
}
