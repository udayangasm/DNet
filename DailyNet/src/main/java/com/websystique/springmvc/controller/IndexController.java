package com.websystique.springmvc.controller;


import java.util.Date;
import java.util.logging.Logger;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.mobile.device.Device;
import org.springframework.mobile.device.DeviceUtils;
import org.springframework.stereotype.Controller;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.websystique.springmvc.model.DBConnection;
import com.websystique.springmvc.service.MailMail;

@Controller
@RequestMapping("/")
public class IndexController {//Serves main index.html

	  	
	  	@RequestMapping(method = RequestMethod.GET)
	  	public String detectDevice(HttpServletRequest request) {
	  		 Device device = DeviceUtils.getCurrentDevice(request);
	  		 
	  		String ip = request.getRemoteAddr();
	  		 Date dt = new  Date();
	  		 
	  		 DBConnection db = new DBConnection();
	  		 db.insertLoginUsersIp(ip, dt.toString());
	  		 
	  		 
	  		 
	  		 
	  		 if(device.isMobile()){
	  			return "index_mobile.jsp";
	  			 
	  		 }
	  		  System.out.println("im from index Device : " + device);
	          return "index.jsp";
	    }
	  	
	  
	  	
	  	
	  	
	  	
}
