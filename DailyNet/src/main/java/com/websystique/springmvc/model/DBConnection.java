package com.websystique.springmvc.model;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;



public class DBConnection {
	   
	   static final String JDBC_DRIVER = "com.mysql.jdbc.Driver";  
	   static final String DB_URL = "jdbc:mysql://localhost:3306/dnet";


	   static final String USER = "root";
	   static final String PASS = "creol8bladnok";
	   public Connection conn = null;

	   
	   
	   public  DBConnection(){
	   try{
		      
		      Class.forName("com.mysql.jdbc.Driver");
		      System.out.println("Connecting to a selected database...");
		      conn = DriverManager.getConnection(DB_URL, USER, PASS);
		      System.out.println("Connected database successfully...");

	   }catch(Exception e){
   	      e.printStackTrace();
	   }
	   
	   
	   }

	   public void closeDbConnection(){
		   
		   try{
		         if(conn!=null)
		            conn.close();
		      }catch(SQLException se){
		         se.printStackTrace();
		      }
	   }

	   
	   public  void createNews(News news){
		   
		   	
		   System.out.println("create news");
		   Statement stmt = null;
	   try{
		  	      
	      //STEP 4: Execute a query
	      System.out.println("Inserting records into the table...");
	      stmt = conn.createStatement();
	      
	      String paragraph1= news.getParagraph1();
	      
	      paragraph1= paragraph1.replaceAll("'", "\'");
	      paragraph1= paragraph1.replaceAll("\"", "\\\"");
	      
	      String paragraph2=news.getParagraph2();
	      paragraph2= paragraph2.replaceAll("'", "\'");
	      paragraph2= paragraph2.replaceAll("\"", "\\\"");
	      
	      String image = news.getImageName();
	      image= image.replaceAll("'", "\'");
	      image= image.replaceAll("\"", "\\\"");
	      
	      
	      String header = news.getHeader();
	      header= header.replaceAll("'", "\'");
	      header= header.replaceAll("\"", "\\\"");
	    		  
	    	
	      String sql = "INSERT INTO NEWS (paragraph1,paragraph2,image,current,header) " +
	                   "VALUES ('"+paragraph1+"', '"+paragraph2+"', '"+image+"', "+news.getDate()+",'"+header +"')";
	      System.out.println(sql);
	      stmt.executeUpdate(sql);
	      System.out.println("Inserted records into the table...");

	   }catch(SQLException se){
	      	      se.printStackTrace();
	   }catch(Exception e){
	      	      e.printStackTrace();
	   }finally{
	      //finally block used to close resources
	      try{
	         if(stmt!=null)
	            conn.close();
	      }catch(SQLException se){
	      }// do nothing
	      //end finally try
	   }//end try
	  
	}

	   public List<News> getAllLatestNews(){
			
		   System.out.println("vvvvvv");
		   List <News> list = new ArrayList<News>(); 
		   
		   Statement stmt = null;
		   Statement stmt2 = null;
		   try{

		      //STEP 4: Execute a query
		      System.out.println("Creating statement...");
		      stmt = conn.createStatement();
		      stmt2 = conn.createStatement();

		      String sql = "SELECT header , paragraph1,paragraph2, image  from NEWS where current in (select max(current) from NEWS)";
		      
		      String sql2 = "SELECT ID, image  from NEWS order by current desc LIMIT 7";
		      
		      
		      ResultSet rs = stmt.executeQuery(sql);
		      
		      ResultSet rs2 = stmt2.executeQuery(sql2);
		      
		      
		      System.out.println("statements");
		      //STEP 5: Extract data from result set
		      while(rs.next()){
		    	  
		         String header = rs.getString("header");
		         String paragraph1 = rs.getString("paragraph1");
		         String paragraph2 = rs.getString("paragraph2");
		         String image = rs.getString("image");
		         
		         News news = new News();
		         news.setHeader(header);
		         news.setParagraph1(paragraph1);
		         news.setParagraph2(paragraph2);
		         news.setImageName(image);
		      
		         
		         
		         List <String> images = new ArrayList<String>();
		         List <Integer> imagesIDs = new ArrayList<Integer>();
			        
		         
		         while(rs2.next()){
		        	 
		        	 images.add(rs2.getString("image"));
		        	 imagesIDs.add(rs2.getInt("ID"));
		         }
		         System.out.println("ID is printed");
		         news.setOtherNews(images);
		         news.setOtherIDs(imagesIDs);
		         
		         list.add(news);
		         
		      }
		      rs.close();
		   }catch(SQLException se){
		      //Handle errors for JDBC
		      se.printStackTrace();
		   }catch(Exception e){
		      //Handle errors for Class.forName
		      e.printStackTrace();
		   }finally{
		      //finally block used to close resources
		      try{
		         if(stmt!=null)
		            conn.close();
		      }catch(SQLException se){
		      }// do nothing
		      
		   }//end try
		   
	   
		   return list;
		   
	   }

	   public List<News> getSelectedtNews(int id){
			
		   System.out.println("vvvvvv");
		   List <News> list = new ArrayList<News>(); 
		   
		   Statement stmt = null;
		   Statement stmt2 = null;
		   try{

		      //STEP 4: Execute a query
		      System.out.println("Creating statement...");
		      stmt = conn.createStatement();
		      stmt2 = conn.createStatement();

		      String sql = "SELECT header , paragraph1,paragraph2, image  from NEWS where ID = "+id+"";
		      
		      String sql2 = "SELECT  ID,image  from NEWS where ID <> "+id+" order by current desc LIMIT 7";
		      
		      
		      ResultSet rs = stmt.executeQuery(sql);
		      
		      ResultSet rs2 = stmt2.executeQuery(sql2);
		      
		      
		      System.out.println("statements");
		      //STEP 5: Extract data from result set
		      while(rs.next()){
		    	  
		         String header = rs.getString("header");
		         String paragraph1 = rs.getString("paragraph1");
		         String paragraph2 = rs.getString("paragraph2");
		         String image = rs.getString("image");
		         
		         News news = new News();
		         news.setHeader(header);
		         news.setParagraph1(paragraph1);
		         news.setParagraph2(paragraph2);
		         news.setImageName(image);
		 
		         
		         List <String> images = new ArrayList<String>();
		         List <Integer> imagesIDs = new ArrayList<Integer>();
		        
		         while(rs2.next()){
		        	 
		        	 images.add(rs2.getString("image"));
		        	 imagesIDs.add(rs2.getInt("ID"));
		         }
		         
		         news.setOtherNews(images);
		         news.setOtherIDs(imagesIDs);
		         list.add(news);
		         
		      }
		      rs.close();
		   }catch(SQLException se){
		      //Handle errors for JDBC
		      se.printStackTrace();
		   }catch(Exception e){
		      //Handle errors for Class.forName
		      e.printStackTrace();
		   }finally{
		      //finally block used to close resources
		      try{
		         if(stmt!=null)
		            conn.close();
		      }catch(SQLException se){
		      }// do nothing
		      
		   }//end try
		   
	   System.out.println("values are fetched");
		   return list;
		   
	   }

	   
	   public  void createAd(Advertisment advertisment) {
			  
			 System.out.println("create add");
		   Statement stmt = null;
	   try{
		  	      
	      //STEP 4: Execute a query
	      System.out.println("Inserting records into the table...");
	      stmt = conn.createStatement();
	     
	      
	      String moreDiscription = advertisment.getMoreDescription();
	      moreDiscription= moreDiscription.replaceAll("'", "\'");
	      System.out.println(moreDiscription);
	      
	      moreDiscription= moreDiscription.replaceAll("\"", "\\\"");
	      System.out.println(moreDiscription);	
	      
	      
	      String image = advertisment.getImage();
	      image= image.replaceAll("'", "\'");
	      image= image.replaceAll("\"", "\\\"");
	    		  
	      
	      String category = advertisment.getCategory();
	      category= category.replaceAll("'", "\'");
	      category= category.replaceAll("\"", "\\\"");
	    		  
	      
	      String header = advertisment.getHeader();
	      header= header.replaceAll("'", "\'");
	      header= header.replaceAll("\"", "\\\"");
	    		  
	      
	      String city = advertisment.getCity();
	      city= city.replaceAll("'", "\'");
	      city= city.replaceAll("\"", "\\\"");
	      
	      List <String> otherImages = new ArrayList<String>();
	      
	      for(String str:advertisment.getOtherImages()){
	    	  
	    	  otherImages.add(str);
	      }
	    		  
	      
	      String sql = "INSERT INTO ADVERTISMENT (moreDescription,image,category,position,header,city,lan,lat, otherImage1, otherImage2, otherImage3,postedDate,mobile_number, email_address,description,userId) " +
	                   "VALUES ('"+moreDiscription+"', '"+image+"', '"+category+"', "+advertisment.getPosition()+",'"+header + "','"+city+"','"+advertisment.getLan()+"','"+advertisment.getLat()+"','"+otherImages.get(1)+"','"+otherImages.get(2)+"','"+otherImages.get(3)+ "',"+advertisment.getPostedDate()+",'"+advertisment.getMobile()+"','"+advertisment.getEmail()+"','"+advertisment.getDescription()+"', (select ID from USER where user_name = '"+advertisment.getUserName()+"')) ";
	      System.out.println(sql);
	      stmt.executeUpdate(sql);
	      
	      String sqlTags = "INSERT INTO TAGS (tag_id ,tag_name) values ";
	      String sqlTagsCon = "";
	      
	      String []tagArray = advertisment.getTagArray();
	      
	      for(int i=0; i < tagArray.length; i++){
	    	  
	    	  if(tagArray[i] != null){
	    		  
	    		  sqlTagsCon = sqlTagsCon +"((SELECT MAX(ID) from ADVERTISMENT),'"+ tagArray[i]+"' )";
	    		  
	    		  if(i+1 < tagArray.length && tagArray[i+1]!= null){
	    			  
	    			  sqlTagsCon = sqlTagsCon + " , ";
	    		  }
	    	      	  
	    	  }
	      }
	      	
	      sqlTags = sqlTags + sqlTagsCon; 
	      
	      System.out.println(sqlTags);
	      stmt.executeUpdate(sqlTags);
	      

	      
	      System.out.println("Inserted records into the tables");

	   }catch(SQLException se){
	      	      se.printStackTrace();
	   }catch(Exception e){
	      	      e.printStackTrace();
	   }finally{
	      //finally block used to close resources
	      try{
	         if(stmt!=null)
	            conn.close();
	      }catch(SQLException se){
	      }// do nothing
	      //end finally try
	   }//end try
	  
	}
	   
	   public List<Advertisment> getAllAdsByCategory(String category){
			
		   List <Advertisment> list = new ArrayList<Advertisment>(); 
		   
		   Statement stmt = null;
		   try{

		      stmt = conn.createStatement();

		      String sql = "SELECT *  from ADVERTISMENT WHERE active = 'Y' and category like '"+category + "'";
		      ResultSet rs = stmt.executeQuery(sql);

		      while(rs.next()){
		    	 
		         
		         Advertisment advertisment = new Advertisment();
		         
		         
		         advertisment.setCity(rs.getString("city"));
	        	 advertisment.setPostedDate(rs.getLong("postedDate"));
	        	 advertisment.setViewCount(rs.getInt("viewCount"));
	        	 advertisment.setPrice(rs.getString("price"));
	        	 
		         advertisment.setHeader(rs.getString("header"));
		         advertisment.setDescription(rs.getString("description"));
		         advertisment.setImage(rs.getString("image"));
		         advertisment.setId(rs.getInt("ID"));
		         advertisment.setCategory(rs.getString("category"));
		         
		         Date date=new Date(advertisment.getPostedDate());
		         advertisment.setStringDate(date.toString());
		         String details = "";
		         
		         if(advertisment.getPrice() != null){
		        	 
		        	 details = " PRICE : Rs."+  advertisment.getPrice()+"   ";
		         }
		         
		         
		         if (advertisment.getCity() != null && advertisment.getCity() != "/= Only "){
		        	 
		        	 details = details+ "   /        CITY : "+  advertisment.getCity();
		         }
		         advertisment.setDetails(details);
		         
		         
		         
		         list.add(advertisment);
		         
		      }
		      System.out.println(222222);
		      rs.close();
		   }catch(SQLException se){
		      //Handle errors for JDBC
		      se.printStackTrace();
		   }catch(Exception e){
		      //Handle errors for Class.forName
		      e.printStackTrace();
		   }finally{
		      //finally block used to close resources
		      try{
		         if(stmt!=null)
		            conn.close();
		      }catch(SQLException se){
		      }// do nothing
		      
		   }//end try
		   
	   
		   return list;
		   
	   }

	   public List<Advertisment> getSpecificAd(int id){
			
		   System.out.println("specific ad");
		   List <Advertisment> list = new ArrayList<Advertisment>(); 
		   
		   Statement stmt = null;
		   Statement stmt2 = null;
		   try{

		      stmt = conn.createStatement();

		      stmt2 = conn.createStatement();

		      System.out.println("specific ad  0");
		      
		      String sql = "SELECT lan,lat,image,otherImage1, otherImage2, otherImage3 , moreDescription, email_address , mobile_number,header,description , city,category, (select user_name from USER where ID =  userId) as userName  from ADVERTISMENT where active = 'Y' and  ID = "+id+"";
		      
		      String sql2 = "SELECT tag_name  from TAGS where tag_id = "+id+"";
		      
		      
		      ResultSet rs = stmt.executeQuery(sql);
		      
		      ResultSet rs2 = stmt2.executeQuery(sql2);
		     
		      while(rs.next()){
		    	  
		    	 System.out.println("specific ad  1");
		    	  
		         String moreDescription = rs.getString("moreDescription");
		         String image = rs.getString("image");
		         String otherImage1 = rs.getString("otherImage1");
		         String otherImage2 = rs.getString("otherImage2");
		         String otherImage3 = rs.getString("otherImage3");
		         String mobile_number = rs.getString("mobile_number");
		         String email_address = rs.getString("email_address");
		         String lan = rs.getString("lan");
		         String lat = rs.getString("lat");
		         String header = rs.getString("header");
		         String discription = rs.getString("description");
		         String city = rs.getString("city");
		         String category = rs.getString("category");
		         String userName = rs.getString("userName");
		         
		         
		         System.out.println("specific ad  2");
		         
		         Advertisment advertisment  = new Advertisment ();
		         advertisment.setMoreDescription(moreDescription);
		         advertisment.setImage(image);
		         advertisment.setMobile(mobile_number);
		         advertisment.setEmail(email_address);
		         advertisment.setHeader(header);
		         advertisment.setUserName(userName);
		         
		         
		         System.out.println("specific ad 3");
		         List <String> other = new ArrayList<String>();
		         other.add(otherImage1);
		         other.add(otherImage2);
		         other.add(otherImage3);
		         
		         advertisment.setOtherImages(other);
		         advertisment.setLan(lan);
		         advertisment.setLat(lat);
		         advertisment.setDlan(Double.parseDouble(lan));
		         advertisment.setDlat(Double.parseDouble(lat));
		         advertisment.setId(id);
		         advertisment.setDescription(discription);
		         advertisment.setCity(city);
		         advertisment.setCategory(category);

		         
		         System.out.println("specific ad 4");
		         
		         List<String> tags = new ArrayList<String>();
		         
		         while(rs2.next()){
		        	 
		        	 tags.add(rs2.getString("tag_name"));
		        	 
		         }
		         
		         System.out.println("all fetched");
		         
		         advertisment.setTags(tags);
		         
		         System.out.println("11111111111");
		         
		         list.add(advertisment);
		         
		      }
		      rs.close();
		      rs2.close();
		   }catch(SQLException se){
		      //Handle errors for JDBC
		      se.printStackTrace();
		   }catch(Exception e){
		      //Handle errors for Class.forName
		      e.printStackTrace();
		   }finally{
		      //finally block used to close resources
		      try{
		         if(stmt!=null)
		            conn.close();
		      }catch(SQLException se){
		      }// do nothing
		      
		   }//end try
		   
		   System.out.println("specific ad 5");
		   return list;
		   
	   }
	   
	   public List<Advertisment> getSearchAd(String id, String district){
			
		   List <Advertisment> list = new ArrayList<Advertisment>(); 
		   
		   Statement stmt = null;
		   String city;
		   try{

		     
				if(district.equals("Search in Any Where")){
				   	city = ""; 
				}else{
					city = district;
				}
				
				if(id.equals("undefined")){
				   	id = ""; 
				}else{
					id = id;
				}
			  
				stmt = conn.createStatement();
  
				String sql = "SELECT ID,header , description, image  from ADVERTISMENT  WHERE active = 'Y' and ID in( SELECT tag_id from TAGS where tag_name like  '%"+id + "%') AND city like '%"+city+"%' ";
				ResultSet rs = stmt.executeQuery(sql);
		      
				while(rs.next()){
		    	  
		         String header = rs.getString("header");
		         String description = rs.getString("description");
		         String image = rs.getString("image");
		         int tableId = rs.getInt("ID");
		         
		         
		         Advertisment advertisment = new Advertisment();
		         advertisment.setHeader(header);
		         advertisment.setDescription(description);
		         advertisment.setImage(image);
		         advertisment.setId(tableId);
		         
		         list.add(advertisment);
		         
		      }
		      rs.close();
		   }catch(SQLException se){
		      //Handle errors for JDBC
		      se.printStackTrace();
		   }catch(Exception e){
		      //Handle errors for Class.forName
		      e.printStackTrace();
		   }finally{
		      //finally block used to close resources
		      try{
		         if(stmt!=null)
		            conn.close();
		      }catch(SQLException se){
		      }// do nothing
		      
		   }//end try
		   
	   
		   return list;
		   
	   }

	   public List<Advertisment> getSelectedtAds(Advertisment ad){
			
		   List <Advertisment> list = new ArrayList<Advertisment>(); 
		   
		   Statement stmt = null;
		   try{

			   stmt = conn.createStatement();

			   String sql = "SELECT * from ADVERTISMENT  WHERE active = 'Y' and ID in (SELECT tag_id from TAGS where tag_name ='"+ad.getSearchTag()+"')";
		      
			   ResultSet rs = stmt.executeQuery(sql);

			   while(rs.next()){
		    	  
		    	 int id  = rs.getInt("ID");
		         String header = rs.getString("header");
		         String category = rs.getString("Category");
		         String description = rs.getString("description");
		         String image = rs.getString("image");
		         String city = rs.getString("city");
		         
		         Advertisment advertisment = new Advertisment();
		         
		         advertisment.setId(id);
		         advertisment.setCity(city);
		         advertisment.setHeader(header);
		         advertisment.setCategory(category);
		         advertisment.setDescription(description);
		         advertisment.setImage(image);
		         list.add(advertisment);
		         
		      }
		      rs.close();
		   }catch(SQLException se){
		      //Handle errors for JDBC
		      se.printStackTrace();
		   }catch(Exception e){
		      //Handle errors for Class.forName
		      e.printStackTrace();
		   }finally{
		      //finally block used to close resources
		      try{
		         if(stmt!=null)
		            conn.close();
		      }catch(SQLException se){
		      }// do nothing
		      
		   }//end try
		
		   return list;
		   
	   }

	   public List<Advertisment> getFilterAds(String category, String district, int less, int more){
			
			List <Advertisment> list = new ArrayList<Advertisment>(); 
		   
		   	Statement stmt = null;
		   	
			try{

				stmt = conn.createStatement();
                
				String sql = "SELECT * FROM ADVERTISMENT WHERE active = 'Y' and category like '"+category+"' and city like '"+district+"' and price between "+more+" and "+less+"";

		      	ResultSet rs = stmt.executeQuery(sql);
		      
				while(rs.next()){
		    	  
		         		Advertisment advertisment = new Advertisment();
		         		advertisment.setHeader(rs.getString("header"));
		         		advertisment.setDescription(rs.getString("description"));
		         		advertisment.setImage(rs.getString("image"));
		         		advertisment.setId(rs.getInt("ID"));
		         		advertisment.setCity(rs.getString("city"));
		         		advertisment.setPostedDate(rs.getLong("postedDate"));
		        	 	advertisment.setViewCount(rs.getInt("viewCount"));
		        	 	advertisment.setPrice(rs.getString("price"));

		         		list.add(advertisment);
		         
		      		}

		      		rs.close();

		   	}catch(SQLException se){
		      		se.printStackTrace();
		   	}catch(Exception e){
		      		e.printStackTrace();
		   	}finally{
		      		try{
		         		if(stmt!=null)
		            			conn.close();
		      		}catch(SQLException se){
		      	}
		      
		   }
		   return list;
		   
	   }

	   
	   public  void createUser(User user) {
	  
		   System.out.println("create user");
		   Statement stmt = null;
	   try{
		  	      
	      //STEP 4: Execute a query
	      System.out.println("Inserting records into the user table...");
	      stmt = conn.createStatement();
	      
	      String userName = user.getUserName();
	      String password = user.getPassword_hash(); 
	      String emailOrNumber = user.getEmailOrNumber(); 
	      
	      String sql = "INSERT INTO USER(user_name,emailOrPassword,password) " +
	    		  "VALUES ('"+userName+"', '"+emailOrNumber+"', '"+password+"')";
	      stmt.executeUpdate(sql);
	      System.out.println("Inserted records into the table...");

	   }catch(SQLException se){
	      	      se.printStackTrace();
	   }catch(Exception e){
	      	      e.printStackTrace();
	   }finally{
	      //finally block used to close resources
	      try{
	         if(stmt!=null)
	            conn.close();
	      }catch(SQLException se){
	      }// do nothing
	      //end finally try
	   }//end try
	  
	}
	   
	   public boolean login(User user) {

		   Statement stmt = null;
		   int count = 0;
		   try{

		      //STEP 4: Execute a query
		      System.out.println("Creating statement...");
		      stmt = conn.createStatement();

		      String sql = "SELECT count(*) as count_log from USER where user_name = '"+user.getUserName()+"' and password = '"+user.getPassword_hash()+"'  ";
		      ResultSet rs = stmt.executeQuery(sql);
		      //STEP 5: Extract data from result set
		      while(rs.next()){
		    	 
		         count = rs.getInt("count_log");
		         
		      }
		      rs.close();
		   }catch(SQLException se){
		      //Handle errors for JDBC
		      se.printStackTrace();
		   }catch(Exception e){
		      //Handle errors for Class.forName
		      e.printStackTrace();
		   }finally{
		      //finally block used to close resources
		      try{
		         if(stmt!=null)
		            conn.close();
		      }catch(SQLException se){
		      }// do nothing
		      
		   }//end try
		   
		   
		   if (count == 1){
		   return true;
		   }else{
		   
		   return false;
		   }
	   }

	   public List<User> getAllUsers(){
	
		   List <User> list = new ArrayList<User>(); 
		   
		   Statement stmt = null;
		   try{

		      //STEP 4: Execute a query
		      System.out.println("Creating statement...");
		      stmt = conn.createStatement();

		      String sql = "SELECT user_name, description, password from USER";
		      ResultSet rs = stmt.executeQuery(sql);
		      //STEP 5: Extract data from result set
		      while(rs.next()){
		    	  
		         String name = rs.getString("user_name");
		         String description = rs.getString("description");

		         User user = new User();
		         user.setUserName(name);
		         user.setDescription(description);
		         
		         list.add(user);
		         //Display values
		         System.out.print(name);
		         System.out.print(description);
		      }
		      rs.close();
		   }catch(SQLException se){
		      //Handle errors for JDBC
		      se.printStackTrace();
		   }catch(Exception e){
		      //Handle errors for Class.forName
		      e.printStackTrace();
		   }finally{
		      //finally block used to close resources
		      try{
		         if(stmt!=null)
		            conn.close();
		      }catch(SQLException se){
		      }// do nothing
		      
		   }//end try
		   
	   
		   return list;
		   
	   }
	   

	   public  void createVideo(Video video) {
			  
			 System.out.println("create vedio");
		   Statement stmt = null;
	   try{
		  	      
	      //STEP 4: Execute a query
	      System.out.println("Inserting records into the table...");
	      stmt = conn.createStatement();
	      
	      
	      String image = video.getVideoName();
	    		  
	      
	      String header = video.getHeader();
	      header= header.replaceAll("'", "\'");
	      header= header.replaceAll("\"", "\\\"");
	    		  
	      
	      
	      String sql = "INSERT INTO VIDEO (header,vedioImage,postedDate,videoImagePreview) " +
	                   "VALUES ('"+header+"', '"+image+"', "+video.getDate()+", '"+video.getVideoImageName()+"')";
	      System.out.println(sql);
	      stmt.executeUpdate(sql);
	      System.out.println("Inserted records into the table...");

	   }catch(SQLException se){
	      	      se.printStackTrace();
	   }catch(Exception e){
	      	      e.printStackTrace();
	   }finally{
	      //finally block used to close resources
	      try{
	         if(stmt!=null)
	            conn.close();
	      }catch(SQLException se){
	      }// do nothing
	      //end finally try
	   }//end try
	  
	}
	   
	   public List<Video> getAllLatestVedios(String name){
			
		   System.out.println("vedios");
		   List <Video> list = new ArrayList<Video>(); 
		   
		   Statement stmt = null;
		   Statement stmt2 = null;
		   Statement stmt3 = null;
		   Statement stmt4 = null;
		   Statement stmt5 = null;
		   String sql2;
		   String sql;
		   try{

		      //STEP 4: Execute a query
		      System.out.println("Creating statement...");
		      stmt = conn.createStatement();
		      stmt2 = conn.createStatement();
		      stmt3 = conn.createStatement();
		      stmt4 = conn.createStatement();
		      stmt5 = conn.createStatement();
		      
		      
		      if(name.equals("empty")){
		    	  sql = "SELECT header , vedioImage  from VIDEO where postedDate in (select max(postedDate) from VIDEO)";
		      }else{
		    	  sql = "SELECT header , vedioImage  from VIDEO where name = '"+name+"'";
				  
		      }
		      
		      if(name.equals("empty")){

			      sql2 = "SELECT vedioImage, header, ID, videoImagePreview  from VIDEO where postedDate not in (select max(postedDate) from VIDEO)   order by postedDate desc";
			  }else{
			      sql2 = "SELECT vedioImage, header, ID, videoImagePreview  from VIDEO where name <> '"+name+"'   order by postedDate desc";
					        
			  }
		      
		      String sql3 = "SELECT ID,header,postedDate,city,viewCount,image,price,category FROM ADVERTISMENT WHERE active = 'Y' ORDER BY RAND() LIMIT 1";
		      
		      String sql5 = "SELECT category,count(category) as countCategory from ADVERTISMENT WHERE active = 'Y' group by (category);";
		      
		      ResultSet rs = stmt.executeQuery(sql);
		      
		      ResultSet rs2 = stmt2.executeQuery(sql2);
		      
		      ResultSet rs3 = stmt3.executeQuery(sql3);
		      
		      ResultSet rs5 = stmt5.executeQuery(sql5);
		      
		      
		      System.out.println("vedio statements");
		      //STEP 5: Extract data from result set
		      while(rs.next()){
		    	  
		         String header = rs.getString("header");
		         String vedioImage = rs.getString("vedioImage");
		         
		         Video vedio = new Video();
		         vedio.setHeader(header);
		         vedio.setVideoName(vedioImage);
		         
		      
		         
		         
		         List <Video> images = new ArrayList<Video>();
		         List <String> otherVideosPlay = new ArrayList<String>();
		         List <String> otherVideosName = new ArrayList<String>();
		         
		         List <Integer> imagesIDs = new ArrayList<Integer>();
			        
		         
		         while(rs2.next()){
		        	 Video oVideo = new Video();
		        	 oVideo.setVedioId(rs2.getInt("ID"));
		        	 oVideo.setHeader(rs2.getString("header"));
		        	 oVideo.setVideoName(rs2.getString("vedioImage"));
		        	 oVideo.setVideoImageName(rs2.getString("videoImagePreview"));
		        	 images.add(oVideo);
//		        	 images.add()
//		        	 images.add(rs2.getString("videoImagePreview"));
		        	 imagesIDs.add(rs2.getInt("ID"));

		         }
		         System.out.println("ID is printed");
		         vedio.setOtherVideos(images);
		         vedio.setOtherIDs(imagesIDs);
		         vedio.setOtherVideosPlay(otherVideosPlay);
		         vedio.setOtherVideosName(otherVideosName);
		         
		         
			      
		         
		         Advertisment advertisment = new Advertisment();
		         
		         while(rs3.next()){
		        	 
		        	 advertisment.setId(rs3.getInt("ID"));
		        	 advertisment.setImage(rs3.getString("image"));
		        	 advertisment.setHeader(rs3.getString("header"));
		        	 advertisment.setCity(rs3.getString("city"));
		        	 advertisment.setPostedDate(rs3.getLong("postedDate"));
		        	 advertisment.setViewCount(rs3.getInt("viewCount"));
		        	 advertisment.setPrice(rs3.getString("price"));
		        	 advertisment.setCategory(rs3.getString("category"));
		         }
		         
		         
		         String sql4 = "Update ADVERTISMENT set viewCount = viewCount + 1 where ID = "+advertisment.getId()+"";
		         
		         stmt4.execute(sql4);
		         
		         Date date=new Date(advertisment.getPostedDate());
		         System.out.println(date);
		         advertisment.setStringDate(date.toString());
		         String details = "";
		         if(advertisment.getPrice() != null){
		        	 
		        	 details = " PRICE : Rs."+  advertisment.getPrice()+"   ";
		         }
		         
		         
		         if (advertisment.getCity() != null && advertisment.getCity() != ""){
		        	 
		        	 details = details+ "       CITY : "+  advertisment.getCity();
		         }
		         advertisment.setDetails(details);
		         vedio.setRandomAd(advertisment);
		         System.out.println("all done");
		         
		         
		         
		         AllAds allAds = new AllAds();
		         
		         
		         
               while(rs5.next()){
		        	 
            	   
            	     String category = rs5.getString("category");
            	     int count = rs5.getInt("countCategory");
            	     
            	     if (category.equals("ELECTRONICS")){
            	    	 
            	    	 allAds.setElectronics(count);
            	     }
            	     else if (category.equals("HOUSE AND PROPERTY")){
            	    	 
            	    	 allAds.setHouseAndProperty(count);
            	     }
            	     else if (category.equals("VEHICLES")){
            	    	 
            	    	 allAds.setVehicles(count);
            	     }
            	     else if (category.equals("FASHION AND BEAUTY")){
	 
            	    	 	allAds.setFahionAndBeauty(count);
            	     }
            	     else if (category.equals("OTHER")){
	 
            	    	 allAds.setOther(count);
            	     }
            	     else if (category.equals("HOTELS")){
	 
            	    	 allAds.setHotels(count);
            	     }
            	     
		        	 
		         }
 
                 vedio.setAllAds(allAds);
		         
		         list.add(vedio);
		         
		         
		         
		         
		      }
		      rs.close();
		   }catch(SQLException se){
		      //Handle errors for JDBC
		      se.printStackTrace();
		   }catch(Exception e){
		      //Handle errors for Class.forName
		      e.printStackTrace();
		   }finally{
		      //finally block used to close resources
		      try{
		         if(stmt!=null)
		            conn.close();
		      }catch(SQLException se){
		      }// do nothing
		      
		   }//end try
		   
	   
		   return list;
		   
	   }

	   public List<Video> getHomePageContent(String name){
			
		   System.out.println("vedios");
		   List <Video> list = new ArrayList<Video>(); 
		   
		   Statement stmt = null;
		   Statement stmt2 = null;
		   Statement stmt3 = null;
		   Statement stmt4 = null;
		   Statement stmt5 = null;
		   String sql2;
		   String sql;
		   try{

		      //STEP 4: Execute a query
		      System.out.println("Creating statement...");
		      stmt = conn.createStatement();
		      stmt2 = conn.createStatement();
		      stmt3 = conn.createStatement();
		      stmt4 = conn.createStatement();
		      stmt5 = conn.createStatement();
		      
		      
		      if(name.equals("empty")){
		    	  sql = "SELECT header , vedioImage  from VIDEO where postedDate in (select max(postedDate) from VIDEO)";
		      }else{
		    	  sql = "SELECT header , vedioImage  from VIDEO where name = '"+name+"'";
				  
		      }
		      
		      if(name.equals("empty")){

			      sql2 = "SELECT ID, videoImagePreview  from VIDEO where postedDate not in (select max(postedDate) from VIDEO)   order by postedDate desc";
			  }else{
			      sql2 = "SELECT ID, videoImagePreview  from VIDEO where name <> '"+name+"'   order by postedDate desc";
					        
			  }
		      
		      String sql3 = "SELECT ID,header,postedDate,city,viewCount,image,price FROM ADVERTISMENT WHERE active = 'Y' ORDER BY RAND() LIMIT 1";
		      
		      String sql5 = "SELECT category,count(category) as countCategory from ADVERTISMENT WHERE active = 'Y' group by (category);";
		      
		      ResultSet rs = stmt.executeQuery(sql);
		      
		      ResultSet rs2 = stmt2.executeQuery(sql2);
		      
		      ResultSet rs3 = stmt3.executeQuery(sql3);
		      
		      ResultSet rs5 = stmt5.executeQuery(sql5);
		      
		      
		      System.out.println("vedio statements");
		      //STEP 5: Extract data from result set
		      while(rs.next()){
		    	  
		         String header = rs.getString("header");
		         String vedioImage = rs.getString("vedioImage");
		         
		         Video vedio = new Video();
		         vedio.setHeader(header);
		         vedio.setVideoName(vedioImage);
		         
		      
		         
		         
		         List <Video> images = new ArrayList<Video>();
		         List <String> otherVideosPlay = new ArrayList<String>();
		         List <String> otherVideosName = new ArrayList<String>();
		         
		         List <Integer> imagesIDs = new ArrayList<Integer>();
			        
		         
		         while(rs2.next()){
		        	 Video oVideo = new Video();
		        	 oVideo.setVedioId(rs2.getInt("ID"));
		        	 oVideo.setVideoImageName(rs2.getString("videoImagePreview"));
		        	 images.add(oVideo);
//		        	 images.add(rs2.getString("videoImagePreview"));
		        	 imagesIDs.add(rs2.getInt("ID"));

		         }
		         System.out.println("ID is printed");
		         vedio.setOtherVideos(images);
		         vedio.setOtherIDs(imagesIDs);
		         vedio.setOtherVideosPlay(otherVideosPlay);
		         vedio.setOtherVideosName(otherVideosName);
		         
		         
			      
		         
		         
		         List <Advertisment> randomAdvertisments = new ArrayList<Advertisment>();
		         
		         
			     
		         
		         while(rs3.next()){
		        	 
		        	 Advertisment advertisment = new Advertisment();
		        	 advertisment.setId(rs3.getInt("ID"));
		        	 advertisment.setImage(rs3.getString("image"));
		        	 advertisment.setHeader(rs3.getString("header"));
		        	 advertisment.setCity(rs3.getString("city"));
		        	 advertisment.setPostedDate(rs3.getLong("postedDate"));
		        	 advertisment.setViewCount(rs3.getInt("viewCount"));
		        	 advertisment.setPrice(rs3.getString("price"));
		        	 
		        	 randomAdvertisments.add(advertisment);
		         }
		         
		         String sql4 = ""; 
		         for (Advertisment advertisment: randomAdvertisments){
		          sql4 = "Update ADVERTISMENT set viewCount = viewCount + 1 where ID = "+advertisment.getId()+"";
		          stmt4.execute(sql4);
		          
		          Date date=new Date(advertisment.getPostedDate());
			         System.out.println(date);
			         advertisment.setStringDate(date.toString());
			         String details = "";
			         if(advertisment.getPrice() != null){
			        	 
			        	 details = " PRICE : Rs."+  advertisment.getPrice()+"   ";
			         }
			         
			         
			         if (advertisment.getCity() != null && advertisment.getCity() != ""){
			        	 
			        	 details = details+ "       CITY : "+  advertisment.getCity();
			         }
			         advertisment.setDetails(details);
			        
		          
		         }
		        
		         
		          //vedio.setRandomAd(advertisment);
		         vedio.setRandomAdvertisments(randomAdvertisments);
		         
		         System.out.println("all done");
		         
		         
		         
		         AllAds allAds = new AllAds();
		         
		         
		         
               while(rs5.next()){
		        	 
            	   
            	     String category = rs5.getString("category");
            	     int count = rs5.getInt("countCategory");
            	     
            	     if (category.equals("ELECTRONICS")){
            	    	 
            	    	 allAds.setElectronics(count);
            	     }
            	     else if (category.equals("HOUSE AND PROPERTY")){
            	    	 
            	    	 allAds.setHouseAndProperty(count);
            	     }
            	     else if (category.equals("VEHICLES")){
            	    	 
            	    	 allAds.setVehicles(count);
            	     }
            	     else if (category.equals("FASHION AND BEAUTY")){
	 
            	    	 	allAds.setFahionAndBeauty(count);
            	     }
            	     else if (category.equals("OTHER")){
	 
            	    	 allAds.setOther(count);
            	     }
            	     else if (category.equals("HOTELS")){
	 
            	    	 allAds.setHotels(count);
            	     }
            	     
		        	 
		         }
 
                 vedio.setAllAds(allAds);
		         
		         list.add(vedio);
		         
		         
		         
		         
		      }
		      rs.close();
		   }catch(SQLException se){
		      //Handle errors for JDBC
		      se.printStackTrace();
		   }catch(Exception e){
		      //Handle errors for Class.forName
		      e.printStackTrace();
		   }finally{
		      //finally block used to close resources
		      try{
		         if(stmt!=null)
		            conn.close();
		      }catch(SQLException se){
		      }// do nothing
		      
		   }//end try
		   
	   
		   return list;
		   
	   }

	   public List<Video> getOtherVedios(int id){
			
		   System.out.println("vedios");
		   List <Video> list = new ArrayList<Video>(); 
		   
		   Statement stmt = null;
		   Statement stmt2 = null;
		   Statement stmt3 = null;
		   Statement stmt4 = null;
		   Statement stmt5 = null;
		   
		   try{

		      //STEP 4: Execute a query
		      System.out.println("Creating statement...");
		      stmt = conn.createStatement();
		      stmt2 = conn.createStatement();
		      stmt3 = conn.createStatement();
		      stmt4 = conn.createStatement();
		      stmt5 = conn.createStatement();
		      
		      
		      String sql = "SELECT header , vedioImage  from VIDEO where ID = "+id+"";
		      
		      String sql2 = "SELECT ID, videoImagePreview  from VIDEO WHERE ID <> "+id+" order by postedDate desc LIMIT 5";
		      
              String sql3 = "SELECT ID,header,postedDate,city,viewCount,image,price FROM ADVERTISMENT ORDER BY RAND() LIMIT 1";
		      
		      String sql5 = "SELECT category,count(category) as countCategory from ADVERTISMENT group by (category);";
		   
		      
		      
		      ResultSet rs = stmt.executeQuery(sql);
		      
		      ResultSet rs2 = stmt2.executeQuery(sql2);
		      
		      ResultSet rs3 = stmt3.executeQuery(sql3);
		      
		      ResultSet rs5 = stmt5.executeQuery(sql5);
		      
		      
		      System.out.println("vedio statements");
		      //STEP 5: Extract data from result set
		      while(rs.next()){
		    	  
		         String header = rs.getString("header");
		         String vedioImage = rs.getString("vedioImage");
		         
		         Video vedio = new Video();
		         vedio.setHeader(header);
		         vedio.setVideoName(vedioImage);
		      
		         
		         
		         List <Video> images = new ArrayList<Video>();
		         List <Integer> imagesIDs = new ArrayList<Integer>();
			        
		         
		         while(rs2.next()){
		        	 
		        	 Video oVideo = new Video();
		        	 oVideo.setVedioId(rs2.getInt("ID"));
		        	 oVideo.setVideoImageName(rs2.getString("videoImagePreview"));
		        	 images.add(oVideo);
//		        	 images.add(rs2.getString("videoImagePreview"));
		        	 imagesIDs.add(rs2.getInt("ID"));
		         }
		         System.out.println("ID is printed");
		         vedio.setOtherVideos(images);
		         vedio.setOtherIDs(imagesIDs);
		         
		         
		         
		         
		         
		         
                 Advertisment advertisment = new Advertisment();
		         
		         while(rs3.next()){
		        	 
		        	 advertisment.setId(rs3.getInt("ID"));
		        	 advertisment.setImage(rs3.getString("image"));
		        	 advertisment.setHeader(rs3.getString("header"));
		        	 advertisment.setCity(rs3.getString("city"));
		        	 advertisment.setPostedDate(rs3.getLong("postedDate"));
		        	 advertisment.setViewCount(rs3.getInt("viewCount"));
		        	 advertisment.setPrice(rs3.getString("price"));
		         }
		         
		         
		         String sql4 = "Update ADVERTISMENT set viewCount = viewCount + 1 where ID = "+advertisment.getId()+"";
		         
		         stmt4.execute(sql4);
		         
		         Date date=new Date(advertisment.getPostedDate());
		         System.out.println(date);
		         advertisment.setStringDate(date.toString());
		         String details = "";
		         if(advertisment.getPrice() != null){
		        	 
		        	 details = " PRICE : Rs."+  advertisment.getPrice()+"   ";
		         }
		         
		         
		         if (advertisment.getCity() != null && advertisment.getCity() != ""){
		        	 
		        	 details = details+ "       CITY : "+  advertisment.getCity();
		         }
		         advertisment.setDetails(details);
		         vedio.setRandomAd(advertisment);
		         System.out.println("all done");
		         
		         
		         
		         AllAds allAds = new AllAds();
		         
		         
		         
               while(rs5.next()){
		        	 
            	   
            	     String category = rs5.getString("category");
            	     int count = rs5.getInt("countCategory");
            	     
            	     if (category.equals("ELECTRONICS")){
            	    	 
            	    	 allAds.setElectronics(count);
            	     }
            	     else if (category.equals("HOUSE AND PROPERTY")){
            	    	 
            	    	 allAds.setHouseAndProperty(count);
            	     }
            	     else if (category.equals("VEHICLES")){
            	    	 
            	    	 allAds.setVehicles(count);
            	     }
            	     else if (category.equals("FASHION AND BEAUTY")){
	 
            	    	 	allAds.setFahionAndBeauty(count);
            	     }
            	     else if (category.equals("OTHER")){
	 
            	    	 allAds.setOther(count);
            	     }
            	     else if (category.equals("HOTELS")){
	 
            	    	 allAds.setHotels(count);
            	     }
            	     
		        	 
		         }
 
                 vedio.setAllAds(allAds);

		         
		         
		         
		         
		         
		         list.add(vedio);
		         
		      }
		      rs.close();
		   }catch(SQLException se){
		      //Handle errors for JDBC
		      se.printStackTrace();
		   }catch(Exception e){
		      //Handle errors for Class.forName
		      e.printStackTrace();
		   }finally{
		      //finally block used to close resources
		      try{
		         if(stmt!=null)
		            conn.close();
		      }catch(SQLException se){
		      }// do nothing
		      
		   }//end try
		   
	   
		   return list;
		   
	   }

	   
	   public void insertLoginUsersIp(String ip, String date) {
		   
		   Statement stmt = null;
		   try {
		  	     
			   //STEP 4: Execute a query
			   System.out.println("Inserting records into the table...");
			   stmt = conn.createStatement();
			   String sql = "INSERT INTO LOGIN_USERS (ip_address,date_time) VALUES ('"+ip+"', '"+date+"')";
			   System.out.println(sql);
			   stmt.executeUpdate(sql);
	
		   } catch (SQLException se) {
			   se.printStackTrace();
		   } catch (Exception e) {
			   e.printStackTrace();
		   } finally {
		      //finally block used to close resources
		      try{
		         if(stmt!=null)
		            conn.close();
		      }catch(SQLException se){
		      }// do nothing
		      //end finally try
		   }//end try
	   
	   }
	   
	   public AllAds getCategories() {
		   
		   AllAds allAds = new AllAds();
		   Statement statement = null;
		   try {
			   
			   statement = conn.createStatement();
			   String query = "SELECT category,count(category) as countCategory from ADVERTISMENT group by (category);";
			   ResultSet resultSet = statement.executeQuery(query);
			   
	           while (resultSet.next()) {
		        	 
	        	   String category = resultSet.getString("category");
	        	   int count = resultSet.getInt("countCategory");
	        	     
	        	   if (category.equals("ELECTRONICS")) {
	        		   allAds.setElectronics(count);
	        	   }else if (category.equals("HOUSE AND PROPERTY")) {
	        		   allAds.setHouseAndProperty(count);
	        	   }else if (category.equals("VEHICLES")) {
	        		   allAds.setVehicles(count);
	        	   }else if (category.equals("FASHION AND BEAUTY")) {
	        		   allAds.setFahionAndBeauty(count);
	        	   }else if (category.equals("OTHER")) {
	        		   allAds.setOther(count);
	        	   }else if (category.equals("HOTELS")) {
	        		   allAds.setHotels(count);
	        	   }
		       }
	           resultSet.close();
		   } catch (SQLException se) {
		      //Handle errors for JDBC
		      se.printStackTrace();
		   } catch (Exception e) {
		      //Handle errors for Class.forName
		      e.printStackTrace();
		   } finally {
			   //finally block used to close resources
			   if (statement != null) {
				   try {
					   conn.close();
				   } catch (SQLException e) {
					   e.printStackTrace();
				   }
			   }
		   }//end try
		   return allAds;
	   }
	   
	   public List<Advertisment> getRandomAds(int limit) {
		   List <Advertisment> advertisments = new ArrayList<Advertisment>();
		   Statement statement = null;
		   try {
			   statement = conn.createStatement();
			   String query = "SELECT ID,category,header,postedDate,city,viewCount,image,price FROM ADVERTISMENT ORDER BY RAND() LIMIT " + limit;
			   ResultSet resultSet = statement.executeQuery(query);
			   while(resultSet.next()) {
				   Advertisment advertisment = new Advertisment();
				   advertisment.setId(resultSet.getInt("ID"));
				   advertisment.setImage(resultSet.getString("image"));
				   advertisment.setHeader(resultSet.getString("header"));
				   advertisment.setCity(resultSet.getString("city"));
				   advertisment.setPostedDate(resultSet.getLong("postedDate"));
				   advertisment.setViewCount(resultSet.getInt("viewCount"));
				   advertisment.setPrice(resultSet.getString("price"));
				   advertisment.setCategory(resultSet.getString("category"));
				   advertisments.add(advertisment);
			   }
			   resultSet.close();
		   } catch (SQLException se) {
		      //Handle errors for JDBC
		      se.printStackTrace();
		   } catch (Exception e) {
		      //Handle errors for Class.forName
		      e.printStackTrace();
		   } finally {
			   //finally block used to close resources
			   if (statement != null) {
				   try {
					   conn.close();
				   } catch (SQLException e) {
					   e.printStackTrace();
				   }
			   }
		   }//end try
		   return advertisments;
		  
	   }
	   
	   public List<Video> getVideos(int offset, int limit) {
		   List <Video> videos = new ArrayList<Video>();
		   Statement statement = null;
		   try {
			   statement = conn.createStatement();
			   String query = "SELECT ID, header, vedioImage, videoImagePreview FROM VIDEO ORDER BY postedDate desc LIMIT " + limit + " OFFSET " + offset;
			   ResultSet resultSet = statement.executeQuery(query);
			   while(resultSet.next()) {
				   Video video = new Video();
				   video.setVedioId(resultSet.getInt("ID"));
				   video.setVideoImageName(resultSet.getString("videoImagePreview"));
				   video.setHeader(resultSet.getString("header"));
				   video.setVideoName(resultSet.getString("vedioImage"));
				   videos.add(video);
			   }
			   resultSet.close();
		   } catch (SQLException se) {
		      //Handle errors for JDBC
		      se.printStackTrace();
		   } catch (Exception e) {
		      //Handle errors for Class.forName
		      e.printStackTrace();
		   } finally {
			   //finally block used to close resources
			   if (statement != null) {
				   try {
					   conn.close();
				   } catch (SQLException e) {
					   e.printStackTrace();
				   }
			   }
		   }//end try
		   return videos;
		  
	   }
	   
	   public List<Video> getVideo(String videoName, int offset, int limit) {
		   List <Video> videos = new ArrayList<Video>();
		   Statement statementMain = null;
		   Statement statementOther = null;
		   try {
			   statementMain = conn.createStatement();
			   statementOther = conn.createStatement();
			   String queryMain = "SELECT vedioImage, header, ID, videoImagePreview from VIDEO where name = '" + videoName + "'";
			   String queryOther = "SELECT vedioImage, header, ID, videoImagePreview from VIDEO where name <> '" + videoName + "' order by postedDate desc " + "LIMIT " + (limit - 1) + " OFFSET " + offset;
			   ResultSet resultSetMain = statementMain.executeQuery(queryMain);
			   ResultSet resultSetOther = statementOther.executeQuery(queryOther);
			   
			   while(resultSetMain.next()) {
				   Video video = new Video();
				   video.setVedioId(resultSetMain.getInt("ID"));
				   video.setVideoImageName(resultSetMain.getString("videoImagePreview"));
				   video.setHeader(resultSetMain.getString("header"));
				   video.setVideoName(resultSetMain.getString("vedioImage"));
				   videos.add(video);
			   }
			   resultSetMain.close();
			   while(resultSetOther.next()) {
				   Video video = new Video();
				   video.setVedioId(resultSetOther.getInt("ID"));
				   video.setVideoImageName(resultSetOther.getString("videoImagePreview"));
				   video.setHeader(resultSetOther.getString("header"));
				   video.setVideoName(resultSetOther.getString("vedioImage"));
				   videos.add(video);
			   }
			   resultSetOther.close();
		   } catch (SQLException se) {
		      //Handle errors for JDBC
		      se.printStackTrace();
		   } catch (Exception e) {
		      //Handle errors for Class.forName
		      e.printStackTrace();
		   } finally {
			   //finally block used to close resources
			   if (statementMain != null || statementOther != null) {
				   try {
					   conn.close();
				   } catch (SQLException e) {
					   e.printStackTrace();
				   }
			   }
		   }//end try
		   return videos;
		  
	   }
	   
	   public List<Advertisment> searchAdsByTag(String q, String category, String district, int min, int max) {
		   
		   List <Advertisment> advertisments = new ArrayList<Advertisment>(); 
		   Statement statement = null;
		   
		   try {
		      statement = conn.createStatement();
		      String query;
		      if (q == null) {
		    	  query = "SELECT *  FROM ADVERTISMENT WHERE active = 'Y'";
		    	  if (category != null) {
		    		  if (category.equals("any")) {
		    			  category = "%";
		    		  }
		    		  query = query + " and category like '" + category + "'";
		    	  }
		    	  
		    	  if (district != null) {
		    		  if (district.equals("any")) {
		    			  district = "%";
		    		  }

		    		  query = query + " and city like '" + district + "'";
		    	  }
		    	  
		    	  if (min > 0) {
		    		  query = query + " and price > " + min;
		    	  }
		    	  if (max > 0) {
		    		  query = query + " and price < " + max;
		    	  }
		    	  
		      } else {
		    	  query = "SELECT *  FROM ADVERTISMENT WHERE active = 'Y' and ID in( SELECT tag_id from TAGS where tag_name like  '%" + q + "%') ";
		      }
		      System.out.println(query);
		      ResultSet resultSet = statement.executeQuery(query);
	
		      while (resultSet.next()) {
		         
		         Advertisment advertisment = new Advertisment();
		         
		         advertisment.setCity(resultSet.getString("city"));
	        	 advertisment.setPostedDate(resultSet.getLong("postedDate"));
	        	 advertisment.setViewCount(resultSet.getInt("viewCount"));
	        	 advertisment.setPrice(resultSet.getString("price"));
	        	 
		         advertisment.setHeader(resultSet.getString("header"));
		         advertisment.setDescription(resultSet.getString("description"));
		         advertisment.setImage(resultSet.getString("image"));
		         advertisment.setId(resultSet.getInt("ID"));
		         advertisment.setCategory(resultSet.getString("category"));
		         
		         Date date = new Date(advertisment.getPostedDate());
		         advertisment.setStringDate(date.toString());
		         String details = "";
		         
		         if(advertisment.getPrice() != null){
		        	 details = " PRICE : Rs."+  advertisment.getPrice()+"   ";
		         }
		         
		         if (advertisment.getCity() != null && advertisment.getCity() != "/= Only "){
		        	 details = details + "/CITY : " +  advertisment.getCity();
		         }
		         advertisment.setDetails(details);
		         advertisments.add(advertisment);
		         
		      }
		      resultSet.close();
		   }catch(SQLException se){
		      se.printStackTrace();
		   }catch(Exception e){
		      e.printStackTrace();
		   }finally{
		      try{
		         if(statement != null)
		            conn.close();
		      }catch(SQLException se){}
		   }
		   return advertisments;
	   }

	   public boolean deleteAd(int adID){
		   
		   
		   Statement stmt = null;
		   boolean states = true;
		   try{

			  stmt = conn.createStatement();

		      String sql = "UPDATE ADVERTISMENT SET  active = 'N' WHERE ID = "+adID+" ";
		      states = stmt.execute(sql);
		      states = true;
		      
		   }catch(SQLException se){
		     
		      se.printStackTrace();
		   }catch(Exception e){
		      
		      e.printStackTrace();
		   }finally{
		      
		      try{if(stmt!=null){conn.close();}
		      }catch(SQLException se){}
		      
		   }
		      
		   return states;
	   }
	   
	   
	   
	   
	   
  public List<Message> getAllMessagesByUserName(String userName) {
		   
		   List <Message> messages = new ArrayList<Message>(); 
		   Statement statement = null;
		   
		   try {
		      statement = conn.createStatement();
		      String query = "SELECT *  FROM MESSAGES WHERE active = 'Y' and userId in (SELECT ID from USER WHERE user_name =  '"+userName+"' )  ORDER BY postedDate DESC";
		     
		      System.out.println(query);
		      ResultSet resultSet = statement.executeQuery(query);
	
		      while (resultSet.next()) {
		         
		         Message message = new Message();
		         
		         message.setID(resultSet.getInt("ID"));
		         message.setUserID(resultSet.getInt("userId"));
		         message.setMessageHeder(resultSet.getString("messageHeader"));
		         message.setMessageContent(resultSet.getString("messageContent"));
		         message.setPostedDate(resultSet.getLong("postedDate"));
		         message.setMessageSentBy(resultSet.getString("messageSentBy"));
		         message.setMessageRead(resultSet.getString("readMessage"));
		         
		         
		         messages.add(message);
		         
		      }
		      resultSet.close();
		   }catch(SQLException se){
		      se.printStackTrace();
		   }catch(Exception e){
		      e.printStackTrace();
		   }finally{
		      try{
		         if(statement != null)
		            conn.close();
		      }catch(SQLException se){}
		   }
		   return messages;
	   }
  
  
  
  	public void sendMessages(Message message) {
	   
	   Statement stmt = null;
	   try {
	  	     
		   //STEP 4: Execute a query
		   System.out.println("Inserting records into the USER table...");
		   stmt = conn.createStatement();
		   String sql = "INSERT INTO MESSAGES (messageHeader,messageContent,postedDate,userId,messageSentBy) VALUES ('"+message.getMessageHeder()+"', '"+message.getMessageContent()+"',  "+message.getPostedDate()+" , "+ message.getUserID()+",'"+message.getUserName()+"'  )";
		   System.out.println(sql);
		   stmt.executeUpdate(sql);
		   System.out.println("Successfully inserted");

	   } catch (SQLException se) {
		   se.printStackTrace();
	   } catch (Exception e) {
		   e.printStackTrace();
	   } finally {
	      //finally block used to close resources
	      try{
	         if(stmt!=null)
	            conn.close();
	      }catch(SQLException se){
	      }// do nothing
	      //end finally try
	   }//end try
  
  	}
  	
  	public void sendMessageByUserName(Message message) {
 	   
 	   Statement stmt = null;
 	   try {
 	  	     
 		   //STEP 4: Execute a query
 		   System.out.println("Inserting records into the Messages table...");
 		   stmt = conn.createStatement();
 		   String sql = "INSERT INTO MESSAGES (messageHeader,messageContent,postedDate,userId,messageSentBy) VALUES ('"+message.getMessageHeder()+"', '"+message.getMessageContent()+"',  "+message.getPostedDate()+" , ( SELECT ID from USER WHERE user_name = '"+ message.getRecieverUserName()+"'),'"+message.getUserName()+"'  )";
 		   System.out.println(sql);
 		   stmt.executeUpdate(sql);
 		   System.out.println("Successfully inserted");

 	   } catch (SQLException se) {
 		   se.printStackTrace();
 	   } catch (Exception e) {
 		   e.printStackTrace();
 	   } finally {
 	      //finally block used to close resources
 	      try{
 	         if(stmt!=null)
 	            conn.close();
 	      }catch(SQLException se){
 	      }// do nothing
 	      //end finally try
 	   }//end try
   
   	}


  	public void updateHotelDetails(UpdateHotel updateHotel,Message message) {
  	   
  	   Statement stmt = null;
  	   Statement stmt2 = null;
  	   Statement stmt3 = null;
  	   try {
  	  	     
  		   
  		   System.out.println("Inserting records into the Messages table...");
  		   stmt = conn.createStatement();
  		   String sql = "INSERT INTO MESSAGES (messageHeader,messageContent,postedDate,userId,messageSentBy) VALUES ('"+message.getMessageHeder()+"', '"+message.getMessageContent()+"',  "+message.getPostedDate()+" , ( SELECT ID from USER WHERE user_name = '"+ message.getRecieverUserName()+"'),'"+message.getUserName()+"'  )";
  		   System.out.println(sql);
  		   stmt.executeUpdate(sql);
  		   System.out.println("Successfully inserted to Message table");
  		   
  		   
  		   
  		   stmt3 = conn.createStatement();
  		   String sql3 = "SELECT Count(*) as count  FROM HOTELBOOKING WHERE dueDate = "+updateHotel.getDueDate()+" and hotelID = "+ updateHotel.getHotelID()+"";
  		   System.out.println(sql3);
  		   ResultSet resultSet = stmt3.executeQuery(sql3);
  		   int count =0 ; 
  		   
  		   
		   while (resultSet.next()) {
		         
		        count = resultSet.getInt("count");
		   }
		   
		   
		   if (count == 0 ){
	
  		   
  		   
  		   System.out.println("Inserting records into the HOTELBOOKING table...");
		   stmt2 = conn.createStatement();
		   String sql2 = "INSERT INTO HOTELBOOKING (hotelID,dueDate,postedDate,numOfSingleRooms,numOfDoubleRooms,numOfTripleRooms,priceOfSingleRoom,priceOfDoubleRoom,priceOfTripleRoom) VALUES ("+updateHotel.getHotelID()+", "+updateHotel.getDueDate()+", "+updateHotel.getPostedDate()+" , "+ updateHotel.getNumberOfSingleRooms() +","+ updateHotel.getNumberOfDoubleRooms() +","+updateHotel.getNumberOfTripleRooms()+","+updateHotel.getPriceOfSingleRooms()+","+updateHotel.getPriceOfDoubleRooms()+","+updateHotel.getPriceOfTripleRooms()+"  )";
		   System.out.println(sql2);
		   stmt2.executeUpdate(sql2);
		   System.out.println("Successfully inserted to HOTELBOOKING table");
		   
  		   
		   }else if(count == 1){
			   
			   System.out.println("update records from the HOTELBOOKING table...");
			   stmt2 = conn.createStatement();
			   String sql2 = "UPDATE HOTELBOOKING  set  postedDate = "+updateHotel.getPostedDate()+",numOfSingleRooms = "+updateHotel.getNumberOfSingleRooms()+",numOfDoubleRooms = "+updateHotel.getNumberOfDoubleRooms()+",numOfTripleRooms = "+updateHotel.getNumberOfTripleRooms()+",priceOfSingleRoom = "+updateHotel.getPriceOfSingleRooms()+",priceOfDoubleRoom = "+updateHotel.getPriceOfDoubleRooms()+",priceOfTripleRoom = "+updateHotel.getPriceOfTripleRooms()+"   WHERE hotelID = "+updateHotel.getHotelID()+" and dueDate = "+updateHotel.getDueDate()+"";
			   System.out.println(sql2);
			   stmt2.executeUpdate(sql2);
			   System.out.println("Successfully inserted to HOTELBOOKING table");
			      
		   }

  	   } catch (SQLException se) {
  		   se.printStackTrace();
  	   } catch (Exception e) {
  		   e.printStackTrace();
  	   } finally {
  	      //finally block used to close resources
  	      try{
  	         if(stmt!=null)
  	            conn.close();
  	      }catch(SQLException se){
  	      }// do nothing
  	      //end finally try
  	   }//end try
    
    	}	  
  	
  	
  	
  	
  	public void bookHotel(BookHotelUser bookHotelUser,Message message) {
   	   
   	   Statement stmt = null;
   	   Statement stmt2 = null;
   	   try {
   	  	   
   		   
   		   System.out.println("Inserting records into the HOTELBOOKINGUSER table...");
		   stmt = conn.createStatement();
		   String sql = "INSERT INTO HOTELBOOKINGUSER (userID,hotelID,bookingDate,checkingDate,checkoutDate,bookedRooms,numberOfMens,numberOfWomens,numberOfChildrens,bookedRoomsType) VALUES (  ( SELECT ID from USER WHERE user_name = '"+bookHotelUser.getUserName()+"' ) , "+bookHotelUser.getHotelId()+", "+bookHotelUser.getPostedDate()+" , "+ bookHotelUser.getCheckingDate() +","+ bookHotelUser.getCheckoutDate() +","+bookHotelUser.getNumOfBookedRooms()+","+bookHotelUser.getNumOfMens()+","+bookHotelUser.getNumOfWomens()+","+bookHotelUser.getNumOfChidrens()+",'"+ bookHotelUser.getRoomType()+"'  )";
		   System.out.println(sql);
		   stmt.executeUpdate(sql);
		   System.out.println("Successfully inserted to HOTELBOOKINGUSER table");
		   
		   
		   int hotelId = bookHotelUser.getHotelId();   		   
   		   stmt2 = conn.createStatement();
   		   String sql2 = "SELECT userId  FROM ADVERTISMENT WHERE ID = "+hotelId+" ";
   		   System.out.println(sql2);
   		   ResultSet resultSet = stmt2.executeQuery(sql2);
   		   int userId =0 ; 
   		   
   		   
 		   while (resultSet.next()) {
 		         
 			  userId = resultSet.getInt("userId");
 			  message.setUserID(userId);  
 			 
 		   }
 		   
 		   
 		   if(userId > 0){
 			   
 			  sendMessages(message);  
 		   }

   	   } catch (SQLException se) {
   		   se.printStackTrace();
   	   } catch (Exception e) {
   		   e.printStackTrace();
   	   } finally {
   	      //finally block used to close resources
   	      try{
   	         if(stmt!=null)
   	            conn.close();
   	      }catch(SQLException se){
   	      }// do nothing
   	      //end finally try
   	   }//end try
     
     	}
  	
  	
}
