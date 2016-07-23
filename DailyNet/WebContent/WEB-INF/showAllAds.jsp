<script>
	(function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
	(i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
	m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
	})(window,document,'script','https://www.google-analytics.com/analytics.js','ga');
	ga('create', 'UA-80508583-1', 'auto');
	ga('send', 'pageview');
</script>


<div id="category-pg" style="width: 100%; margin-top: 10px;" ng-init="ctgController.init()">
	<div class="searchPageAdsAndFilter">
		<div class="filterAllAds">
			<div style="padding: 20px; text-align: center; color: #757575; font-size: 16px; border-bottom: 1px solid #eee;">Search Options</div>
			<div>
				<div style="padding: 1px 20px;">
					<!-- category dropdown -->
					<md-input-container class="md-block">
						<label>Category</label>
						<md-select ng-model="ctgController.filter.category">
							<md-option ng-repeat="category in ctgController.utilService.categories" value="{{category.value}}">
								{{category.display}}
							</md-option>
						</md-select>
				    </md-input-container>
				</div>
			</div>
			<div>
				<div style="padding: 1px 20px;">
					<!-- district dropdown -->
					<md-input-container class="md-block">
						<label>District</label>
						<md-select ng-model="ctgController.filter.district">
							<md-option ng-repeat="district in ctgController.utilService.districts" value="{{district.value}}">
								{{district.display}}
							</md-option>
						</md-select>
				    </md-input-container>
				</div>
			</div>
			<div class="filterAllAdsByPrice">
				<h5 style="margin-left: 5px; color: #00BCD4;"><b>Price</b></h5>
				<div style="padding: 1px 20px;">
					<md-input-container class="md-block">
						<label>Min(Rs)</label>
						<input type="text" ng-model="ctgController.showAllAds.filter.min">
				    </md-input-container>
				    <md-input-container class="md-block">
						<label>Max(Rs)</label>
						<input type="text" ng-model="ctgController.showAllAds.filter.max">
				    </md-input-container>
				</div>  
			</div>
			<div class="filterAllAdsSubmit btn-group btn-group-justified">
				<a class="btn btn-primary" style="width: 95%; height: 40px; margin: auto;" ui-sref="searchAds({q: undefined, category: ctgController.filter.category , district: ctgController.filter.district, min: ctgController.filter.min , max: ctgController.filter.max})">
					<div style="font-size: 14px; margin: auto;">Search</div>
				</a>
			</div>
		</div>
		
		<div class="searchPageAds">
			<ul>
				<li ng-repeat="adElm in ctgController.ads" >
					<a ui-sref="viewMore({CATEGORY:adElm.category, ID:adElm.id})">
						<div class ="searchPageAdsTemplate">
    						<div class ="searchAdsImageDiv">
          						<img src="/images/{{adElm.image}}" alt="Trolltunga Norway" width="160" height="120">
          					</div>
          					<div>
	          					<div>
	          						<h4 style="color: #2196F3  "><b>{{adElm.header}} </b></h4>
	          					</div>
	          					<div>
	          						<h6 style="color: #616161">Posted Date : {{adElm.stringDate}}</h6>
								</div>
	          					<div>
	                    			<h6 style="color: #616161">{{adElm.details}}</h6>
	                    		</div>
	                    	</div>
                    		<div class="searchAdsViewCountDiv">
								<i class="material-icons" style="margin: auto;">remove_red_eye</i>
								<span style="margin: auto;" >&nbsp : &nbsp</span> 
								<h5 style="margin: auto;" >{{adElm.viewCount}}</h5>
							</div>
  						</div>
      				</a>
      				<div class = "searchPageAdsTemplateBlank"></div>
				</li>
			</ul>
		</div>
	</div>
	
	
</div>

