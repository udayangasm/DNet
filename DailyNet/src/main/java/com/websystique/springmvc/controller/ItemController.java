package com.websystique.springmvc.controller;

import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.websystique.springmvc.model.Advertisment;
import com.websystique.springmvc.model.AllAds;
import com.websystique.springmvc.model.BookHotelUser;
import com.websystique.springmvc.model.DBConnection;
import com.websystique.springmvc.model.Message;
import com.websystique.springmvc.model.News;
import com.websystique.springmvc.model.UpdateHotel;
import com.websystique.springmvc.model.Video;
import com.websystique.springmvc.service.ItemService;

@Controller
public class ItemController {//Serves Data.

    @Autowired
    ItemService itemService;  //Service which will do all data retrieval/manipulation work
 
    @RequestMapping("/fashionCategories")
    public ResponseEntity<List> listFashionCategories() {
		System.out.println("*************************************ListAllItems");
		DBConnection db = new DBConnection();
    	List<Advertisment> categories = 	db.getAllAdsByCategory("Fashion");
		//List<String> categories =  itemService.populateAllCategories(); 
		
		System.out.println("*************************************ListAllItems1111");
        if(categories.isEmpty()){
            return new ResponseEntity<List>(HttpStatus.NO_CONTENT);//You many decide to return HttpStatus.NOT_FOUND
        }
        return new ResponseEntity<List>(categories, HttpStatus.OK);
    }
    
    
    @RequestMapping("/hotelCategories")
    public ResponseEntity<List> listHotelCategories() {
		System.out.println("*************************************ListAllItems");
		DBConnection db = new DBConnection();
    	List<Advertisment> categories = 	db.getAllAdsByCategory("Hotels");
		//List<String> categories =  itemService.populateAllCategories(); 
		
		System.out.println("*************************************ListAllItems1111");
        if(categories.isEmpty()){
            return new ResponseEntity<List>(HttpStatus.NO_CONTENT);//You many decide to return HttpStatus.NOT_FOUND
        }
        return new ResponseEntity<List>(categories, HttpStatus.OK);
    }
    
    @RequestMapping("/jwellaryCategories")
    public ResponseEntity<List> listJwellaryCategories() {
		System.out.println("*************************************ListAllItems");
		DBConnection db = new DBConnection();
    	List<Advertisment> categories = 	db.getAllAdsByCategory("Jwellary");
		//List<String> categories =  itemService.populateAllCategories(); 
		
		System.out.println("*************************************ListAllItems1111");
        if(categories.isEmpty()){
            return new ResponseEntity<List>(HttpStatus.NO_CONTENT);//You many decide to return HttpStatus.NOT_FOUND
        }
        return new ResponseEntity<List>(categories, HttpStatus.OK);
    }
    
    
    @RequestMapping("/electronicCategories")
    public ResponseEntity<List> listElectronicCategories() {
		System.out.println("*************************************ListAllItems");
		DBConnection db = new DBConnection();
    	List<Advertisment> categories = 	db.getAllAdsByCategory("Electronics");
		//List<String> categories =  itemService.populateAllCategories(); 
		
		System.out.println("*************************************ListAllItems1111");
        if(categories.isEmpty()){
            return new ResponseEntity<List>(HttpStatus.NO_CONTENT);//You many decide to return HttpStatus.NOT_FOUND
        }
        return new ResponseEntity<List>(categories, HttpStatus.OK);
    }
    
    
    @RequestMapping("/placesCategories")
    public ResponseEntity<List> listPlacesCategories() {
		System.out.println("*************************************ListAllItems");
		DBConnection db = new DBConnection();
    	List<Advertisment> categories = 	db.getAllAdsByCategory("Places");
		//List<String> categories =  itemService.populateAllCategories(); 
		
		System.out.println("*************************************ListAllItems1111");
        if(categories.isEmpty()){
            return new ResponseEntity<List>(HttpStatus.NO_CONTENT);//You many decide to return HttpStatus.NOT_FOUND
        }
        return new ResponseEntity<List>(categories, HttpStatus.OK);
    }
    
    
    @RequestMapping("/vehicleCategories")
    public ResponseEntity<List> listVehicleCategories() {
		System.out.println("*************************************ListAllItems");
		DBConnection db = new DBConnection();
    	List<Advertisment> categories = 	db.getAllAdsByCategory("Vehicles");
		//List<String> categories =  itemService.populateAllCategories(); 
		
		System.out.println("*************************************ListAllItems1111");
        if(categories.isEmpty()){
            return new ResponseEntity<List>(HttpStatus.NO_CONTENT);//You many decide to return HttpStatus.NOT_FOUND
        }
        return new ResponseEntity<List>(categories, HttpStatus.OK);
    }
    
    @RequestMapping("/allAdsCategories")
    public ResponseEntity<List> listAllAdsCategories() {
		System.out.println("*************************************ListAllItems");
		DBConnection db = new DBConnection();
    	List<Advertisment> categories = 	db.getAllAdsByCategory("%");
		//List<String> categories =  itemService.populateAllCategories(); 
		
		System.out.println("*************************************ListAllItems1111");
        if(categories.isEmpty()){
            return new ResponseEntity<List>(HttpStatus.NO_CONTENT);//You many decide to return HttpStatus.NOT_FOUND
        }
        return new ResponseEntity<List>(categories, HttpStatus.OK);
    }
    
    @RequestMapping("/getLatestNews")
    public ResponseEntity<List> getLatestNews() {
		System.out.println("*************************************ListAllItems");
		DBConnection db = new DBConnection();
    	List<News> categories = 	db.getAllLatestNews();
		//List<String> categories =  itemService.populateAllCategories(); 
    	//db.closeDbConnection();
		System.out.println("*************************************ListAllItems1111");
        if(categories.isEmpty()){
            return new ResponseEntity<List>(HttpStatus.NO_CONTENT);//You many decide to return HttpStatus.NOT_FOUND
        }
        return new ResponseEntity<List>(categories, HttpStatus.OK);
    }
    
    
    @RequestMapping("/latestNews/{ID}")
    public ResponseEntity<List> getSelectedNews(@PathVariable("ID") String id) {
		System.out.println("*************************************ListAllItems");
		
		System.out.println(Integer.parseInt(id));
		DBConnection db = new DBConnection();
		System.out.println(111111111);
		
    	System.out.println(Integer.parseInt(id));
		List<News> categories = 	db.getSelectedtNews(Integer.parseInt(id));
		//List<String> categories =  itemService.populateAllCategories(); 
		//db.closeDbConnection();
		System.out.println("*************************************ListAllItems1111");
        if(categories.isEmpty()){
            return new ResponseEntity<List>(HttpStatus.NO_CONTENT);//You many decide to return HttpStatus.NOT_FOUND
        }
        return new ResponseEntity<List>(categories, HttpStatus.OK);
    }
   
    @RequestMapping("/getLatestVideos/{name}")
    public ResponseEntity<List> getLatestVedios(@PathVariable("name") String name) {
		System.out.println("*************************************ListAllItemsVideos");
		DBConnection db = new DBConnection();
    	List<Video> categories = 	db.getAllLatestVedios(name);
		//List<String> categories =  itemService.populateAllCategories(); 
    	//db.closeDbConnection();
		System.out.println("*************************************ListAllVideos");
        if(categories.isEmpty()){
            return new ResponseEntity<List>(HttpStatus.NO_CONTENT);//You many decide to return HttpStatus.NOT_FOUND
        }
        return new ResponseEntity<List>(categories, HttpStatus.OK);
    }
    
    @RequestMapping("/getanotherVideos/{id}")
    public ResponseEntity<List> getOtherVedios( @PathVariable("id") int id) {
		System.out.println(id);
		DBConnection db = new DBConnection();
    	List<Video> categories = 	db.getOtherVedios(id);
		//List<String> categories =  itemService.populateAllCategories(); 
    	//db.closeDbConnection();
		System.out.println("*************************************Other Videos");
        if(categories.isEmpty()){
            return new ResponseEntity<List>(HttpStatus.NO_CONTENT);//You many decide to return HttpStatus.NOT_FOUND
        }
        return new ResponseEntity<List>(categories, HttpStatus.OK);
    }
    
    @RequestMapping("/viewMore/{id}")
    public ResponseEntity<List> getMoreDetails( @PathVariable("id") int id) {
		System.out.println(id);
		System.out.println("view more details");
		DBConnection db = new DBConnection();
    	List<Advertisment> categories = 	db.getSpecificAd(id);
		//List<String> categories =  itemService.populateAllCategories(); 
    	//db.closeDbConnection();
		System.out.println("*************************************Specific ads");
        if(categories.isEmpty()){
            return new ResponseEntity<List>(HttpStatus.NO_CONTENT);//You many decide to return HttpStatus.NOT_FOUND
        }
        return new ResponseEntity<List>(categories, HttpStatus.OK);
    }
    
    @RequestMapping("/searchSpecificAds/{id}")
    public ResponseEntity<List> searchAds( @PathVariable("id") String id) {
		System.out.println(id);
		System.out.println("search my ads");
		String[] words = id.split("~");
		
		System.out.println(words[0]);
		System.out.println(words[1]);
		DBConnection db = new DBConnection();
    	List<Advertisment> categories = db.getSearchAd(words[0],words[1]);
		//List<String> categories =  itemService.populateAllCategories(); 
    	//db.closeDbConnection();
		System.out.println("*************************************Specific ads");
        if(categories.isEmpty()){
            return new ResponseEntity<List>(HttpStatus.NO_CONTENT);//You many decide to return HttpStatus.NOT_FOUND
        }
        return new ResponseEntity<List>(categories, HttpStatus.OK);
    }
    
    @RequestMapping("/searchAdsByCategory/{id}")
    public ResponseEntity<List> searchAdsByCategory( @PathVariable("id") String id) {
		System.out.println(id);
		System.out.println("search ads By category");
		DBConnection db = new DBConnection();
    	List<Advertisment> categories = db.getAllAdsByCategory(id);
		//List<String> categories =  itemService.populateAllCategories(); 
    	//db.closeDbConnection();
		System.out.println("*************************************Specific ads by category");
        if(categories.isEmpty()){
            return new ResponseEntity<List>(HttpStatus.NO_CONTENT);//You many decide to return HttpStatus.NOT_FOUND
        }
        return new ResponseEntity<List>(categories, HttpStatus.OK);
    }

    @RequestMapping("/searchFilterAds/{id}")
    public ResponseEntity<List> searchFilterAds( @PathVariable("id") String id) {
		System.out.println(id);
		System.out.println("filter ads");
		String[] words = id.split("~");

		String category;
		String district;
		int less;
		int more;


		if(words[0].equals("all")){
			category = "%"; 
		}else{
			category = words[0];
		}

				
		if(words[1].equals("all")){
		   	district = "%"; 
		}else{
			district = words[1];
		}
		

				
		if(words[2].equals("all")){
		   	less = 0; 
		}else{
			less = Integer.parseInt(words[2]);
		}


		if(words[3].equals("all")){
		   	more = 100000000; 
		}else{
			more = Integer.parseInt(words[3]);
		}

		DBConnection db = new DBConnection();
    	List<Advertisment> categories = db.getFilterAds(category,district,less,more);
		System.out.println("*************************************Filter ads");
        
		if(categories.isEmpty()){
            		return new ResponseEntity<List>(HttpStatus.NO_CONTENT);//You many decide to return HttpStatus.NOT_FOUND
        	}
        return new ResponseEntity<List>(categories, HttpStatus.OK);
    }

    @RequestMapping("/editSelectedAd/{id}")
    public ResponseEntity<List> editSelectedAd( @PathVariable("id") String id) {
		System.out.println(id);
		System.out.println("edit selected ad");
		DBConnection db = new DBConnection();
		int adId = -1;
		try{
			adId = Integer.parseInt(id);
		}catch(Exception ex){}
		
    	List<Advertisment> categories = db.getSpecificAd(adId);
		//List<String> categories =  itemService.populateAllCategories(); 
    	//db.closeDbConnection();
		System.out.println("*************************************edit selected ad");
        if(categories.isEmpty()){
            return new ResponseEntity<List>(HttpStatus.NO_CONTENT);//You many decide to return HttpStatus.NOT_FOUND
        }
        return new ResponseEntity<List>(categories, HttpStatus.OK);
    }  

	// 	buddhika 03-07-2016
	@RequestMapping("/categories")
	public ResponseEntity<AllAds> getCategories() {
		System.out.println("*************************************getCategories");
		DBConnection db = new DBConnection();
		AllAds allAds = db.getCategories();
	    return new ResponseEntity<AllAds> (allAds, HttpStatus.OK);
	}
	
	// 	buddhika 05-07-2016
	@RequestMapping("/randomads")
	public ResponseEntity<List> getRandomAds(@RequestParam("limit") int limit) {
		System.out.println("*************************************getRandomAds");
		DBConnection db = new DBConnection();
		List<Advertisment> advertisments = db.getRandomAds(limit);
	    return new ResponseEntity<List> (advertisments, HttpStatus.OK);
	}
	
	// 	buddhika 06-07-2016
	@RequestMapping("/videos")
	public ResponseEntity<List> getVideos(@RequestParam("offset") int offset, @RequestParam("limit") int limit) {
		System.out.println("*************************************getVideos");
		DBConnection db = new DBConnection();
		List<Video> videos = db.getVideos(offset, limit);
	    return new ResponseEntity<List> (videos, HttpStatus.OK);
	}
	
	@RequestMapping("/videos/{videoName}")
	public ResponseEntity<List> getVideos(@PathVariable("videoName") String videoName, @RequestParam("offset") int offset, @RequestParam("limit") int limit) {
		System.out.println("*************************************getVideos");
		DBConnection db = new DBConnection();
		List<Video> videos = db.getVideo(videoName, offset, limit);
	    return new ResponseEntity<List> (videos, HttpStatus.OK);
	}
	
	// 	buddhika 07-07-2016
//	@RequestMapping(value = "/allAds", params = { "q"})
	@RequestMapping(value = "/allAds")
	public ResponseEntity<List> searchAdsByTag(@RequestParam(value = "q", required = false) String q,
			@RequestParam(value = "category", required = false) String category,
			@RequestParam(value = "district", required = false) String district,
			@RequestParam(value = "min", required = false) String sMin,
			@RequestParam(value = "max", required = false) String sMax) {
		System.out.println("*************************************searchAdsByTag");
		DBConnection db = new DBConnection();
		
		int min = -1;
		int max = -1;
		
		if (sMin != null) {
			min = Integer.parseInt(sMin);
		}
		
		if (sMax != null) {
			max = Integer.parseInt(sMax);
		}
		
		List<Advertisment> videos = db.searchAdsByTag(q, category, district, min, max);
	    return new ResponseEntity<List> (videos, HttpStatus.OK);
	}
	
//	@RequestMapping(value = "/allAds")
//	public ResponseEntity<List> searchAdsByTag() {
//		System.out.println("*************************************searchAllAds");
//		DBConnection db = new DBConnection();
//		List<Advertisment> videos = db.searchAdsByTag(null);
//	    return new ResponseEntity<List> (videos, HttpStatus.OK);
//	}
	// ---------------------

	
	
    @RequestMapping("/allMessagesByUserName/{userName}")
    public ResponseEntity<List> getAllMessagesByUserName( @PathVariable("userName") String userName) {
		System.out.println(userName);
		System.out.println("view All Messages");
		DBConnection db = new DBConnection();
    	List<Message> categories = db.getAllMessagesByUserName(userName);
		//List<String> categories =  itemService.populateAllCategories(); 
    	//db.closeDbConnection();
		System.out.println("*************************************Messages");
        if(categories.isEmpty()){
            return new ResponseEntity<List>(HttpStatus.NO_CONTENT);//You many decide to return HttpStatus.NOT_FOUND
        }
        return new ResponseEntity<List>(categories, HttpStatus.OK);
    }

    
    @RequestMapping("/sendMessage")
    public void sendMessage( @RequestParam(value = "receiverID", required = false) String receiverID,
			@RequestParam(value = "userName", required = false) String userName,
			@RequestParam(value = "messageHeader", required = false) String messageHeder,
			@RequestParam(value = "messageContent", required = false) String messageContent) {
		
		System.out.println("send Messages");
		long postedDate = System.currentTimeMillis();
		
		Message message = new Message();
		message.setUserID(Integer.parseInt(receiverID));
		message.setUserName(userName);
		message.setMessageHeder(messageHeder);
		message.setMessageContent(messageContent);
		message.setPostedDate(postedDate);
		
		DBConnection db = new DBConnection();
    	db.sendMessages(message);
		//List<String> categories =  itemService.populateAllCategories(); 
    	//db.closeDbConnection();
		System.out.println("*************************************Messages");
        
    }
	
	
    @RequestMapping("/sendMessageByUserName")
    public void sendMessageByUserName( @RequestParam(value = "receiverUserName", required = false) String receiverUserName,
			@RequestParam(value = "userName", required = false) String userName,
			@RequestParam(value = "messageHeader", required = false) String messageHeder,
			@RequestParam(value = "messageContent", required = false) String messageContent) {
		
		System.out.println("send Messages");
		long postedDate = System.currentTimeMillis();
		
		Message message = new Message();
		message.setRecieverUserName(receiverUserName);
		message.setUserName(userName);
		message.setMessageHeder(messageHeder);
		message.setMessageContent(messageContent);
		message.setPostedDate(postedDate);
		
		DBConnection db = new DBConnection();
    	db.sendMessageByUserName(message);
		//List<String> categories =  itemService.populateAllCategories(); 
    	//db.closeDbConnection();
		System.out.println("*************************************Messages");
        
    }
    
    
    @RequestMapping("/bookHotel")
    public void bookHotel( @RequestParam(value = "receiverUserName", required = false) String receiverUserName,
			@RequestParam(value = "userName", required = false) String userName,
			@RequestParam(value = "messageHeader", required = false) String messageHeder,
			@RequestParam(value = "messageContent", required = false) String messageContent,
			@RequestParam(value = "fromDate", required = false) String fromDate,
			@RequestParam(value = "toDate", required = false) String toDate,
			@RequestParam(value = "hotelID", required = false) String hotelID,
			@RequestParam(value = "roomType", required = false) String roomType,
			@RequestParam(value = "numOfRooms", required = false) String numOfRooms,
			@RequestParam(value = "numOfMens", required = false) String numOfMens,
			@RequestParam(value = "numOfWomens", required = false) String numOfWomens,
			@RequestParam(value = "numOfChildren", required = false) String numOfChildren) {
		
		System.out.println("book Hotel");
		long postedDate = System.currentTimeMillis();
		
		Message messageToBuyer = new Message();
		messageToBuyer.setRecieverUserName(receiverUserName);
		messageToBuyer.setUserName(userName);
		messageToBuyer.setMessageHeder(messageHeder);
		messageToBuyer.setMessageContent(messageContent);
		messageToBuyer.setPostedDate(postedDate);
		
		Message messageToHotelOwner = new Message();
		messageToHotelOwner.setRecieverUserName(hotelID);
		messageToHotelOwner.setUserName(receiverUserName);
		messageToHotelOwner.setMessageHeder("Book Hotel");
		messageToHotelOwner.setMessageContent("I am interesting about your hotel ");
		messageToHotelOwner.setPostedDate(postedDate);
		
		System.out.println("book Hotel1");
		
		
		long fromDateLong = 0;
		long toDateLong = 0;
		
		DateFormat formatter = new SimpleDateFormat("E MMM dd yyyy HH:mm:ss");
		
		Date fromDateDate;
		Date toDateDate;
		
		String fromDateSubString =  fromDate.substring(0,24); 
		String toDateSubString =  toDate.substring(0,24); 
		
		
		try {
			fromDateDate = (Date)formatter.parse(fromDateSubString);
			fromDateLong = fromDateDate.getTime();
			
			toDateDate = (Date)formatter.parse(toDateSubString);
			toDateLong = toDateDate.getTime();
			
		} catch (ParseException e) {e.printStackTrace();}
		
		
		System.out.println("book Hotel2");
		
		BookHotelUser bookHotelUser = new BookHotelUser();
		
		bookHotelUser.setUserName(receiverUserName);
		bookHotelUser.setHotelId(Integer.parseInt(hotelID));
		bookHotelUser.setPostedDate(postedDate);
		bookHotelUser.setCheckingDate(fromDateLong);
		bookHotelUser.setCheckoutDate(toDateLong);
		bookHotelUser.setRoomType(roomType);
		bookHotelUser.setNumOfBookedRooms(Integer.parseInt(numOfRooms));
		bookHotelUser.setNumOfMens(Integer.parseInt(numOfMens));
		bookHotelUser.setNumOfWomens(Integer.parseInt(numOfWomens));
		bookHotelUser.setNumOfChidrens(Integer.parseInt(numOfChildren));
		
		
		System.out.println("book Hotel4");
		
		DBConnection db = new DBConnection();
		
    	db.sendMessageByUserName(messageToBuyer);
    	System.out.println("book Hotel5");
    	
    	DBConnection db2 = new DBConnection();
    	
    	db2.bookHotel(bookHotelUser,messageToHotelOwner);
    	
		//List<String> categories =  itemService.populateAllCategories(); 
    	//db.closeDbConnection();
		System.out.println("*************************************book Hotel");
        
    }
    
    @RequestMapping("/updateHotelBookingDetails")
    public void updateHotelBooking( @RequestParam(value = "receiverUserName", required = false) String receiverUserName,
			@RequestParam(value = "userName", required = false) String userName,
			@RequestParam(value = "messageHeader", required = false) String messageHeder,
			@RequestParam(value = "messageContent", required = false) String messageContent,
			@RequestParam(value = "hotelID", required = false) String hotelID,
			@RequestParam(value = "dueDate", required = false) String dueDate,
			@RequestParam(value = "numOfSingleRooms", required = false) String numOfSingleRooms,
			@RequestParam(value = "numOfDoubleRooms", required = false) String numOfDoubleRooms,
			@RequestParam(value = "numOfTripleRooms", required = false) String numOfTripleRooms,
			@RequestParam(value = "priceOfSingleRoom", required = false) String priceOfSingleRoom,
			@RequestParam(value = "priceOfDoubleRoom", required = false) String priceOfDoubleRoom,
			@RequestParam(value = "priceOfTripleRoom", required = false) String priceOfTripleRoom) {
		
		System.out.println("update Hotel Details");
		long postedDate = System.currentTimeMillis();
		
		long dueDateLong = 0;
		
		DateFormat formatter = new SimpleDateFormat("E MMM dd yyyy HH:mm:ss");
		
		Date date;
		
		String dateSubString =  dueDate.substring(0,24); 
		
		
		try {
			date = (Date)formatter.parse(dateSubString);
			dueDateLong = date.getTime();
			
		} catch (ParseException e) {e.printStackTrace();}
		
		
		
		UpdateHotel updateHotel = new UpdateHotel();
		
		updateHotel.setHotelID(Integer.parseInt(hotelID));
		updateHotel.setDueDate(dueDateLong);
		updateHotel.setPostedDate(postedDate);
		updateHotel.setNumberOfSingleRooms(Integer.parseInt(numOfSingleRooms));
		updateHotel.setNumberOfDoubleRooms(Integer.parseInt(numOfDoubleRooms));
		updateHotel.setNumberOfTripleRooms(Integer.parseInt(numOfTripleRooms));
		updateHotel.setPriceOfSingleRooms(Integer.parseInt(priceOfSingleRoom));
		updateHotel.setPriceOfDoubleRooms(Integer.parseInt(priceOfDoubleRoom));
		updateHotel.setPriceOfTripleRooms(Integer.parseInt(priceOfTripleRoom));
		
		
		
		Message message = new Message();
		message.setRecieverUserName(receiverUserName);
		message.setUserName(userName);
		message.setMessageHeder(messageHeder);
		message.setMessageContent(messageContent);
		message.setPostedDate(postedDate);
		
		DBConnection db = new DBConnection();
    	db.updateHotelDetails(updateHotel,message);
		
		
		//List<String> categories =  itemService.populateAllCategories(); 
    	//db.closeDbConnection();
		System.out.println("*************************************book Hotel");
        
    }
    
    
    
    
}
