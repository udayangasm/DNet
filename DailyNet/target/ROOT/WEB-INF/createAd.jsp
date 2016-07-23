
<html  ng-app ="createAd">
	<head>  
	    <title>Create User</title>  
		<script src="http://maps.googleapis.com/maps/api/js"></script>
	  
		<link rel="stylesheet" href="resources/css/bootstrap.css" />
	   
	    <script src="resources/js/angular.js"></script>
	    <script src="resources/js/angular-ui-router.js"></script>
		<script src="resources/js/createAd.js"></script>
	   
	   
	    <link rel="stylesheet" href="resources/css/bootstrap.min.css">
		<link rel="stylesheet" href="resources/css/jquery.smartmenus.bootstrap.css" >
		<link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons" >
		<link rel="stylesheet" href="resources/css/font-awesome.min.css">
	    <link rel="stylesheet" href="resources/css/jquery-ui.css">
	    <link rel="stylesheet" href="http://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.4.0/css/font-awesome.min.css">
	 
	 <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
	    <script type="text/javascript"  src="resources/js/jquery-1.10.2.js"></script>
	    <script type="text/javascript"  src="resources/js/1.11.4/jquery-ui.js"></script>
	    <script type="text/javascript"  src="https://maps.googleapis.com/maps/api/js?callback=initMap" async defer></script>
	 	<script type="text/javascript"  src="resources/js/jssor.slider.mini.js"></script>
	 
		<script type="text/javascript"  src="resources/js/service/ItemService.js"></script>
		<script type="text/javascript"  src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>	
   
		<script type="text/javascript"  src="resources/js/services/ItemService.js"></script>
		
   
	    <style> 
	    
	    
	    #panel, #flip {
    padding: 5px;
    text-align: center;
    background-color: #e5eecc;
    border: solid 1px #c3c3c3;
}

#panel {
    padding: 50px;
    display: none;
}
	    
			div.image {
			    position: absolute;
			    top: 25px;
			    left: 25px;
			    width: 250px;
			    height: 250px;
				border: 3px solid #73AD21;
			}
	
			div.location {
			    position: absolute;
			    top: 500px;
			    left: 25px;
			    width: 450px;
			    height: 450px;
			    border: 3px solid #73AD21;
			}
	
			div.fullPage{width: 100%;  background: #eee;}
			
			div.detailsArea {
				width: 850px; 
				margin : 20px auto auto auto;
				background: #fff;
				position : relative;
			}
			
			div.enterHeader {
				display: flex;
			}
			
			div.selectSubmit {
				margin-top: 10px;
			    position: absolute;
			    right: 50px;
			    bottom: 50px;
			    font-size: 20px;
		    }
		    
		    div.selectSubmit > input {
		    	padding : 10px;
		    	font-size : 15px;
		    }
			
			
			div.pageHeader {
				width: 100%;
				border: 1px solid gray;
				height: 85px;
    			background-color: #00838F;
			}
			
			div.pageLogin{position: absolute; top: 5px; right: 0px;  width: 75px;  height: 20px; }
			
			div.pageLoginDivider{position: absolute; top: 5px; right: 90px;  width: 1px;  height: 17px;   border: 2px solid white;}
			
			div.pageLanguage{position: absolute; top: 5px; right: 100px;  width: 60px;  height: 20px;  }
			
			div.contactUs{position: absolute; top: 5px; right: 200px;  width: 75px;  height: 20px;  }
			
			div.home_header{position: absolute; top: 5px; left: 50px;  width: 75px;  height: 20px; color:white }
			
			div.footer{
				width: 100%;
				border: 2px solid gray;
				background-color: #00838F;
				height : 100px;
			}
			
			div.socialMedia{margin: auto 126px auto 0px;}
			
			ul.socialMediaUl {	overflow: auto;	margin-left:-34px;}
			
			ul.socialMediaUl li {	list-style-type: none;	float: left;}
			
			ul.socialMediaUl li a i {	background: #205D7A;	color: #fff;	width: 40px;	height: 40px;	border-radius: 20px;	font-size: 25px;	text-align: center;	margin-right: 10px;	padding-top: 15%;}
			
			.fa-facebook {	background:#3b5998}
			 
			.fa-linkedin {	background:#007bb6}
			
			.fa-twitter {	background:#00aced}
			
			.google-plus {	background:#dd4b39}
			
			ul.socialMediaUl li a i {	transition: all 0.2s ease-in-out;}
			
			ul.socialMediaUl li a i:hover {	opacity: .7;}
			
			div.termsAndConditions {
				margin: auto 10px;
			}
			
			div.termsAndConditionsDivider {
				margin: auto 0;
			    height: 17px;
			    width: 1px;
			    background: #fff;
			    border: 2px solid #fff;
			}
			
			.welcome-bnner {
				text-align: center;
			    font-size: 32px;
			    font-weight: bold;
			    color: #35181F;
			    padding: 10px;
			}
			
			.mo {
				margin: auto;
			}
			
			.flex {
				display: flex;
			}
			
			.detailsArea hr {
				display: block;
			    border-style: inset;
			    border-width: 1px;
			    width : 100%;
			    margin: auto;
			}
	    
		</style>
		  
		<script>
 
			function changeLocation() {
				var arr= marker.getPosition();
				document.getElementById("locationlng").value = arr.lng(); 
				document.getElementById("locationlat").value = arr.lat();
				
				
				
			}
 
			function download_image() {
			    if($.browser.safari) {// Fix for Chrome
			        var transform=$(".gm-style>div:first>div").css("transform");
			        var comp=transform.split(","); //split up the transform matrix
			        var mapleft=parseFloat(comp[4]); //get left value
			        var maptop=parseFloat(comp[5]);  //get top value
			        $(".gm-style>div:first>div").css({ //get the map container. not sure if stable
			          "transform":"none",
			          "left":mapleft,
			          "top":maptop,
			        });
			    }
	
			    html2canvas([$("#div_id")[0]], {
			        logging: false,
			        useCORS: true,
			        onrendered: function (canvas) {
			            if ($("#downloadimg").length > 0)
			                $("#downloadimg").remove();
			            var fileName = "file_name.png";
			            if (/\bMSIE|Trident\b/.test(navigator.userAgent) && $.browser.version.match(/9.0|10.0|11.0/)) {//Only for IE 9, 10 and 11
			                download_image_IE(canvas, fileName);
			            }
			            else {
			                $("body").append("<a id='downloadimg' download='" + fileName + "' href='" + canvas.toDataURL("image/png").replace("image/png", "image/octet-stream") + "'><a/>");
			            }
			            if ($("#downloadimg").length > 0)
			                $("#downloadimg")[0].click();
		
			            if($.browser.safari) {// Fix for Chrome
			                $(".gm-style>div:first>div").css({
			                  left:0,
			                  top:0,
			                  "transform":transform
			                });
			            }
			        }
			    });
			}
	
			function download_image_IE(canvas, filename) {
			    if ($.browser.version.match(/9.0/)){ //Only for IE9
			        var w = window.open();
			        $(w.document.body).html('<img src="'+ canvas.toDataURL() +'"/>');
			    }
			    else{
			        var image = canvas.toDataURL();
			        image = image.substring(22); // remove data stuff
			        var byteString = atob(image);
			        var buffer = new ArrayBuffer(byteString.length);
			        var intArray = new Uint8Array(buffer);
			        for (var i = 0; i < byteString.length; i++) {
			            intArray[i] = byteString.charCodeAt(i);
			        }
			        var blob = new Blob([buffer], { type: "image/png" });
			        window.navigator.msSaveOrOpenBlob(blob, filename);
			    }
			}
			
			var loadFile = function(event, id) {
			  // var output = document.getElementById('output');
			  var src = URL.createObjectURL(event.target.files[0]);
			  // output.src = src;
			   var arr= marker.getPosition();
			   
			   // set image array;
			   
			   if (angular.isNumber(id) ) {
			   		
			   		var postScope = angular.element(document.getElementById('myForm')).scope();
			   		postScope.info.selectedImage = src;
			   		postScope.info.images[id] = src;
			   		postScope.apply();
			   }
			   
			};
			 
			var loadDropDown = function(event) {
				var e = document.getElementById("dropDown");
				var strUser = e.options[e.selectedIndex].text;
				document.getElementById("hiddenFeild").value = strUser; 
				
				if (strUser =='VEHICLES'){
					document.getElementById("vehiclePanel").style.display = 'block';
				}
				else{
					document.getElementById("vehiclePanel").style.display = 'none';
				}
				
				if (strUser =='HOUSE AND PROPERTY'){
					document.getElementById("houseAndPropertyPanel").style.display = 'block';
				}
				else{
					document.getElementById("houseAndPropertyPanel").style.display = 'none';
				}
			
				if (strUser =='HOTELS'){
					document.getElementById("hotelsPanel").style.display = 'block';
				}
				else{
					document.getElementById("hotelsPanel").style.display = 'none';
				}
				if (strUser =='ELECTRONICS'){
					document.getElementById("electronicsPanel").style.display = 'block';
				}
				else{
					document.getElementById("electronicsPanel").style.display = 'none';
				}
				
				if (strUser =='FASHION AND BEAUTY'){
					document.getElementById("fasionPanel").style.display = 'block';
				}
				else{
					document.getElementById("fasionPanel").style.display = 'none';
				}
				
				if (strUser =='OTHER'){
					document.getElementById("otherPanel").style.display = 'block';
				}
				else{
					document.getElementById("otherPanel").style.display = 'none';
				}
			
				
				
			}
	 
	 
			var loadDropDownCity = function(event) {
				var e = document.getElementById("dropDownCity");
				var strUser = e.options[e.selectedIndex].text;
				document.getElementById("hiddenFeildCity").value = strUser; 
			}
	
			var marker;
			function initialize() {
		     
				var myLatlng = new google.maps.LatLng(6.9,79.9);
				var mapOptions = {
				   zoom: 10,
				   center: myLatlng
				}
				var map = new google.maps.Map(document.getElementById("map"), mapOptions);
			
				// Place a draggable marker on the map
				marker = new google.maps.Marker({
			     	position: myLatlng,
			     	map: map,
			     	draggable:true,
			     	title:"Drag me!"
				});
				
				
				
			}
			
			
		
			
			
		</script>
  	</head>
  
	<body onload="initialize()" ng-controller="PostAdController">
		<div class="fullPage">
			<div class="pageHeader" ng-init="initial_Func()">
				<div class="pageLogin"><button class="btn-group btn-group-justified" ng-click="login_user_func()"><p id="loginLogout" style="color: black;"></p></button></div>

				<div class="pageLoginDivider"></div>
				<div class="pageLanguage"><p style="color: white;"><b>English</b></p></div>
				<div class="contactUs"> <p id="userName" style="color: white;"></p></div>
			</div>
	
			<div class="detailsArea">
				<div class="welcome-bnner">
  			 		<span>Welcome! Post your free Ad here</span>
  			 	</div>	
  			 	<form method="post" action="savefiles" modelAttribute="uploadForm" enctype="multipart/form-data" id="myForm" style="padding: 50px; ">
  			 		
          			<div class ="flex">
          				<h5 class ="flex">
							<span style="margin: auto 15px auto 0;">Header</span>
							<textarea rows="2" cols="40" id="header" name="header" placeholder="Enter header here" ng-required="true"></textarea>
						</h5>
					</div>
					
          			<div class="flex" style="padding: 20px 0; ">
						<hr>
							<span style="padding: 0 10px; font-size: 14px; color: #8A8A8A; " class="mo">Images</span>
						<hr>
					</div>
					<div class="flex">
						<div>
		          			<div class ="selectMainImage flex">
		          				<div>
		          					<h5>Image 1</h5>
		          					<input name="files[0]" type="file"  id="selectedFile" onchange="loadFile(event, 0)" ng-required="true"/>
		          				</div>
		          				<div>
		          					<img id="post-img-0" style="padding: 5px;" width="100px" height="100px" ng-src="{{info.images[0]}}" ng-click="info.selectedImage = info.images[0]" />
		          				</div>
		          			</div>
		          							
		          			<div class="selectOtherImage1 flex">
		          				<div>
		          					<h5>Image 2</h5>
		          					<!-- <input name="files[1]" type="file"  id="selectedFile2" onchange="loadFileImg2(event)" /> -->
		          					<input name="files[1]" type="file"  id="selectedFile2" onchange="loadFile(event, 1)" ng-required="true"/>
		          				</div>
		          				<div>
		          					<img id="post-img-1" style="padding: 5px;" width="100px" height="100px" ng-src="{{info.images[1]}}" ng-click="info.selectedImage = info.images[1]" />
		          				</div>
		          			</div>
		          							
							<div class="selectOtherImage2 flex">
								<div>
									<h5>Image 3</h5>
									<!-- <input name="files[2]" type="file"  id="selectedFile3" onchange="loadFileImg2(event)"/> -->
									<input name="files[2]" type="file"  id="selectedFile3" onchange="loadFile(event, 2)" ng-required="true" />
								</div>
								<div>
		          					<img id="post-img-2" style="padding: 5px;" width="100px" height="100px" ng-src="{{info.images[2]}}" ng-click="info.selectedImage = info.images[2]" />
		          				</div>
							</div>
		          							
							<div class="selectOtherImage3 flex">
								<div>
									<h5>Image 4</h5>
									<!-- <input name="files[3]" type="file"  id="selectedFile4" onchange="loadFileImg4(event)"/> -->
									<input name="files[3]" type="file"  id="selectedFile4" onchange="loadFile(event, 3)" ng-required="true"/>
								</div>
								<div>
		          					<img id="post-img-3" style="padding: 5px;" width="100px" height="100px" ng-src="{{info.images[3]}}" ng-click="info.selectedImage = info.images[3]" />
		          				</div>
							</div>
						</div>
						<div class="mo" >
							<img id="output" width="300px" height="300px" ng-src="{{info.selectedImage}}"/>
						</div>
					</div>
				
					<div class="flex" style="padding: 20px 0; ">
						<hr>
							<span style="padding: 0 10px; font-size: 14px; color: #8A8A8A; " class="mo">Information</span>
						<hr>
					</div>
          							
          			<div class="flex">
          				<h5 class="flex"> 
          					<span style="margin: auto 15px auto 0;">District</span>
          					<select id="dropDownCity" onchange="loadDropDownCity(event)">
    							<option>Select</option>
								<option>Ampara</option>
			                   	<option>Anuradhapura</option>
			                   	<option>Badulla</option>
			                   	<option>Batticaloa</option>
			                   	<option>Colombo</option>
			                   	<option>Galle</option>
			                   	<option>Gampaha</option>
			                   	<option>Hambantota</option>
			                   	<option>Jaffna</option>
			                   	<option>Kalutara</option>
			                   	<option>Kandy</option>
			                   	<option>Kegalle</option>
			                   	<option>Kilinochchi</option>
			                   	<option>Kurunegala</option>
			                   	<option>Mannar</option>
			                   	<option>Monaragala</option>
			                   	<option>Mullaitivu</option>
			                   	<option>Nuwara Eliya</option>
			                   	<option>Polonnaruwa</option>
			                   	<option>Puttalam</option>
			                   	<option>Ratnapura</option>
			                   	<option>Trincomalee</option>
			                   	<option>Vavuniya</option>
  							</select>
          				</h5>
          			</div>
          					
          			<div class ="flex">
          				<h5 class ="flex">
							<span style="margin: auto 15px auto 0;">Mobile</span>
							<input type="text" id="mobile_number" name="mobile_number" placeholder="Mobile number" ng-required="true">
						</h5>
					</div>
					<div class ="flex">
          				<h5 class ="flex">
							<span style="margin: auto 15px auto 0;">Email</span>
							<input type="text" id="email_address" name="email_address" placeholder="Email" ng-required="true">
						</h5>
					</div>
  					
          			<div class="flex">
          				<h5 class="flex"> 
          					<span style="margin: auto 15px auto 0;">Category</span>
        					<select id="dropDown" onchange="loadDropDown(event)" name="dropDown">
    							<option>Select</option>
    							<option>HOTELS</option>
    							<option>HOUSE AND PROPERTY</option>
    							<option>VEHICLES</option>
    							<option>ELECTRONICS</option>
    							<option>FASHION AND BEAUTY</option>
    							<option>OTHER</option>
  							</select>
          				</h5>			
					</div>
					
					
					
					<div  id="vehiclePanel" style=" display: none;height: 300px;margin-left: 50px;">
          				<h5 class ="flex">
          					<span style="margin: 0 15px auto 0;">Brand</span>
  							<textarea rows="1" cols="10" id="vehicleBrand" name="vehicleBrand"  ></textarea>
  						</h5>
  						
  						<h5 class ="flex">
          					<span style="margin: 0 15px auto 0;">Model Year</span>
  							<textarea rows="1" cols="10" id="vehicleModelYear" name="vehicleModelYear"  ></textarea>
  						</h5>
  						
  						<h5 class ="flex">
          					<span style="margin: 0 15px auto 0;">Vehicle Condition</span>
  							<textarea rows="1" cols="10" id="vehicleCondition" name="vehicleCondition"  ></textarea>
  						</h5>
  						
  						<h5 class ="flex">
          					<span style="margin: 0 15px auto 0;">Transmission</span>
  							<textarea rows="1" cols="10" id="vehicleTransmission" name="vehicleTransmission"  ></textarea>
  						</h5>
  						
  						<h5 class ="flex">
          					<span style="margin: 0 15px auto 0;">Model</span>
  							<textarea rows="1" cols="10" id="vehicleModel" name="vehicleModel"  ></textarea>
  						</h5>
  						
  						<h5 class ="flex">
          					<span style="margin: 0 15px auto 0;">Body Type</span>
  							<textarea rows="1" cols="10" id="vehicleBodyType" name="vehicleBodyType"  ></textarea>
  						</h5>
  						
  						<h5 class ="flex">
          					<span style="margin: 0 15px auto 0;">Fuel Type</span>
  							<textarea rows="1" cols="10" id="vehicleFuelType" name="vehicleFuelType"  ></textarea>
  						</h5>
  						
  						<h5 class ="flex">
          					<span style="margin: 0 15px auto 0;">Engin Capacity</span>
  							<textarea rows="1" cols="10" id="vehicleEnginCapacity" name="vehicleEnginCapacity"  ></textarea>
  						</h5>
  						
  						<h5 class ="flex">
          					<span style="margin: 0 15px auto 0;">Mileage</span>
  							<textarea rows="1" cols="10" id="vehicleMileage" name="vehicleMileage"  ></textarea>
  						</h5>
  						
  						<h5 class ="flex">
							<span style="margin: auto 15px auto 0;">Price</span>
							<textarea rows="1" cols="10" id="vehiclePrice" name="vehiclePrice"  ></textarea>
						</h5>
  						
          			</div>
					
					<div  id="houseAndPropertyPanel" style=" display: none;height: 100px;margin-left: 50px;">
          				<h5 class ="flex">
          					<span style="margin: 0 15px auto 0;">Address</span>
  							<textarea rows="1" cols="30" id="houseAndPropertyAddress" name="houseAndPropertyAddress"  ></textarea>
  						</h5>
  						
  						<h5 class ="flex">
          					<span style="margin: 0 15px auto 0;">Land Type</span>
  							<textarea rows="1" cols="10" id="houseAndPropertyLandType" name="houseAndPropertyLandType"  ></textarea>
  						</h5>
  						
  						<h5 class ="flex">
          					<span style="margin: 0 15px auto 0;">Land Size</span>
  							<textarea rows="1" cols="10" id="houseAndPropertyLandSize" name="houseAndPropertyLandSize"  ></textarea>
  						</h5>
  						
  						<h5 class ="flex">
							<span style="margin: auto 15px auto 0;">Price</span>
							<textarea rows="1" cols="10" id="houseAndPropertyPrice" name="houseAndPropertyPrice"  ></textarea>
						</h5>
  						
  						
          			</div>
					
					
					<div  id="hotelsPanel" style=" display: none;height: 180px;margin-left: 50px;">
          				<h5 class ="flex">
          					<span style="margin: 0 15px auto 0;">Rooms</span>
  							<textarea rows="1" cols="10" id="hotelsNumberOfRooms" name="hotelsNumberOfRooms"  ></textarea>
  						</h5>
  						
  						<h5 class ="flex">
          					<span style="margin: 0 15px auto 0;">Wedding Halls</span>
  							<textarea rows="1" cols="10" id="hotelsWeddingHalls" name="hotelsWeddingHalls"  ></textarea>
  						</h5>
  						
  						<h5 class ="flex">
          					<span style="margin: 0 15px auto 0;">Swimming Pools </span>
  							<textarea rows="1" cols="10" id="hotelsSwimmingPools" name="hotelsSwimmingPools"  ></textarea>
  						</h5>
  						
  						<h5 class ="flex">
          					<span style="margin: 0 15px auto 0;">Internet </span>
  							<textarea rows="1" cols="10" id="hotelsInternet" name="hotelsInternet"  ></textarea>
  						</h5>
  						
  						<h5 class ="flex">
          					<span style="margin: 0 15px auto 0;">Transport </span>
  							<textarea rows="1" cols="10" id="hotelsTransport" name="hotelsTransport"  ></textarea>
  						</h5>
  						
  						<h5 class ="flex">
          					<span style="margin: 0 15px auto 0;">Fitness & Recreation </span>
  							<textarea rows="1" cols="10" id="hotelsFitness" name="hotelsFitness"  ></textarea>
  						</h5>
  						
  						
  						
  						
  						
          			</div>
					
					
					<div  id="electronicsPanel" style=" display: none;height: 100px;margin-left: 50px;">
          			<h5 class ="flex">
          					<span style="margin: 0 15px auto 0;">Brand</span>
  							<textarea rows="1" cols="10" id="electronicBrand" name="electronicBrand"  ></textarea>
  						</h5>
  						
  						
  						<h5 class ="flex">
          					<span style="margin: 0 15px auto 0;">Condition</span>
  							<textarea rows="1" cols="10" id="electronicCondition" name="electronicCondition"  ></textarea>
  						</h5>
  						
  						<h5 class ="flex">
          					<span style="margin: 0 15px auto 0;">Model</span>
  							<textarea rows="1" cols="10" id="electronicModel" name="electronicModel"  ></textarea>
  						</h5>
  						
  						
  						<h5 class ="flex">
							<span style="margin: auto 15px auto 0;">Price</span>
							<textarea rows="1" cols="10" id="electronicPrice" name="electronicPrice"  ></textarea>
						</h5>
  						
  						
  						
          			</div>
					
					
					<div  id="fasionPanel" style=" display: none;height: 60px;margin-left: 50px;">
          			<h5 class ="flex">
          					<span style="margin: 0 15px auto 0;">Item</span>
  							<textarea rows="1" cols="10" id="fasionItem" name="fasionItem"  ></textarea>
  						</h5>
  						
  						
  						<h5 class ="flex">
							<span style="margin: auto 15px auto 0;">Price</span>
							<textarea rows="1" cols="10" id="fasionPrice" name="fasionPrice"  ></textarea>
						</h5>
  						
  						
  						
          			</div>
					
					<div  id="otherPanel" style=" display: none;height: 30px;margin-left: 50px;">
          			
          				<h5 class ="flex">
							<span style="margin: auto 15px auto 0;">Price</span>
							<textarea rows="1" cols="10" id="otherPrice" name="otherPrice"  ></textarea>
						</h5>
  						
          			</div>
					
					
					
          			<div class ="flex">
          				<h5 class ="flex">
          					<span style="margin: 0 15px auto 0;">Tags(Sperated by commas)</span>
          					<textarea rows="1" cols="40" id ="tags" name="tags"  placeholder="Search tags" ng-required="true"></textarea>
          				</h5>
          			</div>
          			
          			<div class ="flex">
          				<h5 class ="flex">
          					<span style="margin: 0 15px auto 0;">Description</span>
  							<textarea rows="10" cols="60" id="moreDescription" name="moreDescription"  placeholder="Description" ng-required="true"></textarea>
  						</h5>
          			</div>
          			
					<div class="flex" style="padding: 20px 0; ">
						<hr>
							<span style="padding: 0 10px; font-size: 14px; color: #8A8A8A; " class="mo">Location</span>
						<hr>
					</div>
          							
                    <div class="selectMapLocation">
                    	<div id="map" style="width:600px; height:450px" onchange="changeLocation()"></div>
                    </div>
                    
          			<div class="selectComfirmLocation">
          				<button type="button" value="Comfirm Location"   onclick="changeLocation()" ng-click="submitDetails()"> Comfirm Location </button>
          			</div>
          			
          			<div class="selectSubmit">
          				<input type="submit" value="Submit"  class="btn btn-warning btn-sm" onclick="add" />
  					</div>
  					
        			<input type="hidden" id = "hiddenFeild" name = "hiddenFeild"  value="udayanga"/> 		
      				<input type="hidden" id = "hiddenFeildCity" name = "hiddenFeildCity"  value="udayanga"/> 		
      				<input type="hidden" id = "locationlng" name = "locationlng"  /> 		
      				<input type="hidden" id = "locationlat" name = "locationlat"  />
      				<input type="hidden" id = "loggedUserName" name = "loggedUserName"  />
      						
     				<br>
	 				<br>
		  		</form>
			</div>
			<div class = "footer flex">

				<div class="socialMedia">
					<ul class = "socialMediaUl">
						<li><a href="https://www.facebook.com/DailyNet-1406722499402359/"><i class="fa fa-facebook" style="font-size:25px"></i></a></li>
						<li><a href="http://linkedin.com/"><i class="fa fa-linkedin" style="font-size:25px"></i></a></li>
						<li><a href="http://twitter.com/"><i class="fa fa-twitter" style="font-size:25px"></i></a></li>
						<li><a href="http://plus.google.com/"><i class="fa fa-google-plus" style="font-size:25px"></i> </a></li>
					</ul>
				</div>
	
				<div class = "termsAndConditions">
					<p style="color: white; text-align: center; margin: 0; "><b>Terms and Conditions</b></p>
				</div>
	
				<div class = "termsAndConditionsDivider"></div>
				
				<div class = "termsAndConditions">
					<p style="color: white;text-align: center; margin: 0;"><b>Privacy Policy</b></p>
				</div>
	
				<div class = "termsAndConditionsDivider"></div>
	
				<div class = "termsAndConditions">
					<p style="color: white;text-align: center; margin: 0;"><b>FAQs</b></p>
				</div>
	
				<div class = "termsAndConditionsDivider"></div>
	
				<div class = "termsAndConditions">
					<p style="color: white;text-align: center; margin: 0;"><b>About Us</b></p>
				</div>
			</div>
		</div>
	</body>
</html>