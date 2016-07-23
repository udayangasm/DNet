<script>
	(function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
	(i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
	m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
	})(window,document,'script','https://www.google-analytics.com/analytics.js','ga');

	ga('create', 'UA-80508583-1', 'auto');
	ga('send', 'pageview');
</script>

<div ng-controller="HttpGetController1">


<div class="fullPageAllAds">

<div class="pageHeader">

<div class="pageLogin"><a ng-href="login_user"><p  style="font-size:40px "><b>Login</b></p></a></div>
<div class="pageLoginImage"> <i class="material-icons" style="font-size:70px ">account_circle</i> </div>
<div class="pageLoginDivider"></div>

<div class="contactUs"> <p style="font-size:40px"><b>Contact Us</b></p>  </div>

<button    onclick="SendData()" style=" position: absolute;    top: 10px;  right: 437px;    width: 200px;    height: 130px;    background-color: white;  border: 1px solid gray;    box-shadow: 10px 10px 5px #888888;"  >
<div > 
<h1 style="text-align: center;"><b><Strong>Post Your</Strong></b></h1>
<h1 style="text-align: center;"><b><Strong>Free Ad</Strong></b></h1>

</div>
</button>

<div class="pageLogo"> <h4><b><i>DailyNet</i></b></h4> </div>


</div>

<div class="pageMenu">





<div class="pageMenuSearch">
 <input type="text" class="form-control" placeholder="Search" ng-model = "inputSearch">

</div>
<div class="pageMenuLocationAllAds">
 <a ui-sref="searchAds({searchTag: inputSearch})" class="btn btn-primary" >
<h1>Search</h1>
 </a>

           
</div>
     
 


 <div class="pageMenuFilterButtonAllAds btn-group btn-group-justified" >
 <button class="btn btn-primary" style="width:250px" >
<h1> Filter Results</h1>
 </button>

</div>



</div>

<div class ="adsAreaAllAds">


 <ul>
		 		<li ng-repeat="category in ctgController.categories">



	<a ui-sref="viewMoreDetailsMobile({ID:category.id})">
	<div class ="searchPageAdsTemplate">
          							<div class ="searchAdsImageDiv">
          							<img src="/DailyNet/myResources/{{category.image}}" alt="Trolltunga Norway" width="180" height="140">
          							</div>
          							
          							<div class ="searchAdsHeaderDiv">
          							<h4 style="color: #8CDE49  "><b>{{category.header}} </b></h4>
          							
          							</div>
          							
          							
          							<div class="searchAdsPriceDiv">
          							<h6 style="color: #4958DE"><b>Posted Date : {{category.stringDate}}</b></h6>
										
									</div>
          							
                    				<div class ="searchAdsDateDiv">
                    				<h6 style="color: #4958DE"><b>{{category.details}}
                    				</b></h6>
                    				
                    				</div>
                    				
                    					<div class="searchAdsViewCountDiv">


<div class="bottomAdVideoViewCountDivDesc">


     <i class="material-icons">remove_red_eye</i> : 

</div>

<div class="bottomAdVideoViewCountDivCount">


    <h5>{{category.viewCount}}</h5>

</div>
    

		</div>
                    				
                    				
          						</div>
          						
          						</a>

			<div class = "searchPageAdsTemplateBlank"></div>




</li>
</ul>
</div>

<div style="display: flex;background-color: #000967;">
			<div style="margin: auto 15px;">
				<ul class="socialMediaUl">
					<li><a href="https://www.facebook.com/DailyNet-1406722499402359/"><i class="fa fa-facebook" style="font-size:25px"></i></a></li>
					<li><a href="http://linkedin.com/"><i class="fa fa-linkedin" style="font-size:25px"></i></a></li>
					<li><a href="http://twitter.com/"><i class="fa fa-twitter" style="font-size:25px"></i></a></li>
					<li><a href="http://plus.google.com/"><i class="fa fa-google-plus" style="font-size:25px"></i> </a></li>
				</ul>
			</div>
		
			<div style="margin: auto 10px auto auto;">
				<a href="terms_and_conditions">
					<p style="color: white;text-align: center;"><b>Terms and Conditions</b></p>
				</a>
			</div>
			
			<div style="margin: auto 10px;">
				<a href="privacy">
					<p style="color: white;text-align: center;"><b>Privacy Policy</b></p>
				</a>
			</div>
			
			<div style="margin: auto 10px;">
				<p style="color: white;text-align: center;"><b>FAQs</b></p>
			</div>
			
			<div style="margin: auto auto auto 10px;">
				<p style="color: white;text-align: center;"><b>About Us</b></p>
			</div>
		
			<div>
				<a href="http://www.reliablecounter.com" target="_blank" style=" margin: auto;">
					<img src="http://www.reliablecounter.com/count.php?page=dnet-dailynet.rhchost.com/dailynet&amp;digit=style/plain/1/&amp;reloads=0" alt="www.reliablecounter.com" title="www.reliablecounter.com" border="0">
				</a>
				<br>
				<a href="http://www.analogmix.com" target="_blank" style="font-family: Geneva, Arial; font-size: 9px; color: #330010; text-decoration: none;"></a>
				<p style="width:96px; background-color:blue;color:white;text-align:center;font-size: 10px;margin: auto;padding: 3px 0;"><b>SITE VISITS</b></p>
			</div>
		</div>


</div>
  
