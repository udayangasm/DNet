
<html  ng-app ="createAd">
  <head>  
    <title>Create User</title>  
      <script src="http://maps.googleapis.com/maps/api/js"></script>
  
       <link rel="stylesheet" href="resources/css/bootstrap.css" />
    <link rel="stylesheet" href="resources/css/app.css" />
    <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.4.4/angular.js"></script>
    <script src="http://angular-ui.github.io/ui-router/release/angular-ui-router.js"></script>
	
	
	
	<script src="resources/js/createAd.js"></script>
   
   
    <link rel="stylesheet" href="resources/css/bootstrap.min.css">
	<link rel="stylesheet" href="resources/css/jquery.smartmenus.bootstrap.css" >
	<link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons" >
	<link rel="stylesheet" href="resources/css/font-awesome.min.css">
    <link rel="stylesheet" href="resources/css/jquery-ui.css">
     <link rel="stylesheet" href="http://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.4.0/css/font-awesome.min.css">
 
 
    <script type="text/javascript"  src="resources/js/jquery-1.10.2.js"></script>
    <script type="text/javascript"  src="resources/js/jquery-ui.js"></script>
    <script type="text/javascript"  src="https://maps.googleapis.com/maps/api/js?callback=initMap" async defer></script>
 	<script type="text/javascript"  src="resources/js/jssor.slider.mini.js"></script>
 	<script type="text/javascript"  src="resources/js/app.js"></script>
	<script type="text/javascript"  src="resources/js/service/ItemService.js"></script>
	<script type="text/javascript"  src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>	
	
   
   
    <style> 
    
 

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


    
    
div.fullPage{position: relative; top: 0px; right: 0px;  width: 100%;  height: 1700px;   }

div.detailsArea{position: absolute; top: 100px; left: 100px;  width: 700px;  height: 1400px;  }

div.enterHeader{position: absolute; top: 0px; left: 0px;  width: 500px;  height: 50px;  }

div.selectMainImage{position: absolute; top: 50px; left: 0px;  width: 400px;  height: 300px;   }

div.selectOtherImage1{position: absolute; top: 350px; left: 0px;  width: 200px;  height: 100px;  }

div.selectOtherImage2{position: absolute; top: 350px; left: 200px;  width: 200px;  height: 100px;   }

div.selectOtherImage3{position: absolute; top: 350px; left: 400px;  width: 200px;  height: 100px;  }

div.selectCity{position: absolute; top: 450px; left: 0px;  width: 400px;  height: 50px;   }

div.selectPrice{position: absolute; top: 500px; left: 0px;  width: 400px;  height: 50px;  }

div.selectMobile{position: absolute; top: 550px; left: 0px;  width: 400px;  height: 50px;  }

div.selectEmail{position: absolute; top: 600px; left: 0px;  width: 400px;  height: 50px;   }

div.selectCategory{position: absolute; top: 650px; left: 0px;  width: 400px;  height: 50px;  }

div.selectTags{position: absolute; top: 700px; left: 0px;  width: 400px;  height: 50px;   }

div.enterMoreDiscription{position: absolute; top: 750px; left: 0px;  width: 400px;  height: 100px; }

div.selectMapLocation{position: absolute; top: 850px; left: 0px;  width: 600px;  height: 450px;   }

div.selectComfirmLocation{position: absolute; top: 1300px; left: 0px;  width: 400px;  height: 50px;  }

div.selectSubmit{position: absolute; top: 1350px; left: 0px;  width: 400px;  height: 50px;  }


div.pageHeader{position: absolute; top: 0px; right: 0px;  width: 100%;  height: 100px;   border: 1px solid gray; background-color: #9298eb;}

div.pageLogin{    position: absolute;  top: 20px;  right: 10px;  width: 120px;   height: 40px; }

div.pageLoginImage{    position: absolute; top: 15px; right: 147px; width: 50px; height: 40px;}

div.pageLoginDivider{position: absolute; top: 30px; right: 206px;  width: 1px; height: 40px; border: 2px solid white;}

div.contactUs{position: absolute; top: 25px; right: 179px; width: 250px; height: 40px; }

div.contactUsDivider{    position: absolute; top: 30px; right: 520px; width: 1px; height: 40px;  border: 2px solid white;}




div.footer{position: absolute; top: 1500px; right: 0px;  width: 100%;  height: 200px;     border: 2px solid gray;  background-color: black;}

div.socialMedia{    position: absolute;  top: 30px; left: 10px;  width: 220px;  height: 50px;}

ul.socialMediaUl {	overflow: auto;	margin-left:-34px;}

ul.socialMediaUl li {	list-style-type: none;	float: left;}

ul.socialMediaUl li a i {	background: #205D7A;	color: #fff;	width: 40px;	height: 40px;	border-radius: 20px;	font-size: 25px;	text-align: center;	margin-right: 10px;	padding-top: 15%;}

.fa-facebook {	background:#3b5998}
 
.fa-linkedin {	background:#007bb6}

.fa-twitter {	background:#00aced}

.google-plus {	background:#dd4b39}

ul.socialMediaUl li a i {	transition: all 0.2s ease-in-out;}

ul.socialMediaUl li a i:hover {	opacity: .7;}

div.termsAndConditions{    position: absolute;
    top: 50px;
    left: 230px;
    width: 200px;
    height: 100px;}

div.termsAndConditionsDivider{    position: absolute;
    top: 57px;
    left: 426px;
    width: 1px;
    height: 84px;
    border: 2px solid white;}

div.privacyPolicy{    position: absolute;
    top: 50px;
    left: 446px;
    width: 110px;
    height: 100px;}

div.privacyPolicyDivider{    position: absolute;
    top: 57px;
    left: 580px;
    width: 1px;
    height: 84px;
    border: 2px solid white;}

div.faqs{    position: absolute;
    top: 50px;
    left: 598px;
    width: 50px;
    height: 60px; }

div.faqsDivider{position: absolute;
    top: 57px;
    left: 690px;
    width: 1px;
    height: 84px;
    border: 2px solid white;}

div.contactFooter{    position: absolute;
    top: 50px;
    left: 700px;
    width: 100px;
    height: 95px; }


div.socialMedia{    position: absolute;
    top: 50px;
    left: 10px;
    width: 220px;
    height: 100px;}



ul.socialMediaUl {
	overflow: auto;
	margin-left:-34px;
}

ul.socialMediaUl li {
	list-style-type: none;
	float: left;
}

ul.socialMediaUl li a i {
	background: #205D7A;
	color: #fff;
	width: 40px;
	height: 40px;
	border-radius: 20px;
	font-size: 25px;
	text-align: center;
	margin-right: 10px;
	padding-top: 15%;
}


.fa-facebook {
	background:#3b5998
} 
.fa-linkedin {
	background:#007bb6
}
.fa-twitter {
	background:#00aced
}
.google-plus {
	background:#dd4b39
}

ul.socialMediaUl li a i {
	transition: all 0.2s ease-in-out;
}
ul.socialMediaUl li a i:hover {
	opacity: .7;
}




div.termsAndConditions{    position: absolute;
    top: 50px;
    left: 230px;
    width: 200px;
    height: 100px;}

div.termsAndConditionsDivider{    position: absolute;
    top: 57px;
    left: 426px;
    width: 1px;
    height: 84px;
    border: 2px solid white;}

div.privacyPolicy{    position: absolute;
    top: 50px;
    left: 446px;
    width: 110px;
    height: 100px;}

div.privacyPolicyDivider{    position: absolute;
    top: 57px;
    left: 580px;
    width: 1px;
    height: 84px;
    border: 2px solid white;}

div.faqs{    position: absolute;
    top: 50px;
    left: 598px;
    width: 50px;
    height: 60px; }

div.faqsDivider{position: absolute;
    top: 57px;
    left: 690px;
    width: 1px;
    height: 84px;
    border: 2px solid white;}

div.contactFooter{    position: absolute;
    top: 50px;
    left: 700px;
    width: 100px;
    height: 95px; }


    
 </style>  
    
 
 
 <script>
 
 
 function changeLocation(){
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
 
 
	
	
 

	var loadFileImg2 = function(event) {
		   var outputImg2 = document.getElementById('outputImg2');
		   outputImg2.src = URL.createObjectURL(event.target.files[1]);
		   var arr= marker.getPosition();
		   
		 
		 };
		 
			var loadFileImg3 = function(event) {
				   var output = document.getElementById('outputImg3');
				   output.src = URL.createObjectURL(event.target.files[2]);
				   var arr= marker.getPosition();
				   
				 
				 };
				 

					var loadFileImg4 = function(event) {
						   var output = document.getElementById('outputImg4');
						   output.src = URL.createObjectURL(event.target.files[3]);
						   var arr= marker.getPosition();
						   
						 
						 };				 
 

 var loadFile = function(event) {
   var output = document.getElementById('output');
   output.src = URL.createObjectURL(event.target.files[0]);
   var arr= marker.getPosition();
   
 
 };
 
 var loadDropDown = function(event) {
	var e = document.getElementById("dropDown");
	var strUser = e.options[e.selectedIndex].text;

	document.getElementById("hiddenFeild").value = strUser; 
	
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
  
  <body onload="initialize()">
  	
<div class="fullPage">

<div class="pageHeader">

<div class="pageLogin"><a ng-href="login_user"><p  style="font-size:40px "><b>Login</b></p></a></div>
<div class="pageLoginImage"> <i class="material-icons" style="font-size:70px ">account_circle</i> </div>
<div class="pageLoginDivider"></div>

<div class="contactUs"> <p style="font-size:40px"><b>Contact Us</b></p>  </div>




</div>
	
	<div class="detailsArea">	
  			 <form method="post" action="savefiles"   modelAttribute="uploadForm" enctype="multipart/form-data" id="myForm">
 
 		
									<div class ="enterHeader">
          							<h5>Enter Header<textarea rows="2" cols="40" id ="header" name="header"  placeholder="Enter header here"> </textarea>
          							</h5>
          							</div>
		
									
          							<div class ="selectMainImage">
          							
          							<h5>Upload the main image</h5><input name="files[0]" type="file"  id="selectedFile" onchange="loadFile(event)"/>
          							<img id="output" width="225px" height="225px"/>
          							</div>
          							
          							
          							
          							<div class="selectOtherImage1">
          							<h5>Upload more images</h5><input name="files[1]" type="file"  id="selectedFile2" onchange="loadFileImg2(event)" />
          						
          							</div>
          							<div class="selectOtherImage2">
          							<h5>Upload more images</h5><input name="files[2]" type="file"  id="selectedFile3" onchange="loadFileImg2(event)"/>
          					
          							</div>
          							<div class="selectOtherImage3">
          							<h5>Upload more images</h5><input name="files[3]" type="file"  id="selectedFile4" onchange="loadFileImg4(event)"/>
          						
          							</div>
          							
          							
          							
          							<div class="selectCity">
          							<h5>District
  
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
          							<div class="selectPrice">
          							
          							<h5>Enter Price <textarea rows="1" cols="20" id ="price" name="price"  placeholder="Enter price"> </textarea><br>  
 									</h5> 
          							</div>
          							<div class="selectMobile">
          							<h5>Enter mobile number <textarea rows="1" cols="20" id ="mobile_number" name="mobile_number"  placeholder="Enter mobile"> </textarea><br>
  									</h5>
          							</div>
          							<div class="selectEmail"><h5>Enter email <textarea rows="1" cols="20" id ="email_address" name="email_address"  placeholder="Enter email"> </textarea><br>  
  									</h5>
  									</div>
          							<div class="selectCategory">
          							      	<h5>	Category
        		
    
  
  <select id="dropDown" onchange="loadDropDown(event)">
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
          							<div class="selectTags">
          							<h5>Enter tags(Sperate by commas)<textarea rows="1" cols="20" id ="tags" name="tags"  placeholder="Enter Search tags"> </textarea><br>
  									</h5>
          							</div>
          							
          							
          							
          							
          							        							<div class="enterMoreDiscription">
  <textarea rows="10" cols="60" id="moreDescription" name="moreDescription"  placeholder="Enter description here"></textarea>
          							</div>
          							
                    				<div class="selectMapLocation">
                    				 <div id="map" style="width:600px; height:450px" onchange="changeLocation()"></div>
                    				</div>
          							
          							
          							<div class="selectComfirmLocation">
          							<button type="button" value="Comfirm Location"   onclick="changeLocation()"> Comfirm Location </button>
          							</div>
          							
          							<div class="selectSubmit">
          							<input type="submit" value="Submit Details"  class="btn btn-warning btn-sm" onclick="add"/>
  		
          							
          							</div>
          							
          							
          							
          							
        <input type="hidden" id = "hiddenFeild" name = "hiddenFeild"  value="udayanga"/> 		
      <input type="hidden" id = "hiddenFeildCity" name = "hiddenFeildCity"  value="udayanga"/> 		
      <input type="hidden" id = "locationlng" name = "locationlng"  /> 		
      <input type="hidden" id = "locationlat" name = "locationlat"  /> 		
     
     
  <br>
  
  
 <br>
  
  
          							
  
                    				
  
  
  
  
  </form>
  	
  
  
  
  
  
  
  
  
  
  </div>
  
  
<div class="footer">

<div class = "socialMedia">
<ul class = "socialMediaUl">
<li><a href="https://www.facebook.com/DailyNet-1406722499402359/"><i class="fa fa-facebook" style="font-size:25px"></i></a></li>
<li><a href="http://linkedin.com/"><i class="fa fa-linkedin" style="font-size:25px"></i></a></li>
<li><a href="http://twitter.com/"><i class="fa fa-twitter" style="font-size:25px"></i></a></li>
<li><a href="http://plus.google.com/"><i class="fa fa-google-plus" style="font-size:25px"></i> </a></li>
</ul>

</div>

<div class = "termsAndConditions">
<p style="color: white;text-align: center;font-size:30px;"><b>Terms and Conditions</b></p>
</div>

<div class = "termsAndConditionsDivider">

</div>

<div class = "privacyPolicy">
<p style="color: white;text-align: center;font-size:30px;"><b>Privacy Policy</b></p>

</div>

<div class = "privacyPolicyDivider">

</div>

<div class = "faqs">
<p style="color: white;text-align: center;font-size:30px;"><b>FAQs</b></p>

</div>

<div class = "faqsDivider">

</div>

<div class = "contactFooter">
<p style="color: white;text-align: center;font-size:30px;"><b>About Us</b></p>

</div>




</div>


  	

  	  	


</div>
  </body>
</html>
