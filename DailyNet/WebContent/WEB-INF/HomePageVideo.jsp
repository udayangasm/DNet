<script>
	(function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
	(i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
	m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
	})(window,document,'script','https://www.google-analytics.com/analytics.js','ga');

	ga('create', 'UA-80508583-1', 'auto');
	ga('send', 'pageview');
</script>

<div style="background: #fff;" ng-init="hmController.init()">
	<button ng-click="hmController.create_ad_func()" style="position: fixed;top: 55px;right: 10px;width: 106px;height: 62px;background-color: #FFC107;border: 1px solid #5E056D; z-index: 5;color: rgb(80, 80, 80); font-weight: bold;font-size: 17px;display: flex;" href="#/postAd" class="btn btn-primary">
		<div style=" margin: auto;">
			<div style="text-align: center;"><b><strong>Post Your</strong></b></div>
			<div style="text-align: center;"><b><strong>Free Ad</strong></b></div>
		</div>
	</button>
	<div style="background: #E3E0FB;">
		<div style="margin-top: 10px;">
			<div style="display: flex; width: 70%; margin: auto;">
				<div ng-init="hmController.imageSlidingFunc()" style="background: #fff; width: 60%; display: flex; box-shadow: 0px 0px 1px;">
					<div id="jssor_1" style="position: relative; margin: auto; top: 0px; left: 0px; width: calc(100%); height: 400px; overflow: hidden; visibility: hidden; background-color: #24262e;">
    					<div data-u="loading" style="position: absolute; top: 0px; left: 0px;">
        					<div style="filter: alpha(opacity=70); opacity: 0.7; position: absolute; display: block; top: 0px; left: 0px; width: 100%; height: 100%;"></div>
        				</div>
    					<div data-u="slides" style="cursor: default; position: relative; top: 0px; left: 0px; width: 800px; height: 400px; overflow: hidden;">
				            <div data-p="144.50" style="display: none;">
				                <img data-u="image" src="/resources/img/CategoryElectronics.jpg" />
				            </div>
				            <div data-p="144.50" style="display: none;">
				                <img data-u="image" src="/resources/img/CategoryFashon.jpg" />
				            </div>
				        	<div data-p="144.50" style="display: none;">
				                <img data-u="image" src="/resources/img/CategoryHouse.jpg" />
				            </div>
				        </div>
				        <span data-u="arrowleft" class="jssora05l" style="top:0px;left:8px;width:1px;height:1px;"></span>
				        <span data-u="arrowright" class="jssora05r" style="top:0px;right:8px;width:1px;height:1px;"></span>
				    </div>
				</div>
				<div style="padding: 0px; background: #fff; width: 39%; margin-left: 1%; box-shadow: 0 0 1px #B5B5B5;">

					


		<div style="width: 100%;height: 120px;margin: auto 0;padding: 0px; ">
                              			
                <p style="padding: 5px"><b> Hotel Booking</b></p>

				<div ng-controller="dataTimePickerCtrl" style="padding: 0px;" ng-cloak=""  >
  					<md-content>
    						<md-datepicker ng-model="myDateFrom" md-placeholder="Checkin date" md-min-date="minDate" md-max-date="maxDate"></md-datepicker>
  
    						<md-datepicker ng-model="myDateTo" md-placeholder="Checkout date" md-min-date="minDate" md-max-date="maxDate"></md-datepicker>
  					</md-content>
				</div>

				<div style="width: 97px;right: 242px;top: 173px;height: 30px;position: absolute;">
				
					<!-- district dropdown -->
					<md-input-container class="md-block">
						<label>District</label>
						<md-select ng-model="hmController.filter.district">
							<md-option ng-repeat="district in hmController.utilService.districts" value="{{district.value}}">
								{{district.display}}
							</md-option>
						</md-select>
				    </md-input-container>	
				</div>


				<div class=" btn-group btn-group-justified" style="width: 85px;right: 197px;height: 18px;position: absolute;top: 233px;">
					<a ui-sref="searchAds({q: undefined, category: HOTELS , district: hmController.filter.district, min: undefined, max: undefined})" class="btn btn-primary" href="#/allAds">
						Find
					</a>
				</div>
						
		</div>



		<div style="width: 43%;height:5px;background: #E3E0FB;right:0px;position:absolute"></div>



		<div style="width: 100%;height: 120px;margin: auto 0;padding: 0px; ">
                              			
                <p style="padding: 5px"><b> e Shopping</b></p>

				


				<div class=" btn-group btn-group-justified" style="width: 85px;right: 197px;top: 320px;height: 18px;position: absolute;">
					<a ui-sref="searchAds({q: undefined, category: HOTELS , district: hmController.filter.district, min: undefined, max: undefined})" class="btn btn-primary" href="#/allAds">
						Buy Now
					</a>
				</div>
						
		</div>

					
					
					
					
					
					
					
				</div>
			</div>
			
</div>












<div style=" width: 100%;  display:flex;margin-top: 2%;">



					<div style="display: flex; margin: auto; width: 30%; padding: 5px; background: #fff;">
						<a ui-sref="category({CATEGORY:'ELECTRONICS'})" style="display:flex;">
							<div style=" width: 40px; height: 40px; border-radius: 50%; background: #2196F3; margin: auto 10px; padding: 3px;">
								<img src="{{hmController.dataService.config.APP_URL}}/resources/img/electronics.png">
							</div>
							<span style="margin: auto 0;">ELECTRONICS ({{hmController.categories.electronics}})</span>
						</a>
					</div>
					
					<div style="display: flex; margin: auto; width: 30%; padding: 5px; background: #fff;">
						<a ui-sref="category({CATEGORY:'HOUSE AND PROPERTY'})" style="display:flex;">
							<div style=" width: 40px; height: 40px; border-radius: 50%; background: #2196F3; margin: auto 10px; padding: 3px;">
								<img src="{{hmController.dataService.config.APP_URL}}/resources/img/house.png">
							</div>
							<span style="margin: auto 0;">HOUSE AND PROPERTY ({{hmController.categories.houseAndProperty}})</span>
						</a>
					</div>
					
					<div style="display: flex; margin: auto; width: 30%; padding: 5px; background: #fff;">
						<a ui-sref="category({CATEGORY:'VEHICLES'})" style="display:flex;">
							<div style=" width: 40px; height: 40px; border-radius: 50%; background: #2196F3; margin: auto 10px; padding: 3px;">
								<img src="{{hmController.dataService.config.APP_URL}}/resources/img/vehicles.png">
							</div>
							<span style="margin: auto 0;">VEHICLES ({{hmController.categories.vehicles}})</span>
						</a>
					</div>
					
					
					
					
					
					</div>
					
					
					
<div style=" width: 100%;  display:flex;margin-top: 2%;">
					
					
					<div style="display: flex; margin: auto; width: 30%; padding: 5px; background: #fff;">
						<a ui-sref="category({CATEGORY:'FASHION AND BEAUTY'})" style="display:flex;">
							<div style=" width: 40px; height: 40px; border-radius: 50%; background: #2196F3; margin: auto 10px; padding: 3px;">
								<img src="{{hmController.dataService.config.APP_URL}}/resources/img/fashion.png">
							</div>
							<span style="margin: auto 0;">FASHION AND BEAUTY ({{hmController.categories.fahionAndBeauty}})</span>
						</a>
					</div>
					
					<div style="display: flex; margin: auto; width: 30%; padding: 5px; background: #fff;">
						<a ui-sref="category({CATEGORY:'HOTELS'})" style="display:flex;">
							<div style=" width: 40px; height: 40px; border-radius: 50%; background: #2196F3; margin: auto 10px; padding: 3px;">
								<img src="{{hmController.dataService.config.APP_URL}}/resources/img/hotels.png">
							</div>
							<span style="margin: auto 0;">HOTELS ({{hmController.categories.hotels}})</span>
						</a>
					</div>
					
					<div style="display: flex; margin: auto; width: 30%; padding: 5px; background: #fff;">
						<a ui-sref="category({CATEGORY:'OTHER'})" style="display:flex;">
							<div style=" width: 40px; height: 40px; border-radius: 50%; background: #2196F3; margin: auto 10px; padding: 3px;">
								<img src="{{hmController.dataService.config.APP_URL}}/resources/img/other.png">
							</div>
							<span style="margin: auto 0;">OTHER ({{hmController.categories.other}})</span>
						</a>
					</div>







</div>















			<div style=" width: 100%; margin: 5px 0; display:flex;" ng-if="hmController.config.page == 'video'">
			
				<div ng-repeat="randomAd in hmController.randomAds" style="display: flex; margin: auto; width: 30%; padding: 5px; background: #fff; min-width: 390px;">
					<a ui-sref="viewMore({CATEGORY:randomAd.category, ID:randomAd.id})" style="text-decoration: none; width: 100%; ">
						<div style="display: flex; background: #fff; margin: auto; position: relative; ">
							<div class="" style="min-width: 124px;height: 93px;display: flex;margin: auto 10px auto 0;">
								<img src="/images/{{randomAd.image}}" alt="my image">
							</div>
							<div>
								<div>
									<h4 style="color: #2196F3  "><b>{{randomAd.header}}</b></h4>
								</div>
								<div>
									<h6 style="color: #616161">Posted Date : {{randomAd.stringDate}}</h6>
								</div>
								<div>
									<h6 style="color: #616161">{{randomAd.details}}</h6>
								</div>
							</div>
							<div style="display: flex; position: absolute; bottom: 0; right: 5px;">
								<i class="material-icons" style="margin: auto;">remove_red_eye</i>
								<span style="margin: auto;" >{{randomAd.viewCount}}</span>
							</div>
						</div>
					</a>
				</div>
			
		</div>
			
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
	</div>
</div>
