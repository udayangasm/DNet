<div ng-controller="HttpGetController1">
<nav class="social">
          <ul>
              <li><a href="#">Twitter <i class="fa fa-twitter"></i></a></li>
              <li><a href="#">Facebook <i class="fa fa-facebook"></i></a></li>
              <li><a href="#">Google Plus <i class="fa fa-google-plus"></i></a></li>
              
              
          </ul>
      </nav>
					<div >
		
		<h2>Daily News</h2>
			<div class ="homePage" >
			<div class ="homePageMenu">
			<div class="panel panel-default">
	     	<div class="panel-heading">
			<span class="lead">
		
		
<div class="container" >
	<div class="row">
           <div id="custom-search-input">
                            <div class="input-group col-md-12">
                                <input type="text" class="  search-query form-control"  ng-model = "inputSearch"  placeholder="Search"  id = "inputSearchFeild" />
                                <span class="input-group-btn">
                                    <button class="btn btn-danger" type="button" >
                                        <a ui-sref="searchAds({searchTag: inputSearch})"><span class=" glyphicon glyphicon-search"></span></a>
                                    </button>
                                </span>
                            </div>
           </div>
	</div>
</div>
		 <div class="indiv">
		 <p style="font-size: 30px;font-style: italic;color: blue;">IN</p>
		 </div>   			
					
<div class="selectDistric">
  
  <div class="dropdown">
    <button class="btn btn-primary dropdown-toggle" type="button" data-toggle="dropdown">ANY WHERE
    <span class="caret"></span></button>
    <ul class="dropdown-menu">
      <li><a href="#">Colombo</a></li>
      <li><a href="#">Kandy</a></li>
      <li><a href="#">Kurunagala</a></li>
      <li class="divider"></li>
      <li><a href="#">Other Cities</a>
      
      </li>
    </ul>
  </div>
</div>

					
	

						<div class= "browsCategory">
						<div class="dropdownCategory" >
  
  								<button class="dropbtnCategory">Your Needs</button>
  					
  								<div class="dropdown1-contentCategory">
    				
    								<a ng-href="hotel_page">Hotels</a><br>
    								<a ng-href="jwellary_page">Jwellary</a><br>
    								<a ng-href="vehicle_page">Vehicles</a><br>
    								<a ng-href="electornic_page">Electronics</a><br>
    								<a ng-href="fashion_page">Fashion</a><br>
    								<a ng-href="places_page">Places</a>
  								</div>
							</div>
						</div>



						<div class= "postAdds">
							<button class="buttonPost "  onclick="SendData()"  >Post Your Ads<br> <b> FREE</b> </button>
						</div>
<div class= "siteVisitors">

<a href="http://www.reliablecounter.com" target="_blank"><img src="http://www.reliablecounter.com/count.php?page=dnet-dailynet.rhchost.com/dailynet&digit=style/plain/1/&reloads=0" alt="www.reliablecounter.com" title="www.reliablecounter.com" border="0"></a><br /><a href="http://www.analogmix.com" target="_blank" style="font-family: Geneva, Arial; font-size: 9px; color: #330010; text-decoration: none;"></a>
<p style="width:96px;height:19px;background-color:blue;color:white;text-align:center;font-size: 10px"><b>SITE VISITS</b></p>
</div>		    											</span>
						
					</div>
					<div class="tablecontainer">
		    		<ul>
				  		<li>
				  			<a ng-href="login_user">login</a>
				  		</li>
					</ul>
					</div>
				</div>
				</div>	
				
				<div class="imageSliding1"  ng-init="imageSlidingFunc()">
				
<div id="jssor_1" style="position: relative; margin: 0 auto; top: 0px; left: 0px; width: 650px; height: 280px; overflow: hidden; visibility: hidden; background-color: #24262e;">
        <!-- Loading Screen -->
        <div data-u="loading" style="position: absolute; top: 0px; left: 0px;">
            <div style="filter: alpha(opacity=70); opacity: 0.7; position: absolute; display: block; top: 0px; left: 0px; width: 100%; height: 100%;"></div>
            </div>
        <div data-u="slides" style="cursor: default; position: relative; top: 0px; left: 0px; width: 650px; height: 280px; overflow: hidden;">
            <div data-p="144.50" style="display: none;">
                <img data-u="image" src="/DailyNet/resources/img/01.jpg" />
    
            </div>
            <div data-p="144.50" style="display: none;">
                <img data-u="image" src="/DailyNet/resources/img/02.jpg" />
                </div>
    
        <div data-p="144.50" style="display: none;">
                <img data-u="image" src="/DailyNet/resources/img/03.jpg" />
             </div>
        
        </div>
        <!-- Arrow Navigator -->
        <span data-u="arrowleft" class="jssora05l" style="top:0px;left:8px;width:1px;height:1px;"></span>
        <span data-u="arrowright" class="jssora05r" style="top:0px;right:8px;width:1px;height:1px;"></span>
    </div>
				
				
				</div>
				<div class="leftImageGallry">
					<div class="categoryItem">
					
					<div class="dropdown1">
  <a ng-href="hotel_page"><img src="/DailyNet/resources/img/hotel.jpg" alt="Trolltunga Norway" width="100" height="50"></a>
  <div class="dropdown1-content">
    <img src="/DailyNet/resources/img/hotel.jpg" alt="Trolltunga Norway" width="200" height="100">
    <div class="desc">View Hotels</div>
  </div>
</div>
					</div>
					<div class="categoryItem">
					
					<div class="dropdown1">
  <a ng-href="vehicle_page"><img src="/DailyNet/resources/img/vehicle.jpg" alt="Trolltunga Norway" width="100" height="50"></a>
  <div class="dropdown1-content">
    <img src="/DailyNet/resources/img/vehicle.jpg" alt="Trolltunga Norway" width="200" height="100">
    <div class="desc">See Vehicals</div>
  </div>
</div>
					
					
					</div>
					<div class="categoryItem">
					
					
					<div class="dropdown1">
  <a ng-href="jwellary_page"><img src="/DailyNet/resources/img/jwellary.jpg" alt="Trolltunga Norway" width="100" height="50"></a>
  <div class="dropdown1-content">
    <img src="/DailyNet/resources/img/jwellary.jpg" alt="Trolltunga Norway" width="200" height="100">
    <div class="desc">look the value</div>
  </div>
</div>
					
					</div>
				</div>
				
				
				<div class="rightImageGallry">
					<div class="categoryItem">
					
					<div class="dropdown1">
  <a ng-href="fashion_page"><img src="/DailyNet/resources/img/fashon.jpg" alt="Trolltunga Norway" width="100" height="50"></a>
  <div class="dropdown1-content">
    <img src="/DailyNet/resources/img/fashon.jpg" alt="Trolltunga Norway" width="200" height="100">
    <div class="desc">style your self</div>
  </div>
</div>
					
					</div>
					<div class="categoryItem">
					
					<div class="dropdown1">
  <a ng-href="electornic_page"><img src="/DailyNet/resources/img/phone.jpg" alt="Trolltunga Norway" width="100" height="50"></a>
  <div class="dropdown1-content">
    <img src="/DailyNet/resources/img/phone.jpg" alt="Trolltunga Norway" width="200" height="100">
    <div class="desc">find you one</div>
  </div>
</div>
					</div>
					<div class="categoryItem">
					
					<div class="dropdown1">
  <a ng-href="places_page"><img src="/DailyNet/resources/img/beauty.jpg" alt="Trolltunga Norway" width="100" height="50"></a>
  <div class="dropdown1-content">
    <img src="/DailyNet/resources/img/beauty.jpg" alt="Trolltunga Norway" width="200" height="100">
    <div class="desc">visit beautiful places</div>
  </div>
</div>
					
					</div>
				
				</div>
			</div>

<div id="flip">About Daily Net</div>
<div id="panel">We, the DailyNet advertising is a fast growing E-organization in Sri Lanka. We assure a high quality service, with our dedicated, well experienced crew.
join us today... and experience the difference</div>

</div>

<div     width: 1150px; height: 1000px; >
		
		 <ul>
		 		<li ng-repeat="category in ctgController.categories">
					
					<h2 style="text-align: center;">{{category.header}}</h2>
					<div class="panel panel-default">
						
						<div class="tablecontainer">
				  		
				  				<div class ="newsBlock1">
				  						
				  										<div class ="video"  >
														<div class="video-container">
														<iframe width="420" height="315"
														src="{{category.videoName | trusted}}">
														</iframe>
														</div>
				  										</div>
				  							  				
									  	    			<div class ="newsBlock4">
									  					<div class ="newsBlock6" >
									  	    			<a ui-sref="anotherVideo({ID:category.otherIDs[0]})">
									  					<img src= "/DailyNet/myResources/{{category.otherVideos[0]}}"  alt="my image" width="150px" height="120px">
								        				</a>		
									  					</div>
									  											  	
									  					<div class ="newsBlock6">
									  					<a ui-sref="anotherVideo({ID:category.otherIDs[1]})">
									  					<img src= "/DailyNet/myResources/{{category.otherVideos[1]}}"  alt="my image" width="150px" height="120px">
									  					</a>
									  					</div>
									  	
									  					<div class ="newsBlock6">
									  					<a ui-sref="anotherVideo({ID:category.otherIDs[2]})">
									  					<img src= "/DailyNet/myResources/{{category.otherVideos[2]}}"  alt="my image" width="150px" height="120px">
									  					</a>
									  					</div>
									  	
									  					<div class ="newsBlock6">
									  					<a ui-sref="anotherVideo({ID:category.otherIDs[3]})">
									  					<img src= "/DailyNet/myResources/{{category.otherVideos[3]}}"  alt="my image" width="150px" height="120px">
									  					</a>
									  			 </div>
									  	
									  	    	 <div class ="newsBlock6" >
									  			 <a ui-sref="anotherVideo({ID:category.otherIDs[4]})">
									  			 <img src= "/DailyNet/myResources/{{category.otherVideos[4]}}"  alt="my image" width="150px" height="120px">
									  			 </a>
									  			</div>
									  			
									  	</div>
									  	
				  				</div>
				  		</div>
				</li>
		</ul>
</div>


</div>
