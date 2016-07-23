		<div class="fullPage" >
			<div class="pageHeader" ng-init="initial_Func()">
				<div class="pageLogin"><button class="btn-group btn-group-justified" ng-click="login_user_func()"><p id="loginLogout" style="color: black;"></p></button></div>

				<div class="pageLoginDivider"></div>
				<div class="pageLanguage"><p style="color: white;"><b>English</b></p></div>
				<div class="contactUs"> <p id="userName" style="color: white;"></p></div>
			</div>
	
	<ul>
		  		<li ng-repeat="category in ctgController2.categories">
		  		
			<div class="editAddetailsArea"   >
				<div class="welcome-bnner">
  			 		<span>Welcome! Update your  Ad here</span>
  			 	</div>	
  			 	<form method="post" action="updateAdvertisment" modelAttribute="uploadForm" enctype="multipart/form-data" id="myForm" style="padding: 50px; ">
  			 		
          			<div class ="flex">
          				<h5 class ="flex">
							<span style="margin: auto 15px auto 0;">Header</span>
							<textarea rows="2" cols="40"   id="header" name="header"   ng-required="true">{{category.header}}</textarea>
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
		          					<h5>Image 1 (Replace With New One)</h5>
		          					<input name="files[0]" type="file"  id="selectedFile" onchange="loadFile(event, 0)" />
		          				</div>
		          				<div>
		          					<img id="post-img-0" style="padding: 5px;" width="50px" height="50px" src="/images/{{category.image}}" ng-click="info.selectedImage = info.images[0]" />
		          				</div>
		          			</div>
		          							
		          			<div class="selectOtherImage1 flex">
		          				<div>
		          					<h5>Image 2 (Replace With New One)</h5>
		          					<!-- <input name="files[1]" type="file"  id="selectedFile2" onchange="loadFileImg2(event)" /> -->
		          					<input name="files[1]" type="file"  id="selectedFile2" onchange="loadFile(event, 1)" />
		          				</div>
		          				<div>
		          					<img id="post-img-1" style="padding: 5px;" width="50px" height="50px" src="/images/{{category.otherImages[0]}}" ng-click="info.selectedImage = info.images[1]" />
		          				</div>
		          			</div>
		          							
							<div class="selectOtherImage2 flex">
								<div>
									<h5>Image 3 (Replace With New One)</h5>
									<!-- <input name="files[2]" type="file"  id="selectedFile3" onchange="loadFileImg2(event)"/> -->
									<input name="files[2]" type="file"  id="selectedFile3" onchange="loadFile(event, 2)"  />
								</div>
								<div>
		          					<img id="post-img-2" style="padding: 5px;" width="50px" height="50px" src="/images/{{category.otherImages[1]}}" ng-click="info.selectedImage = info.images[2]" />
		          				</div>
							</div>
		          							
							<div class="selectOtherImage3 flex">
								<div>
									<h5>Image 4 (Replace With New One)</h5>
									<!-- <input name="files[3]" type="file"  id="selectedFile4" onchange="loadFileImg4(event)"/> -->
									<input name="files[3]" type="file"  id="selectedFile4" onchange="loadFile(event, 3)" />
								</div>
								<div>
		          					<img id="post-img-3" style="padding: 5px;" width="50px" height="50px" src="/images/{{category.otherImages[2]}}" ng-click="info.selectedImage = info.images[3]" />
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
          					<select id="dropDownCity" onchange="loadDropDownCity(event)" >
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
							<input type="text" id="mobile_number" name="mobile_number" value = "{{category.mobile}}"  ng-required="true">
						</h5>
					</div>
					<div class ="flex">
          				<h5 class ="flex">
							<span style="margin: auto 15px auto 0;">Email</span>
							<input type="text" id="email_address" name="email_address" value = "{{category.email}}" ng-required="true">
						</h5>
					</div>
  					
          			<div class="flex">
          				<h5 class="flex"> 
          					<span style="margin: auto 15px auto 0;">Category</span>
        					<select id="dropDown" onchange="loadDropDown(event)" name="dropDown" >
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
          					<textarea rows="1" cols="40" id ="tags" name="tags"  placeholder="Search tags" ng-required="true">
          					{{category.tags[0]+','+category.tags[1]+','+category.tags[2]+','+category.tags[3]+','+category.tags[4]}}
          					</textarea>
          				</h5>
          			</div>
          			
          			<div class ="flex">
          				<h5 class ="flex">
          					<span style="margin: 0 15px auto 0;">Description</span>
  							<textarea rows="10" cols="60" id="moreDescription" name="moreDescription"  placeholder="Description" ng-required="true">
  							{{category.moreDescription}}
  							</textarea>
  						</h5>
          			</div>
          			
					<div class="flex" style="padding: 20px 0; ">
						<hr>
							<span style="padding: 0 10px; font-size: 14px; color: #8A8A8A; " class="mo">Location</span>
						<hr>
					</div>
          							
                    <div class="selectMapLocation">
                    	<div id="map" style="width:600px; height:450px" onchange="changeLocation()" ng-init="ctgController2.init(category.dlat,category.dlan,category.city, category.category,category.description)"></div>
                    </div>
                    
          			<div class="selectComfirmLocation">
          				<button type="button" value="Comfirm Location"   onclick="changeLocation()"> Comfirm Location </button>
          			</div>
          			
          			<div class="selectSubmit">
          				<input type="submit" value="Update"  class="btn btn-warning btn-sm" onclick="Update"/>
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
			
			
			</li>
			</ul>
			<div class = "footerEditAd flex">

				<div class="socialMedia">
					<ul class = "socialMediaUl">
						<li><a href="https://www.facebook.com/DailyNet-1406722499402359/"><i class="fa fa-facebook" style="font-size:25px"></i></a></li>
						<li><a href="http://linkedin.com/"><i class="fa fa-linkedin" style="font-size:25px"></i></a></li>
						<li><a href="http://twitter.com/"><i class="fa fa-twitter" style="font-size:25px"></i></a></li>
						<li><a href="http://plus.google.com/"><i class="fa fa-google-plus" style="font-size:25px"></i> </a></li>
					</ul>
				</div>
	
				<div class = "termsAndConditionsEditAd">
					<p style="color: white; text-align: center; margin: 0; "><b>Terms and Conditions</b></p>
				</div>
	
				<div class = "termsAndConditionsDividerEditAd"></div>
				
				<div class = "termsAndConditionsEditAd">
					<p style="color: white;text-align: center; margin: 0;"><b>Privacy Policy</b></p>
				</div>
	
				<div class = "termsAndConditionsDividerEditAd"></div>
	
				<div class = "termsAndConditionsEditAd">
					<p style="color: white;text-align: center; margin: 0;"><b>FAQs</b></p>
				</div>
	
				<div class = "termsAndConditionsDividerEditAd"></div>
	
				<div class = "termsAndConditionsEditAd">
					<p style="color: white;text-align: center; margin: 0;"><b>About Us</b></p>
				</div>
			</div>
		</div>
		
		
		