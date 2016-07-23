<style>
	img[data-u] {
		position: relative !important;
    	max-width: 100% !important;
    	margin: auto;
    	height: auto !important;
    	max-height: none;
	}
</style>

<script>
	(function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
	(i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
	m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
	})(window,document,'script','https://www.google-analytics.com/analytics.js','ga');

	ga('create', 'UA-80508583-1', 'auto');
	ga('send', 'pageview');
</script>


<div class="viewMorePage" >

	<div style="width : 850px; margin-top: 10px;" class="viewMoreBody" ng-repeat="category in vMController.categories">
		<div  style="padding: 8px; ">
      		<div> 
      			<div class="dn-flex" style="font-size: 20px; color : #006064; padding: 20px;"><span>{{category.header}}</span></div>
      			<div  id = "viewMoreContactSellerButton" class="viewMoreContactSellerButton btn-group btn-group-justified" >
 					<button style="width:100%;height:40px"  ng-click="vMController.contactSeller_func(category.userName)" class="btn btn-primary" >
 					Contact Seller
 					</button>
				</div>
				
				<div  id = "viewMoreUpdateHotelButton" class="viewMoreContactSellerButton btn-group btn-group-justified" >
 					<button style="width:100%;height:40px"  ng-click="vMController.updateHotel_func(category.id)" class="btn btn-primary" >
 					Update Hotel
 					</button>
				</div>
				
				
				<div  id = "viewMoreBookHotelButtonDiv" class="viewMoreBookHotelButton btn-group btn-group-justified" >
 					<button style="width:100%;height:40px"  ng-click="vMController.bookHotel_func(category.id,category.userName)" class="btn btn-primary" >
 					Book Hotel
 					</button>
				</div>
      			
      			
      			
      			<div class="dn-flex"> 
      				  
	  				<div class="dn-mo" style="width: 700px;">     
						<div id="jssor_2" style="position: relative; margin: 0 auto; top: 0px; left: 0px; width: 700px; height: 456px; overflow: hidden; visibility: hidden; background-color: #24262e;">
					        <div data-u="loading" style="position: absolute; top: 0px; left: 0px;">
					            <div style="filter: alpha(opacity=70); opacity: 0.7; position: absolute; display: block; top: 0px; left: 0px; width: 100%; height: 100%;"></div>
					            <div style="position:absolute;display:block;background:url('img/loading.gif') no-repeat center center;top:0px;left:0px;width:100%;height:100%;"></div>
					        </div>
					        <div data-u="slides" style="cursor: default; position: relative; top: 0px; left: 0px; width: 700px; height: 356px; overflow: hidden; display: flex;">
					            <div data-p="144.50" style="display: none; width: auto; margin: auto;">
					                <img data-u="image" src="/images/{{category.image}}" style="width: auto;"/>
					            </div>
					            <div data-p="144.50" style="display: none; width: auto; margin: auto;">
					                <img data-u="image" src="/images/{{category.otherImages[0]}}" style="width: auto;"/>
					            </div>
					            <div data-p="144.50" style="display: none; width: auto; margin: auto;">
					                <img data-u="image" src="/images/{{category.otherImages[1]}}" style="width: auto;"/>
					            </div>
					            <div data-p="144.50" style="display: none; width: auto; margin: auto;">
					                <img data-u="image" src="/images/{{category.otherImages[2]}}" style="width: auto;"/>
					            </div>
					        
					        </div>
					        <div data-u="thumbnavigator" class="jssort01" style="position:absolute;left:0px;bottom:0px;width:800px;height:100px;" data-autocenter="1">
					            <div data-u="slides" style="cursor: default;">
					                <div data-u="prototype" class="p">
					                    <div class="w" style="display: flex; ">
					                        <div data-u="thumbnailtemplate" class="t"></div>
					                    </div>
					                    <div class="c"></div>
					                </div>
					            </div>
					        </div>
					        <span data-u="arrowleft" class="jssora05l" style="top:158px;left:8px;width:40px;height:40px;"></span>
					        <span data-u="arrowright" class="jssora05r" style="top:158px;right:8px;width:40px;height:40px;"></span>
					    </div> 
	  				</div> 
	  				
	      		</div>
	      		
	      		<div style="padding: 20px; font-size: 15px; ">  
      				<div style="padding: 10px 0; display: flex; border-bottom: 1px solid #eee;"><i class="material-icons" style="color : #00838F">smartphone</i><b style="margin: auto 0; ">Mobile : </b><span style="margin: auto 0; ">{{category.mobile}}<span></div>
      				<div style="padding: 10px 0; display: flex; border-bottom: 1px solid #eee;"><i class="material-icons" style="color : #00838F">email</i><b style="margin: auto 0; ">Email : </b><span style="margin: auto 0; ">{{category.email}}<span></div>
      			</div>
				<div style="padding: 20px;"> <h5> {{category.moreDescription}} </h5></div>         
				<div style="padding: 20px;" ><div id="map" style=" width:100%; height:400px; " ng-init="vMController.init(category.dlat,category.dlan,category.category,category.userName)" ></div></div>
  			</div>
		</div>
		<div style="width:100%;height:40px">
	<div class="viewMoreUpgradeButton btn-group btn-group-justified" >
 	<a ui-sref="searchAds({searchTag: inputSearch , searchDistrict: selectedDistrict.title})" class="btn btn-primary" >
 	Upgrade
 	</a>
	</div>
	<div class="viewMoreEditButton btn-group btn-group-justified" >
 	<button style="width:100%;height:40px"  ng-click="vMController.editAd_func(category.id,category.userName)" class="btn btn-primary" >
 	Edit
 	</button>
	</div>	
	<div class="viewMoreDeleteButton btn-group btn-group-justified" >
 	<button style="width:100%;height:40px"  ng-click="vMController.deleteAd_func(category.id,category.userName)" class="btn btn-primary" >
 	Delete
 	</button>
	</div>
	</div>

	</div>
</div>
