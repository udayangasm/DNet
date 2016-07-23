
package com.websystique.springmvc.controller;
 

 
import java.io.File;
import java.io.IOException;
import java.security.Timestamp;
import java.util.ArrayList;
import java.util.Date;
import java.text.SimpleDateFormat;
import java.util.List;
import java.util.Map;
import java.util.Set;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;

import com.websystique.springmvc.model.Advertisment;
import com.websystique.springmvc.model.DBConnection;
import com.websystique.springmvc.model.News;
import com.websystique.springmvc.model.User;
import com.websystique.springmvc.model.Video;
 
@Controller
public class CrunchifyFileUploadController {
 
    @RequestMapping(value = "/upload", method = RequestMethod.GET)
    public String crunchifyDisplayForm() {
        return "uploadfile";
    }
 
   
    
    
   
    @RequestMapping(value = "/updateAdvertisment", method = RequestMethod.POST)
    public String editAdvertisment(@ModelAttribute("uploadForm") CrunchifyFileUpload uploadForm, Model map,HttpServletRequest request) throws IllegalStateException, IOException {
    	
    	

    	String fileName= "";
    	
    	System.out.println("Edit advertisment");
    	
    	String header = request.getParameter("header");
    	String dropDownValue = request.getParameter("hiddenFeild");
       	String dropDownValueCity = request.getParameter("hiddenFeildCity");
    	String locationlng = request.getParameter("locationlng");
    	String locationlat = request.getParameter("locationlat");
    	String moreDescription  = request.getParameter("moreDescription");

    	String userName = request.getParameter("loggedUserName");
    	
    	System.out.println(userName);
    	
    	String tags = request.getParameter("tags");
    	String [] tagArray = tags.split(",");
    	
    	String mobile_number = request.getParameter("mobile_number");
    	String email_address = request.getParameter("email_address");
    	
        String saveDirectory =  "/var/www/images/" ;
        
        long dt = System.currentTimeMillis();
    	
        List<MultipartFile> crunchifyFiles = uploadForm.getFiles();
 
        List<String> fileNames = new ArrayList<String>();
 
        if (null != crunchifyFiles && crunchifyFiles.size() > 0) {
        	
            for (MultipartFile multipartFile : crunchifyFiles) {
 
                fileName = multipartFile.getOriginalFilename();
                
                if (!"".equalsIgnoreCase(fileName)) {
                    multipartFile.transferTo(new File(saveDirectory +dt+ fileName));
                    fileNames.add(dt+fileName);
                    
                }
            }
        }
        
    	Advertisment advertisment = new Advertisment();
    	DBConnection db = new DBConnection();
    	
    	String arr [] = new String[5];
    	
    	for (int i =0;i< 5 && tagArray.length > i ; i++){
    		arr[i] = tagArray[i] ;
    	}
    	
    	
    	
    	advertisment.setTagArray(arr);
    	advertisment.setUserName(userName);
    	advertisment.setImage(fileNames.get(0));
    	advertisment.setHeader(header);
    	advertisment.setCategory(dropDownValue);
    	
    	System.out.println(dropDownValue);
    	
    	String discription = "";
    	
    	if (dropDownValue.equals("HOTELS") ){
    		
    			String rooms = "";
    			String  weddingHalls = ""; 
				String swimmingPools = "";
				String internet = ""; 
				String transport = "";
				String fitnessRecreation = "";
			
    		
				try{
					rooms = request.getParameter("hotelsNumberOfRooms");
					discription += "Rooms : "+rooms+";";
				}catch(Exception ex){}
				
				try{
					weddingHalls = request.getParameter("hotelsWeddingHalls");
					discription += "WeddingHalls : "+weddingHalls+";";
				}catch(Exception ex){}
				
				try{
					swimmingPools = request.getParameter("hotelsSwimmingPools");
					discription += "Rooms : "+swimmingPools+";";
				}catch(Exception ex){}
				
				try{
					internet = request.getParameter("hotelsInternet");
					discription += "Rooms : "+internet+";";
				}catch(Exception ex){}
				
				try{
					transport = request.getParameter("hotelsTransport");
					discription += "Rooms : "+transport+";";
				}catch(Exception ex){}
				
				try{
					fitnessRecreation = request.getParameter("hotelsFitness");
					discription += "Rooms : "+fitnessRecreation+";";
				}catch(Exception ex){}
				
				
    	}else if (dropDownValue.equals("HOUSE AND PROPERTY") ){
    		
    		
    		String address = "";
    		String landType = "";
    		String landSize = "";
    		String price = "";
			
    		
			try{
				address = request.getParameter("houseAndPropertyAddress");
				discription += "Address : "+address+";";
			}catch(Exception ex){}
			try{
				landType = request.getParameter("houseAndPropertyLandType");
				discription += "LandType : "+landType+";";
			}catch(Exception ex){}
			try{
				landSize = request.getParameter("houseAndPropertyLandSize");
				discription += "LandSize : "+landSize+";";
			}catch(Exception ex){}
			try{
				price = request.getParameter("houseAndPropertyPrice");
				discription += "Price : "+price+";";
			}catch(Exception ex){}
		
    		
    		
    	}else if (dropDownValue.equals("VEHICLES") ){
    	
    	
    		
    		String brand = "";
    		String modelYear = "";
    		String vehicleCondition = "";
    		String transmission = "";
    		String model = "";
    		String bodyType = "";
    		String fuelType = "";
    		String enginCapacity = "";
    		String mileage = "";
    		String price = "";
    		
    		try{
    			brand = request.getParameter("vehicleBrand");
				discription += "Brand : "+brand+";";
			}catch(Exception ex){}
		
    		try{
    			modelYear = request.getParameter("vehicleModelYear");
				discription += "ModelYear : "+modelYear+";";
			}catch(Exception ex){}
		
    		try{
    			vehicleCondition = request.getParameter("vehicleCondition");
				discription += "VehicleCondition : "+vehicleCondition+";";
			}catch(Exception ex){}
		
    		try{
    			transmission = request.getParameter("vehicleTransmission");
				discription += "Transmission : "+transmission+";";
			}catch(Exception ex){}
		
    		try{
    			model = request.getParameter("vehicleModel");
				discription += "Model : "+model+";";
			}catch(Exception ex){}
		
    		try{
    			bodyType = request.getParameter("vehicleBodyType");
				discription += "BodyType : "+bodyType+";";
			}catch(Exception ex){}
		
    		try{
    			fuelType = request.getParameter("vehicleFuelType");
				discription += "FuelType : "+fuelType+";";
			}catch(Exception ex){}
		
    		try{
    			enginCapacity = request.getParameter("vehicleEnginCapacity");
				discription += "EnginCapacity : "+enginCapacity+";";
			}catch(Exception ex){}
		
    		try{
    			mileage = request.getParameter("vehicleMileage");
				discription += "Mileage : "+mileage+";";
			}catch(Exception ex){}
		
    		try{
				price = request.getParameter("vehiclePrice");
				discription += "Price : "+price+";";
			}catch(Exception ex){}
			
			
		
    		
    		
    	}else if (dropDownValue.equals("ELECTRONICS") ){
    	
    		
    		String brand = "";
    		String condition = "";
    		String model = "";
    		String price = "";
    		
    		try{
    			brand = request.getParameter("electronicBrand");
				discription += "Brand : "+brand+";";
			}catch(Exception ex){}
		
    		try{
    			condition = request.getParameter("electronicCondition");
				discription += "Condition : "+condition+";";
			}catch(Exception ex){}
		
    		try{
    			model = request.getParameter("electronicModel");
				discription += "Model : "+model+";";
			}catch(Exception ex){}
			try{
				price = request.getParameter("electronicPrice");
				discription += "Price : "+price+";";
			}catch(Exception ex){}
			
		
    		
    		
    	}else if (dropDownValue.equals("FASHION AND BEAUTY") ){
    	
    		String item = "";
    		String price = "";
    		
    	
    		try{
    			item = request.getParameter("fasionItem");
				discription += "Item : "+item+";";
			}catch(Exception ex){}
			try{
				price = request.getParameter("fasionPrice");
				discription += "Price : "+price+";";
			}catch(Exception ex){}
			
		
    		
    	}else if (dropDownValue.equals("OTHER") ){
    		
    		String price = "";
    	
    		try{
				price = request.getParameter("otherPrice");
				discription += "Price : "+price+";";
			}catch(Exception ex){}
			
    		
    	}
    	
    	advertisment.setPosition(1);
    	advertisment.setCity(dropDownValueCity);
    	advertisment.setOtherImages(fileNames);
    	advertisment.setLan(locationlng);
    	advertisment.setLat(locationlat);
    	advertisment.setMoreDescription(moreDescription);
    	advertisment.setPostedDate(dt);
    	advertisment.setMobile(mobile_number);
    	advertisment.setEmail(email_address);
    	advertisment.setDescription(discription);
    	
    	db.createAd(advertisment);
    	
        map.addAttribute("files", fileNames);
        return "index.jsp";
	
    
    
    
    }
       
    
    
    @RequestMapping(value = "/savefiles", method = RequestMethod.POST)
    public String crunchifySave(@ModelAttribute("uploadForm") CrunchifyFileUpload uploadForm, Model map,HttpServletRequest request) throws IllegalStateException, IOException {
    	
    	
    	String fileName= "";
    	
    	String header = request.getParameter("header");
    	String dropDownValue = request.getParameter("hiddenFeild");
       	String dropDownValueCity = request.getParameter("hiddenFeildCity");
    	String locationlng = request.getParameter("locationlng");
    	String locationlat = request.getParameter("locationlat");
    	String moreDescription  = request.getParameter("moreDescription");

    	String userName = request.getParameter("loggedUserName");
    	
    	System.out.println(userName);
    	
    	String tags = request.getParameter("tags");
    	String [] tagArray = tags.split(",");
    	
    	String mobile_number = request.getParameter("mobile_number");
    	String email_address = request.getParameter("email_address");
    	
        String saveDirectory =  "/var/www/images/" ;
        
        long dt = System.currentTimeMillis();
    	
        List<MultipartFile> crunchifyFiles = uploadForm.getFiles();
 
        List<String> fileNames = new ArrayList<String>();
 
        if (null != crunchifyFiles && crunchifyFiles.size() > 0) {
        	
            for (MultipartFile multipartFile : crunchifyFiles) {
 
                fileName = multipartFile.getOriginalFilename();
                
                if (!"".equalsIgnoreCase(fileName)) {
                    multipartFile.transferTo(new File(saveDirectory +dt+ fileName));
                    fileNames.add(dt+fileName);
                    
                }
            }
        }
        
    	Advertisment advertisment = new Advertisment();
    	DBConnection db = new DBConnection();
    	
    	String arr [] = new String[5];
    	
    	for (int i =0;i< 5 && tagArray.length > i ; i++){
    		arr[i] = tagArray[i] ;
    	}
    	
    	
    	
    	advertisment.setTagArray(arr);
    	advertisment.setUserName(userName);
    	advertisment.setImage(fileNames.get(0));
    	advertisment.setHeader(header);
    	advertisment.setCategory(dropDownValue);
    	
    	System.out.println(dropDownValue);
    	
    	String discription = "";
    	
    	if (dropDownValue.equals("HOTELS") ){
    		
    			String rooms = "";
    			String  weddingHalls = ""; 
				String swimmingPools = "";
				String internet = ""; 
				String transport = "";
				String fitnessRecreation = "";
			
    		
				try{
					rooms = request.getParameter("hotelsNumberOfRooms");
					discription += "Rooms : "+rooms+";";
				}catch(Exception ex){}
				
				try{
					weddingHalls = request.getParameter("hotelsWeddingHalls");
					discription += "WeddingHalls : "+weddingHalls+";";
				}catch(Exception ex){}
				
				try{
					swimmingPools = request.getParameter("hotelsSwimmingPools");
					discription += "Rooms : "+swimmingPools+";";
				}catch(Exception ex){}
				
				try{
					internet = request.getParameter("hotelsInternet");
					discription += "Rooms : "+internet+";";
				}catch(Exception ex){}
				
				try{
					transport = request.getParameter("hotelsTransport");
					discription += "Rooms : "+transport+";";
				}catch(Exception ex){}
				
				try{
					fitnessRecreation = request.getParameter("hotelsFitness");
					discription += "Rooms : "+fitnessRecreation+";";
				}catch(Exception ex){}
				
				
    	}else if (dropDownValue.equals("HOUSE AND PROPERTY") ){
    		
    		
    		String address = "";
    		String landType = "";
    		String landSize = "";
    		String price = "";
			
    		
			try{
				address = request.getParameter("houseAndPropertyAddress");
				discription += "Address : "+address+";";
			}catch(Exception ex){}
			try{
				landType = request.getParameter("houseAndPropertyLandType");
				discription += "LandType : "+landType+";";
			}catch(Exception ex){}
			try{
				landSize = request.getParameter("houseAndPropertyLandSize");
				discription += "LandSize : "+landSize+";";
			}catch(Exception ex){}
			try{
				price = request.getParameter("houseAndPropertyPrice");
				discription += "Price : "+price+";";
			}catch(Exception ex){}
		
    		
    		
    	}else if (dropDownValue.equals("VEHICLES") ){
    	
    	
    		
    		String brand = "";
    		String modelYear = "";
    		String vehicleCondition = "";
    		String transmission = "";
    		String model = "";
    		String bodyType = "";
    		String fuelType = "";
    		String enginCapacity = "";
    		String mileage = "";
    		String price = "";
    		
    		try{
    			brand = request.getParameter("vehicleBrand");
				discription += "Brand : "+brand+";";
			}catch(Exception ex){}
		
    		try{
    			modelYear = request.getParameter("vehicleModelYear");
				discription += "ModelYear : "+modelYear+";";
			}catch(Exception ex){}
		
    		try{
    			vehicleCondition = request.getParameter("vehicleCondition");
				discription += "VehicleCondition : "+vehicleCondition+";";
			}catch(Exception ex){}
		
    		try{
    			transmission = request.getParameter("vehicleTransmission");
				discription += "Transmission : "+transmission+";";
			}catch(Exception ex){}
		
    		try{
    			model = request.getParameter("vehicleModel");
				discription += "Model : "+model+";";
			}catch(Exception ex){}
		
    		try{
    			bodyType = request.getParameter("vehicleBodyType");
				discription += "BodyType : "+bodyType+";";
			}catch(Exception ex){}
		
    		try{
    			fuelType = request.getParameter("vehicleFuelType");
				discription += "FuelType : "+fuelType+";";
			}catch(Exception ex){}
		
    		try{
    			enginCapacity = request.getParameter("vehicleEnginCapacity");
				discription += "EnginCapacity : "+enginCapacity+";";
			}catch(Exception ex){}
		
    		try{
    			mileage = request.getParameter("vehicleMileage");
				discription += "Mileage : "+mileage+";";
			}catch(Exception ex){}
		
    		try{
				price = request.getParameter("vehiclePrice");
				discription += "Price : "+price+";";
			}catch(Exception ex){}
			
			
		
    		
    		
    	}else if (dropDownValue.equals("ELECTRONICS") ){
    	
    		
    		String brand = "";
    		String condition = "";
    		String model = "";
    		String price = "";
    		
    		try{
    			brand = request.getParameter("electronicBrand");
				discription += "Brand : "+brand+";";
			}catch(Exception ex){}
		
    		try{
    			condition = request.getParameter("electronicCondition");
				discription += "Condition : "+condition+";";
			}catch(Exception ex){}
		
    		try{
    			model = request.getParameter("electronicModel");
				discription += "Model : "+model+";";
			}catch(Exception ex){}
			try{
				price = request.getParameter("electronicPrice");
				discription += "Price : "+price+";";
			}catch(Exception ex){}
			
		
    		
    		
    	}else if (dropDownValue.equals("FASHION AND BEAUTY") ){
    	
    		String item = "";
    		String price = "";
    		
    	
    		try{
    			item = request.getParameter("fasionItem");
				discription += "Item : "+item+";";
			}catch(Exception ex){}
			try{
				price = request.getParameter("fasionPrice");
				discription += "Price : "+price+";";
			}catch(Exception ex){}
			
		
    		
    	}else if (dropDownValue.equals("OTHER") ){
    		
    		String price = "";
    	
    		try{
				price = request.getParameter("otherPrice");
				discription += "Price : "+price+";";
			}catch(Exception ex){}
			
    		
    	}
    	
    	advertisment.setPosition(1);
    	advertisment.setCity(dropDownValueCity);
    	advertisment.setOtherImages(fileNames);
    	advertisment.setLan(locationlng);
    	advertisment.setLat(locationlat);
    	advertisment.setMoreDescription(moreDescription);
    	advertisment.setPostedDate(dt);
    	advertisment.setMobile(mobile_number);
    	advertisment.setEmail(email_address);
    	advertisment.setDescription(discription);
    	
    	db.createAd(advertisment);
    	
        map.addAttribute("files", fileNames);
        return "index.jsp";
    }
    
    
    
    
    
    
    
    
    
    @RequestMapping(value = "/saveNews", method = RequestMethod.POST)
    public String crunchifySaveNews(@ModelAttribute("uploadForm") CrunchifyFileUpload uploadForm, Model map,HttpServletRequest request) throws IllegalStateException, IOException {
    	
    	
    	String fileName= "";
    	
    	String header = request.getParameter("header");
    	String paragraph1 = request.getParameter("paragraph1");
     	String paragraph2 = request.getParameter("paragraph2");
        String saveDirectory =  "/var/www/images/" ;
 
        List<MultipartFile> crunchifyFiles = uploadForm.getFiles();
 
        List<String> fileNames = new ArrayList<String>();
        if (null != crunchifyFiles && crunchifyFiles.size() > 0) {
 
        	for (MultipartFile multipartFile : crunchifyFiles) {
 
                fileName = multipartFile.getOriginalFilename();
                if (!"".equalsIgnoreCase(fileName)) {
                    // Handle file content - multipartFile.getInputStream()
                    multipartFile.transferTo(new File(saveDirectory + fileName));
                    fileNames.add(fileName);
                }
            }
        }
        
        News news = new News();
    	DBConnection db = new DBConnection();
    	
    	long dt = System.currentTimeMillis();
 
    	news.setImageName(fileName);
    	news.setHeader(header);
    	news.setParagraph1(paragraph1);
    	news.setParagraph2(paragraph2);
    	news.setDate(dt);
    	db.createNews(news);
        map.addAttribute("files", fileNames);
        return "Admin.jsp";
    }
    
    
    
    
    
    @RequestMapping(value = "/saveVedios", method = RequestMethod.POST)
    public String crunchifySaveVedios(@ModelAttribute("uploadForm") CrunchifyFileUpload uploadForm, Model map,HttpServletRequest request) throws IllegalStateException, IOException {
    	
    	String header = request.getParameter("header");
    	
    	String fileName ="";
    	String videoName = request.getParameter("vedioName");
    	String saveDirectory =  "/var/www/images/" ;
        
    	List<MultipartFile> crunchifyFiles = uploadForm.getFiles();
    	
    	List<String> fileNames = new ArrayList<String>();
        
    	if (null != crunchifyFiles && crunchifyFiles.size() > 0) {
          	
              for (MultipartFile multipartFile : crunchifyFiles) {
   
                  fileName = multipartFile.getOriginalFilename();
                  if (!"".equalsIgnoreCase(fileName)) {
                      // Handle file content - multipartFile.getInputStream()
                      multipartFile.transferTo(new File(saveDirectory + fileName));
                      fileNames.add(fileName);
                  }
              }
          }
   
    	
        Video video = new Video();
    	DBConnection db = new DBConnection();
    	
    	long dt = System.currentTimeMillis();
    	
    	video.setVideoName(videoName);
    	video.setHeader(header);
    	video.setDate(dt);
    	video.setVideoImageName(fileName);
    	db.createVideo(video);
 
        return "Admin.jsp";
    }
        
    
}