package com.websystique.springmvc.controller;

import java.util.List;
import java.util.Map;
import java.util.Set;

import javax.servlet.ServletContext;
import javax.servlet.ServletContextEvent;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;

//import org.apache.catalina.core.ApplicationContext;
import org.springframework.context.ApplicationContext;
import org.springframework.context.annotation.Configuration;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Required;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;

import org.springframework.stereotype.Controller;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.context.WebApplicationContext;
import org.springframework.web.context.support.WebApplicationContextUtils;

import com.websystique.springmvc.model.Advertisment;
import com.websystique.springmvc.model.DBConnection;
import com.websystique.springmvc.model.User;
import com.websystique.springmvc.service.MailMail;

import org.springframework.web.context.ContextLoaderListener;

@Controller
public class TemplateController extends HttpServlet {//Serves Templates.
	
	/*
	@Autowired
	private MailMail mailMail ;
	
	
	
	
	public MailMail getMailMail() {
		return mailMail;
	}


	@Required
	public void setMailMail(MailMail mailMail) {
		this.mailMail = mailMail;
	}*/


	@RequestMapping("/editAd")
    public  String editAd(HttpServletRequest request) {
        
    	System.out.println("edit Ad");
    
    	Map<String, String[]> parameters = request.getParameterMap();
       	
       	Set <String> key = parameters.keySet();
       	
       	for (String key1 : key ){
       	
       	System.out.println(key1);
        System.out.println(parameters.get(key1)[0]);
       	}
       	
        
       	System.out.println(parameters.get("AdvertismentId")[0]);
       	int adID = -1;
       	
       	try{
       	 adID= Integer.parseInt(parameters.get("AdvertismentId")[0]);
       	}catch(Exception e){}
       	
       	DBConnection db = new DBConnection();
       	boolean state= db.deleteAd(adID);
        
       	if(state){
       		return "Admin.jsp";
       	}
       		return null;
    	
 }
	
	
	@RequestMapping("/deleteAd")
    public  String deleteAd(HttpServletRequest request) {
        
    	System.out.println("delete Ad");
    
    	Map<String, String[]> parameters = request.getParameterMap();
       	
       	Set <String> key = parameters.keySet();
       	
       	for (String key1 : key ){
       	
       	System.out.println(key1);
        System.out.println(parameters.get(key1)[0]);
       	}
       	
        
       	System.out.println(parameters.get("AdvertismentId")[0]);
       	int adID = -1;
       	
       	try{
       	 adID= Integer.parseInt(parameters.get("AdvertismentId")[0]);
       	}catch(Exception e){}
       	
       	DBConnection db = new DBConnection();
       	boolean state= db.deleteAd(adID);
        
       	if(state){
       		return "Admin.jsp";
       	}
       		return null;
    	
 }
	
	@RequestMapping("/viewMoreDetails")
    public  String viewMore() {
        
    	System.out.println("Details");
    	return "viewMore.jsp";
 }
	
	@RequestMapping("/viewMoreDetailsMobile")
    public  String viewMoreMobile() {
        
    	System.out.println("Details");
    	return "viewMoreMobile.jsp";
 }
	
	@RequestMapping("/create_Page")
    public  String createPage() {
        
    	System.out.println("create page");
    	return "createPage.jsp";
 }
	
   @RequestMapping("/homePageMobile")
   	public  String detectDeviceMobile() {
        
    	System.out.println("show device mobile");
    	return "HomePageMobile.jsp";
    }
	
    @RequestMapping("/latestVideos")
    public  String detectDevice() {
        
    	System.out.println("show device ltest");
    	return "HomePageVideo.jsp";
    }
    
    @RequestMapping("/homePage")
    public  String getHomePage() {
        
    	System.out.println("show home");
    	return "HomePageVideo.jsp";
    }

	 @RequestMapping(value="/latestVideo1")
	public String showInitialLatestVideosTemplate() {
	    	
	    	System.out.println("111111");
	    	return "videos.jsp";	
	    }

	 @RequestMapping(value="/anotherVideo")
	public String showOthertVideosTemplate() {
	    	
	    	System.out.println("Other videos");
	    	return "HomePageVideo.jsp";	
	    }

	 @RequestMapping(value="/anotherVideoMobile")
	public String showOthertVideosMobileTemplate() {
	    	
	    	System.out.println("Other videos");
	    	return "HomePageMobile.jsp";	
	    }
	
	 @RequestMapping(value="/latestNews")
    public String showLatestNewsTemplate() {
    	
    	System.out.println("111111");
    	return "news.jsp";	
    }
	
	 @RequestMapping(value="/latestNews.another")
    public String showAnotherNewsTemplate() {
    	
    	System.out.println("111111");
    	return "news.jsp";	
    }
	
    @RequestMapping(value="/allAdsCategory")
    public String showAllAdsTemplate() {
    	
    	System.out.println("all ads");
    	return "showAllAds.jsp";	
    }
    
    @RequestMapping(value="/hotel_page")
    public String getHotelTemplate() {
    	return "hotels.jsp";	
    }
    
    @RequestMapping(value="/jwellary_page")
    public String getJwellaryTemplate() {
    	return "jwellary.jsp";	
    }
    
    @RequestMapping(value="/vehicle_page")
    public String getVehicleTemplate() {
    	return "vehicles.jsp";	
    }
    
    @RequestMapping(value="/electornic_page")
    public String getElectronicTemplate() {
    	return "electronics.jsp";	
    }
    
    @RequestMapping(value="/fashion_page")
    public String getFashionTemplate() {
    	
    	return "fashion.jsp";	
    }
    
    @RequestMapping(value="/places_page")
    public String getPlacesTemplate() {
    	return "places.jsp";	
    }
    
    @RequestMapping(value="/loginError")
    public String getLoginErrorTemplate() {
    	
    	System.out.println("log error");
    	return "loginError.jsp";	
    }

    @RequestMapping(value="/login_user")
    public String getLoginTemplate() {
    	
    	System.out.println("login user");
    	return "login.jsp";	
    }
    
    @RequestMapping(value="/sign_up")
    public String getSignUpTemplate() {
    	
    	System.out.println("sign Up");
    	return "signUp.jsp";	
    }
    
    @RequestMapping("/new_user")
    public String  newUser(HttpServletRequest request) {
        
    	Map<String, String[]> parameters = request.getParameterMap();
    	
    	Set <String> key = parameters.keySet();
    	
    	for (String key1 : key ){
    		
    		System.out.println(key1);
    		System.out.println(parameters.get(key1)[0]);
    	}
    	
    	
    	User newUser = new User();
    	DBConnection db = new DBConnection();
    	
    	
    	newUser.setUserName(parameters.get("name")[0]);
    	newUser.setDescription(parameters.get("discription")[0]);
    	newUser.setPassword_hash(parameters.get("password")[0]);
    	
    	System.out.println("hell1");
    	db.createUser(newUser);
    	System.out.println("hell0");
    	
    	return "Admin.jsp";
    	  
    	
        
    }
    
    @RequestMapping("/login")
    public String  user(HttpServletRequest request) {
        
    	Map<String, String[]> parameters = request.getParameterMap();
       	
       	Set <String> key = parameters.keySet();
       	
       	for (String key1 : key ){
       	
       	System.out.println(key1);
        System.out.println(parameters.get(key1)[0]);
       	}
       	
        System.out.println(parameters.get("fName")[0]);
        System.out.println(parameters.get("lName")[0]);
        

      
	
        
        
        
      
        
        
   //     .getBean("springWebApp")
    /*   */ 
      //  ServletContext sc = ;
     //   WebApplicationContext ctxq = WebApplicationContextUtils.getRequiredWebApplicationContext(this.getServletContext());
     
  /**/
        
        
       	
       	User user1 = new User();
        user1.setUserName(parameters.get("fName")[0]);
        user1.setPassword_hash(parameters.get("lName")[0]);
       	
        
        
       	
       	DBConnection db = new DBConnection();
       	boolean state= db.login(user1);
       	
        System.out.println(request.getSession().getId());
       	
//        request.getSession().setAttribute("buzzSession", user1.getUserName());
//        System.out.println(request.getSession().getId());
        
       	if(state){
       	
        //session.setAttribute("user",user);
        //request.getSession().setAttribute("userName", user.getUserName());
         	
        //System.out.println((String)request.getSession().getAttribute("userName"));
        //modelMap.addAttribute("user", user);
       	//session.getAttribute("user");
       	
       	return "Admin.jsp";
       	
       	
       	
       	}
       	
       	
       	
       	return null;
    	
        
    }
    
    @RequestMapping("/register")
    public String  userregister(HttpServletRequest request) {
        
    	Map<String, String[]> parameters = request.getParameterMap();
    	
    	Set <String> key = parameters.keySet();
    	
    	for (String key1 : key ){
    	
    	System.out.println(key1);
     System.out.println(parameters.get(key1)[0]);
    	}
    	
     System.out.println(parameters.get("userName")[0]);
     System.out.println(parameters.get("emailOrNumber")[0]);
     System.out.println(parameters.get("password")[0]);
    
 	User user1 = new User();
    user1.setUserName(parameters.get("userName")[0]);
    user1.setEmailOrNumber(parameters.get("emailOrNumber")[0]);
    user1.setPassword_hash(parameters.get("password")[0]);
   
     
     ApplicationContext context = new ClassPathXmlApplicationContext("classpath:Spring-Mail.xml");
   	 
 	 MailMail mm = (MailMail) context.getBean("mailMail");
     mm.sendMail(user1.getUserName(), "WelCome to DailyNet",user1.getEmailOrNumber());
 	
     
    	DBConnection db = new DBConnection();
    	
    	
    	db.createUser(user1);
    	
    	
    	return "Admin.jsp";
    	
        
    }
    
    @RequestMapping(value="/admin")
    public String getAdminTemplate() {
    	return "Admin.jsp";	
    }
 
    @RequestMapping(value="/hotel")
    public String getImgTemplateHotel() {

    	System.out.println("hotel");
    	return "img/hotel.jpg";	
    }
    
    @RequestMapping(value="/vehicle")
    public String getImgTemplateVehicle() {
    	System.out.println("vehicle");
    	return "img/vehicle.jpg";	
    }
    
    @RequestMapping(value="/jwellary")
    public String getImgTemplateJwellary() {
    	System.out.println("jwellary");
    	return "img/jwellary.jpg";	
    }
    
    @RequestMapping(value="/fashon")
    public String getImgTemplateFashon() {
    	System.out.println("fashion");
    	return "img/fashon.jpg";	
    }
    
    @RequestMapping(value="/phone")
    public String getImgTemplatePhone() {
    	System.out.println("phone");
    	return "img/phone.jpg";	
    }
    
    @RequestMapping(value="/beauty")
    public String getImgTemplateBeauty() {
    	System.out.println("beauty");
    	return "img/beauty.jpg";	
    }
    
    @RequestMapping(value="/team")
    public String getImgTemplateTeam() {
    	System.out.println("team");
    	return "img/team.png";	
    }

    @RequestMapping(value="/create_user")
    public String getCreateUser() {
    	System.out.println("create");
    	
    	return "createUser.jsp";	
    }
    
    @RequestMapping(value="/view_users")
    public ResponseEntity <List<User>> getViewUsers() {
    	
    	
    	DBConnection db = new DBConnection();
    	
    	
    	System.out.println("hell1");
    	List<User> list = db.getAllUsers();
    	
    	for (User u :list){
    		
    		System.out.println(u.getUserName());
    		System.out.println(u.getDescription());
        	
    	}
    	
    	 return new ResponseEntity < List<User> >(list, HttpStatus.OK);
    	  
    	
    }
    
    @RequestMapping(value="/edit_ad")
    public String getEditAd() {
    	return "editAd.jsp";	
    }
    
    @RequestMapping(value="/create_ad")
    public String getCreateAd() {
    	return "createAd.jsp";	
    }
    
    @RequestMapping(value="/create_ad_mobile")
    public String getCreateAdMobile() {
    	return "createAdMobile.jsp";	
    }
    
    @RequestMapping(value="/create_post")
    public String getCraetePost() {
    	return "createPost.jsp";	
    }
    
    @RequestMapping(value="/create_video")
    public String createVedioPost() {
    	return "createVideoPost.jsp";	
    }
    
    @RequestMapping(value="/view_all_categories")
    public String getViewAllCategories() {
    	return "viewAllCategories.jsp";	
    }
    
    @RequestMapping(value="/search_availability")
    public String getViewSearchAvailabilityCategories() {
    	return "searchAvailability.jsp";	
    }
    
    @RequestMapping(value="/new_ad")
    public String getNewAd(HttpServletRequest request) {
    	
    	
	Map<String, String[]> parameters = request.getParameterMap();
    	
    	Set <String> key = parameters.keySet();
    	
    	for (String key1 : key ){
    		
    		System.out.println(key1);
    		System.out.println(parameters.get(key1)[0]);
    	}
    	
    	
    	Advertisment advertisment = new Advertisment();
    	DBConnection db = new DBConnection();
    	
    	
    	
    	advertisment.setDescription(parameters.get("description")[0]);
    	advertisment.setImage("img1");
    	advertisment.setCategory(parameters.get("category")[0]);
    	advertisment.setCategory(parameters.get("header")[0]);
    	advertisment.setPosition(1);
    	
    	System.out.println("adddddd");
    	db.createAd(advertisment);
    	System.out.println("aaaaaaaa");
    	
    	return "Admin.jsp";
    	  
    	
    	
    }
    
    @RequestMapping(value="/new_vedio_post")
    public String createNewVedioPost(HttpServletRequest request) {
    	
    	
	Map<String, String[]> parameters = request.getParameterMap();
    	
    	Set <String> key = parameters.keySet();
    	
    	for (String key1 : key ){
    		
    		System.out.println(key1);
    		System.out.println(parameters.get(key1)[0]);
    	}
    	
    	
    	Advertisment advertisment = new Advertisment();
    	DBConnection db = new DBConnection();
    	
    	
    	
    	advertisment.setDescription(parameters.get("header")[0]);
    	advertisment.setImage("vedio");
    	advertisment.setPosition(1);
    	
    	System.out.println("adddddd");
    	db.createAd(advertisment);
    	System.out.println("aaaaaaaa");
    	
    	return "Admin.jsp";
    	  
    	
    	
    }
    
    @RequestMapping(value="/searchAds")
    public String getAllAds() {
    	
    	
    	System.out.println("all ads");
    	//db.getSelectedtAds(advertisment);
    	
    	return "showAllAds.jsp";
    	  
    	
    	
    }
    
    @RequestMapping(value="/searchAdsMobile")
    public String getAllAdsMobile() {
    	
    	
    	System.out.println("all ads");
    	//db.getSelectedtAds(advertisment);
    	
    	return "showAllAdsMobile.jsp";
    	  
    	
    	
    }
    
    @RequestMapping(value="/terms_and_conditions")
    public String getTermsAndConditions() {
    	
    	
    	System.out.println("terms_and_conditions");
    	
    	return "TermsAndConditions.jsp";
    	  
    	
    	
    }
    
    @RequestMapping(value="/privacy")
    public String getPrivacy() {
    	
    	
    	System.out.println("privacy");
    	
    	return "Privacy.jsp";
    	  
    	
    	
    }
    
    @RequestMapping(value="/viewAllMessages")
    public String viewAllMessages() {
    	
    	
    	System.out.println("viewAllMessages");
    	
    	return "viewAllMessages.jsp";
    	  
    	
    	
    }
    
    
    
    @RequestMapping(value="/hotelBooking")
    public String hotelBooking() {
    	
    	
    	System.out.println("hotelBooking");
    	
    	return "hotelBooking.jsp";
    	  
    	
    	
    }
    
    
    @RequestMapping(value="/updateHotelBooking")
    public String updateHotelBooking() {
    	
    	
    	System.out.println("update Hotel Booking");
    	
    	return "updateHotelBooking.jsp";
    	  
    	
    	
    }
    
    
    
}
