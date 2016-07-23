package com.websystique.springmvc.service;

import org.springframework.mail.MailSender;
import org.springframework.mail.SimpleMailMessage;

public class MailMail {

	private MailSender mailSender;
	private SimpleMailMessage simpleMailMessage;
	
	public void setSimpleMailMessage(SimpleMailMessage simpleMailMessage) {
		this.simpleMailMessage = simpleMailMessage;
	}

	public void setMailSender(MailSender mailSender) {
		this.mailSender = mailSender;
	}
	
	public void sendMail(String dear, String content,String to) {

		SimpleMailMessage message = new SimpleMailMessage(simpleMailMessage);
		System.out.println(1111111);
		message.setText(String.format(simpleMailMessage.getText(), dear, content));
		
		
		System.out.println(22222);
		System.out.println(to);
		to.replaceAll("\\s+",""); 
		message.setTo(to);
		
		mailSender.send(message);
		
		System.out.println(333);
		
		
		
		
		
	}
	
	
}
