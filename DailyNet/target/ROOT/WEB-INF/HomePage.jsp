<div ng-controller="HttpGetController1">




<button   onclick="SendData()" style="position: fixed; top: 40px; right: 30px;  width: 80px;  height: 80px;  background-color:white;   border: 1px solid gray; box-shadow: 10px 10px 5px #888888; z-index: 5;"  >
<div >

<h6 style="text-align: center;"><b><Strong>Post Your</Strong></b></h6>
<h6 style="text-align: center;"><b><Strong>Free Ad</Strong></b></h6>

</div>
</button>


<div class="fullPage">

<div class="pageHeader">

<div class="pageLogin"><a ng-href="login_user"><p style="color: white;"><b>Login</b></p></a></div>
<div class="pageLoginDivider"></div>
<div class="pageLanguage"><p style="color: white;"><b>English</b></p></div>
<div class="contactUs"> <p style="color: white;"><b>Contact Us</b></p>  </div>

<div class="home_header_movable_text"><marquee direction="left"><p style="color: white;"><b>We provide you the best of what you want, when you want at the blink of an eye.... Welcome to DailyNet !!! </b></p></marquee></div>
</div>
<div class="home_header">
		  <a ui-sref="latestVideos"><i class="material-icons" style="color: #fff;">home</i></a>
</div>
<div class="pageMenu">




<div class="pageMenuLogo">
<img ng-src="{{dndataService.config.getHostUrl() + '/resources/img/logo.jpg'}}" alt="LOGO" width="150" height="100">
</div>

<div class="pageMenuSearch">
 <input type="text" class="form-control" placeholder="Search" ng-model = "inputSearch">

</div>


<div class="pageMenuLocation">

           

<select  style ="width:250px ; height:30px" ng-init="selectedDistrict = districts[0]"  ng-model="selectedDistrict" ng-options="district.title for district in districts">
    </select>           
     
     

             </div>
     
 


 <div class="pageMenuSearchButton btn-group btn-group-justified" >
 <a ui-sref="searchAds({searchTag: inputSearch , searchDistrict: selectedDistrict.title})" class="btn btn-primary" >
 Search
 </a>

</div>



</div>



 <ul>
		 		<li ng-repeat="category in ctgController.categories">
			    

<div class="categoryAndSliding" >

	<div class="leftSideCategories" >
		
		<div class="categoryHeaderBlank" >
			
		</div>
		
		<div class="categoryHeaderLeft" >
			<h6 style="text-align: center;">ELECTRONICS AAA({{category.allAds.electronics}}) </h6>
		</div>
		
		<div class="categoryShadoBoxLeft" >
		
		<a ui-sref="viewSelectedCategory({FIND:'ELECTRONICS'})"><img src="" alt="Trolltunga Norway" width="175" height="100"></a>
			
		</div>
		
		
		<div class="categoryHeaderLeftBlank" >
			
		</div>
		<div class="categoryHeaderLeft" >
			<h6 style="text-align: center;">HOUSE AND PROPERTY ({{category.allAds.houseAndProperty}}) </h6>
		</div>
		
		<div class="categoryShadoBoxLeft" >
		 <a ui-sref="viewSelectedCategory({FIND:'HOUSE AND PROPERTY'})"><img src="/resources/img/CategoryHouse.jpg" alt="Trolltunga Norway" width="175" height="100"></a>
			
		</div>
		
		<div class="categoryHeaderLeftBlank" >
			
		</div>
		<div class="categoryHeaderLeft" >
			<h6 style="text-align: center;">VEHICLES ({{category.allAds.vehicles}}) </h6>
		</div>
		
		<div class="categoryShadoBoxLeft" >
			  <a ui-sref="viewSelectedCategory({FIND:'VEHICLES'})"><img src="/resources/img/vehicle.jpg" alt="Trolltunga Norway" width="175" height="100"></a>
		</div>
		
				
		
	</div>


	<div class="imageSlidingDiv" ng-init="imageSlidingFunc()">
	
				
<div id="jssor_1" style="position: relative; margin: 0 auto; top: 0px; left: 0px; width: 800px; height: 400px; overflow: hidden; visibility: hidden; background-color: #24262e;">
        <!-- Loading Screen -->
        <div data-u="loading" style="position: absolute; top: 0px; left: 0px;">
            <div style="filter: alpha(opacity=70); opacity: 0.7; position: absolute; display: block; top: 0px; left: 0px; width: 100%; height: 100%;"></div>
            </div>
        <div data-u="slides" style="cursor: default; position: relative; top: 0px; left: 0px; width: 800px; height: 400px; overflow: hidden;">
            <div data-p="144.50" style="display: none;">
                <img data-u="image" src="/DailyNet/resources/img/CategoryElectronics.jpg" />
    
            </div>
            <div data-p="144.50" style="display: none;">
                <img data-u="image" src="/DailyNet/resources/img/CategoryFashon.jpg" />
                </div>
    
        <div data-p="144.50" style="display: none;">
                <img data-u="image" src="/DailyNet/resources/img/CategoryHouse.jpg" />
             </div>
        
        </div>
        <!-- Arrow Navigator -->
        <span data-u="arrowleft" class="jssora05l" style="top:0px;left:8px;width:1px;height:1px;"></span>
        <span data-u="arrowright" class="jssora05r" style="top:0px;right:8px;width:1px;height:1px;"></span>
    </div>
				
				

	</div>


	<div class="rightSideCategories" >

		<div class="categoryHeaderBlank" >
			
		</div>
		<div class="categoryHeaderRight" >
			<h6 style="text-align: center;">FASHION AND BEAUTY ({{category.allAds.fahionAndBeauty}}) </h6>
		</div>
		
		<div class="categoryShadoBoxRight" >
			 <a ui-sref="viewSelectedCategory({FIND:'FASHION AND BEAUTY'})"><img src="/resources/img/fashon.jpg" alt="Trolltunga Norway" width="175" height="100"></a>
		</div>
		
		
		<div class="categoryHeaderRightBlank" >
			
		</div>
		<div class="categoryHeaderRight" >
			<h6 style="text-align: center;">OTHER ({{category.allAds.other}}) </h6>
		</div>
		
		<div class="categoryShadoBoxRight" >
			  <a ui-sref="viewSelectedCategory({FIND:'OTHER'})"><img src="/resources/img/CategoryOther.jpg" alt="Trolltunga Norway" width="175" height="100"></a>
		</div>
		
			<div class="categoryHeaderRightBlank" >
			
		</div>
		<div class="categoryHeaderRight" >
			<h6 style="text-align: center;">HOTELS ({{category.allAds.hotels}}) </h6>
		</div>
		
		<div class="categoryShadoBoxRight" >
			<a ui-sref="viewSelectedCategory({FIND:'HOTELS'})"><img src="/resources/img/hotel.jpg" alt="Trolltunga Norway" width="175" height="100"></a>
 
		</div>

	</div>


<div class = "bottomCategories">

<div class="categoryHeaderBox1Bottom" ><h6 style="text-align: center;">JOBS ({{category.allAds.hotels}}) </h6></div>
<div class = "categoryShadoBox1Bottom">
<a ui-sref="viewSelectedCategory({FIND:'ELECTRONICS'})"><img src="/resources/img/jobs.jpg" alt="Trolltunga Norway" width="175" height="100"></a>
		
</div>

<div class="categoryHeaderBox2Bottom" ><h6 style="text-align: center;">SPORTS  ({{category.allAds.hotels}}) </h6></div>
<div class = "categoryShadoBox2Bottom">
<a ui-sref="viewSelectedCategory({FIND:'ELECTRONICS'})"><img src="/resources/img/sports.jpg" alt="Trolltunga Norway" width="175" height="100"></a>
		
</div>

<div class="categoryHeaderBox3Bottom" ><h6 style="text-align: center;">MOBILES ({{category.allAds.hotels}}) </h6></div>
<div class = "categoryShadoBox3Bottom">
<a ui-sref="viewSelectedCategory({FIND:'ELECTRONICS'})"><img src="/resources/img/phone.jpg" alt="Trolltunga Norway" width="175" height="100"></a>
		
</div>

<div class="categoryHeaderBox4Bottom" ><h6 style="text-align: center;">EDUCATION  ({{category.allAds.hotels}}) </h6></div>
<div class = "categoryShadoBox4Bottom">
<a ui-sref="viewSelectedCategory({FIND:'ELECTRONICS'})"><img src="/resources/img/education.jpg" alt="Trolltunga Norway" width="175" height="100"></a>
		
</div>

<div class="categoryHeaderBox5Bottom" ><h6 style="text-align: center;">ENTERTAINTMENT  ({{category.allAds.hotels}}) </h6></div>
<div class = "categoryShadoBox5Bottom">
<a ui-sref="viewSelectedCategory({FIND:'ELECTRONICS'})"><img src="/resources/img/entertainment.jpg" alt="Trolltunga Norway" width="175" height="100"></a>
		
</div>



<div class="flex" style="padding: 20px 0; margin-top: 130px" >
						<hr>
							<span style="padding: 0 10px; font-size: 14px; color: #8A8A8A; " class="mo">Featured Ads</span>
						<hr>
					</div>
					

<a ui-sref="viewMoreDetailsRandom({RandomID:category.randomAd.id})">

<div class="RandomAd1InHome">

<div class="bottomAdVideoImageDiv">

<img src= "/myResources/{{category.randomAd.image}}"  alt="my image" width="200px" height="180px">

</div>

<div class="bottomAdVideoHeaderDiv">

<h4 style="color: #8CDE49  "><b>{{category.randomAd.header}}</b></h4>

</div>

<div class="bottomAdVideoDateDiv">


<h6 style="color: #4958DE"><b>Posted Date : {{category.randomAd.stringDate}}</b></h6>


</div>

<div class="bottomAdVideoPriceDiv">

<h6 style="color: #4958DE"><b>{{category.randomAd.details}}</b></h6>

</div>

		<div class="bottomAdVideoViewCountDiv">

<div class="bottomAdVideoViewCountDivDesc">


     <i class="material-icons">remove_red_eye</i> 

</div>

<div class="bottomAdVideoViewCountDivCount">


    {{category.randomAd.viewCount}}

</div>
		</div>


		</div>

</a>


<a ui-sref="viewMoreDetailsRandom({RandomID:category.randomAd.id})">

<div class="RandomAd2InHome">

<div class="bottomAdVideoImageDiv">

<img src= "/myResources/{{category.randomAd.image}}"  alt="my image" width="200px" height="180px">

</div>

<div class="bottomAdVideoHeaderDiv">

<h4 style="color: #8CDE49  "><b>{{category.randomAd.header}}</b></h4>

</div>

<div class="bottomAdVideoDateDiv">


<h6 style="color: #4958DE"><b>Posted Date : {{category.randomAd.stringDate}}</b></h6>


</div>

<div class="bottomAdVideoPriceDiv">

<h6 style="color: #4958DE"><b>{{category.randomAd.details}}</b></h6>

</div>

		<div class="bottomAdVideoViewCountDiv">

<div class="bottomAdVideoViewCountDivDesc">


     <i class="material-icons">remove_red_eye</i> 

</div>

<div class="bottomAdVideoViewCountDivCount">


    {{category.randomAd.viewCount}}

</div>
		</div>


		</div>

</a>


<a ui-sref="viewMoreDetailsRandom({RandomID:category.randomAd.id})">

<div class="RandomAd3InHome">

<div class="bottomAdVideoImageDiv">

<img src= "/myResources/{{category.randomAd.image}}"  alt="my image" width="200px" height="180px">

</div>

<div class="bottomAdVideoHeaderDiv">

<h4 style="color: #8CDE49  "><b>{{category.randomAd.header}}</b></h4>

</div>

<div class="bottomAdVideoDateDiv">


<h6 style="color: #4958DE"><b>Posted Date : {{category.randomAd.stringDate}}</b></h6>


</div>

<div class="bottomAdVideoPriceDiv">

<h6 style="color: #4958DE"><b>{{category.randomAd.details}}</b></h6>

</div>

		<div class="bottomAdVideoViewCountDiv">

<div class="bottomAdVideoViewCountDivDesc">


     <i class="material-icons">remove_red_eye</i> 

</div>

<div class="bottomAdVideoViewCountDivCount">


    {{category.randomAd.viewCount}}

</div>
		</div>


		</div>

</a>






</div>





</div>
</li>
</ul>




<div class = "footer">

<div class = "socialMedia">
<ul class = "socialMediaUl">
<li><a href="https://www.facebook.com/DailyNet-1406722499402359/"><i class="fa fa-facebook" style="font-size:25px"></i></a></li>
<li><a href="http://linkedin.com/"><i class="fa fa-linkedin" style="font-size:25px"></i></a></li>
<li><a href="http://twitter.com/"><i class="fa fa-twitter" style="font-size:25px"></i></a></li>
<li><a href="http://plus.google.com/"><i class="fa fa-google-plus" style="font-size:25px"></i> </a></li>
</ul>

</div>


<div class = "termsAndConditions">
<a href= 'terms_and_conditions'>
<p style="color: white;text-align: center;"><b>Terms and Conditions</b></p>
</a>
</div>


<div class = "termsAndConditionsDivider">

</div>

<div class = "privacyPolicy">
<a href= 'privacy'>
<p style="color: white;text-align: center;"><b>Privacy Policy</b></p>
</a>
</div>

<div class = "privacyPolicyDivider">

</div>

<div class = "faqs">
<p style="color: white;text-align: center;"><b>FAQs</b></p>

</div>

<div class = "faqsDivider">

</div>

<div class = "contactFooter">
<p style="color: white;text-align: center;"><b>About Us</b></p>

</div>

<div class = "totalSiteVisites">
<a href="http://www.reliablecounter.com" target="_blank"><img src="http://www.reliablecounter.com/count.php?page=dnet-dailynet.rhchost.com/dailynet&digit=style/plain/1/&reloads=0" alt="www.reliablecounter.com" title="www.reliablecounter.com" border="0"></a><br /><a href="http://www.analogmix.com" target="_blank" style="font-family: Geneva, Arial; font-size: 9px; color: #330010; text-decoration: none;"></a>
<p style="width:96px;height:19px;background-color:blue;color:white;text-align:center;font-size: 10px"><b>SITE VISITS</b></p>

</div>



</div>




</div>

</div>
