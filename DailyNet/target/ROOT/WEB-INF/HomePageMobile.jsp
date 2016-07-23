<script>
	(function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
	(i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
	m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
	})(window,document,'script','https://www.google-analytics.com/analytics.js','ga');

	ga('create', 'UA-80508583-1', 'auto');
	ga('send', 'pageview');
</script>

<div style="background: #fff;" ng-init="hmController.init()">
	
	<div style="background: #E3E0FB;">
		
		<div style="display: flex; padding: 20px 20px 20px 215px; box-shadow: 1px 0px 1px #B5B5B5; background: #fff;">
			<div style="position: absolute; border: 3px solid #FFEB3B; top: 10px; left: 10px;">
				<img ng-src="/resources/img/logo.jpg" alt="LOGO" width="150" height="100" >
			</div>
			
			<div style="width: 48%;    margin-bottom: -30px; margin-top: -30px; margin-left: 50px;">
				<p style="font-size:100px;color:blue"><b> DailyNet.lk</b></p>
			</div>
			
			<button ng-click="hmController.create_ad_func()" style="position: absolute;top: 10px;right: 10px;width: 170px;height: 105px;background-color: #FFC107;border: 1px solid #5E056D; z-index: 5;color: rgb(80, 80, 80); font-weight: bold;font-size: 17px;display: flex;" href="#/postAd" class="btn btn-primary">
				<div style=" margin: auto;">
					<div style="text-align: center;"><b><strong>Post Your</strong></b></div>
					<div style="text-align: center;"><b><strong>Free Ad</strong></b></div>
				</div>
			</button>
			
	   </div>
		
		<div style="margin-top: 40px;"></div>
			
		
		
			<div style="width: 80%;height:80px;    margin-left: 10%;">
				<input type="text" style="height:80px;font-size:60px" class="form-control ng-pristine ng-valid ng-touched" placeholder="Search" ng-model="inputSearch" />
			</div>
			<div class=" btn-group btn-group-justified" style=" width: 80%;height:80px;  margin-left: 10%; font-size:60px">
				<a ui-sref="searchAds({q: inputSearch})" class="btn btn-primary">
					Search
				</a>
			</div>
		
		
		
		<div style="margin-top: 40px;"></div>
		
		
		
		
		
		
		
				
			
			<div style="padding: 8px; background: #fff; width: 100%; margin-left: 0%; box-shadow: 0 0 1px #B5B5B5;">


				<div style="width: 100%;height: 300px;margin: auto 0;padding: 3px; ">
                        	
					<p style="font-size:40px"><b> Hotel Booking</b></p>


					<div ng-controller="dataTimePickerCtrl" style="padding: 0px;" ng-cloak=""  >
  				
						<md-content>

    							<md-datepicker ng-model="myDateFrom" md-placeholder="Checkin date" md-min-date="minDate" md-max-date="maxDate"></md-datepicker>

    							<md-datepicker ng-model="myDateTo" md-placeholder="Checkout date" md-min-date="minDate" md-max-date="maxDate"></md-datepicker>

      							<div class="validation-messages" ng-messages="myForm.dateField.$error">
       
        							<div ng-message="mindate">Date is too early!</div>
        							<div ng-message="maxdate">Date is too late!</div>

							</div>
  			
						</md-content>
			
					</div>

					<div class=" btn-group btn-group-justified" style=" width: 28%; left: 1%; top: 24%; height: 50px;">
						<a ui-sref="searchAds({q: inputSearch})" class="btn btn-primary" href="#/allAds">
							Find
						</a>
					</div>
				</div>
				
				</div>

<div style="margin-top: 40px;"></div>
		
		<div style="padding: 8px; background: #fff; width: 100%; margin-left: 0%; box-shadow: 0 0 1px #B5B5B5;">
		

				<div style="margin: 10px 0;">
					<a ui-sref="category({CATEGORY:'ELECTRONICS'})" style="display:flex;">
						<div style=" width: 60px; height: 60px; border-radius: 50%; background: #2196F3;     margin-left: 20%; padding: 3px;">
							<img src="{{hmController.dataService.config.APP_URL}}/resources/img/electronics.png">
						</div>
						<span style="margin: auto 0;font-size:50px;">ELECTRONICS ({{hmController.categories.electronics}})</span>
					</a>
				</div>
				
				</div>
				
				<div style="margin-top: 20px;"></div>
				
				<div style="padding: 8px; background: #fff; width: 100%; margin-left: 0%; box-shadow: 0 0 1px #B5B5B5;">
			
				<div style="margin: 3px 0;">
					<a ui-sref="category({CATEGORY:'HOUSE AND PROPERTY'})" style="display:flex;">
						<div style=" width: 60px; height: 60px; border-radius: 50%; background: #2196F3; margin-left: 20%; padding: 3px;">
							<img src="{{hmController.dataService.config.APP_URL}}/resources/img/house.png">
						</div>
						<span style="margin: auto 0;font-size:50px;">HOUSE AND PROPERTY ({{hmController.categories.houseAndProperty}})</span>
					</a>
				</div>
				
				</div>
				<div style="margin-top: 20px;"></div>
				
				<div style="padding: 8px; background: #fff; width: 100%; margin-left: 0%; box-shadow: 0 0 1px #B5B5B5;">
		
					
				<div style="margin: 3px 0;">
					<a ui-sref="category({CATEGORY:'VEHICLES'})" style="display:flex;">
						<div style=" width: 60px; height: 60px; border-radius: 50%; background: #2196F3; margin-left: 20%; padding: 3px;">
							<img src="{{hmController.dataService.config.APP_URL}}/resources/img/vehicles.png">
						</div>
						<span style="margin: auto 0;font-size:50px;">VEHICLES ({{hmController.categories.vehicles}})</span>
					</a>
				</div>
				
				</div>
		
		<div style="margin-top: 20px;"></div>
		<div style="padding: 8px; background: #fff; width: 100%; margin-left: 0%; box-shadow: 0 0 1px #B5B5B5;">
					
				<div style="margin: 3px 0;">
					<a ui-sref="category({CATEGORY:'FASHION AND BEAUTY'})" style="display:flex;">
						<div style=" width: 60px; height: 60px; border-radius: 50%; background: #2196F3; margin-left: 20%; padding: 3px;">
							<img src="{{hmController.dataService.config.APP_URL}}/resources/img/fashion.png">
						</div>
						<span style="margin: auto 0;font-size:50px;">FASHION AND BEAUTY ({{hmController.categories.fahionAndBeauty}})</span>
					</a>
				</div>
		</div>
		<div style="margin-top: 20px;"></div>
		
		<div style="padding: 8px; background: #fff; width: 100%; margin-left: 0%; box-shadow: 0 0 1px #B5B5B5;">
					
				<div style="margin: 3px 0;">
					<a ui-sref="category({CATEGORY:'HOTELS'})" style="display:flex;">
						<div style=" width: 60px; height: 60px; border-radius: 50%; background: #2196F3;margin-left: 20%; padding: 3px;">
							<img src="{{hmController.dataService.config.APP_URL}}/resources/img/hotels.png">
						</div>
						<span style="margin: auto 0;font-size:50px;">HOTELS ({{hmController.categories.hotels}})</span>
					</a>
				</div>
		
		</div>
		
		<div style="margin-top: 20px;"></div>
		
		<div style="padding: 8px; background: #fff; width: 100%; margin-left: 0%; box-shadow: 0 0 1px #B5B5B5;">
					
				<div style="margin: 3px 0;">
					<a ui-sref="category({CATEGORY:'OTHER'})" style="display:flex;">
						<div style=" width: 60px; height: 60px; border-radius: 50%; background: #2196F3; margin-left: 20%; padding: 3px;">
							<img src="{{hmController.dataService.config.APP_URL}}/resources/img/other.png">
						</div>
						<span style="margin: auto 0;font-size:50px;">OTHER ({{hmController.categories.other}})</span>
					</a>
				</div>
				</div>
			
	
					
			</div>
			
		<div style="margin-top: 40px;"></div>	
			
			<div style="display: flex;" ng-if="hmController.config.page == 'video'" ng-init="hmController.loadVideos(hmController.config.videoName)">
			<div style="width: 60%;">
				<div style="background: #fff;">
					<h2 style="text-align: center; color: #3949AB; margin: auto;"><b>{{hmController.loadedVideo.header}}</b></h2>
				</div>
				<div style="background: #fff; padding: 2px;" >
					<div class="video-container">
						<iframe width="855" height="480" src="{{hmController.loadedVideo.videoName | trusted}}"></iframe>
					</div>
				</div>
			</div>
			
			<div style=" width: 40%; padding-left: 5px;">
				<div ng-repeat="video in hmController.videos" style=" border-bottom: 1px solid #eee; margin-bottom: 2px; padding: 3px; background: #fff;">
					<div ng-click="hmController.playThisVideo(video)" class="dn-flex">
						<div style="width: 160px; height: 120px; display: flex; background: #263238;">
							<img alt="my image" src="/images/{{video.videoImageName}}">
						</div>
						<div style="margin: 10px 0 0 10px; font-weight: bold;">{{video.header}}</div>
					</div>
				</div>
			</div>
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
</div>
