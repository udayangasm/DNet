<!doctype html>
<html lang="en" ng-app="myAppMobile">
	<head>
	    <meta charset="utf-8">
    	<title>DailyNet</title>
 
 		<link rel="icon" href="resources/img/favicon.ico" type="image/x-icon" />
	    <link rel="stylesheet" href="resources/css/app.css" />
		<link rel="stylesheet" href="resources/css/bootstrap.min.css">
		<link rel="stylesheet" href="resources/css/jquery.smartmenus.bootstrap.css" >
		<link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons" >
		<link rel="stylesheet" href="resources/css/font-awesome.min.css">
	    <link rel="stylesheet" href="resources/css/jquery-ui.css">
	    <link rel="stylesheet" href="http://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.4.0/css/font-awesome.min.css">
	    <link rel="stylesheet" href="http://ajax.googleapis.com/ajax/libs/angular_material/1.0.0/angular-material.min.css">

     	<script src="http://ajax.googleapis.com/ajax/libs/angularjs/1.4.8/angular.min.js"></script>
     	<script src="http://ajax.googleapis.com/ajax/libs/angularjs/1.4.8/angular-animate.min.js"></script>
     	<script src="http://ajax.googleapis.com/ajax/libs/angularjs/1.4.8/angular-aria.min.js"></script>
     	<script src="http://ajax.googleapis.com/ajax/libs/angularjs/1.4.8/angular-messages.min.js"></script>
     	<script src="http://ajax.googleapis.com/ajax/libs/angular_material/1.0.0/angular-material.min.js"></script>
     	<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
	 
	 
	    <script type="text/javascript"  src="resources/js/jquery-1.10.2.js"></script>
	    <script type="text/javascript"  src="resources/js/jquery-ui.js"></script>
	    <script type="text/javascript"  src="resources/js/angular.js"></script>
	    <script type="text/javascript"  src="resources/js/angular-ui-router.js"></script>
	    <script type="text/javascript"  src="resources/js/angular-sanitize.js"></script>
	    
	    
	   	<script type="text/javascript"  src="https://maps.googleapis.com/maps/api/js?callback=initMap" async defer></script>
	 	<script type="text/javascript"  src="resources/js/jssor.slider.mini.js"></script>
	 	<script type="text/javascript"  src="resources/js/appMobile.js"></script>
	 	
		<script type="text/javascript"  src="resources/js/services/DNDataService.js"></script>
		<script type="text/javascript"  src="resources/js/services/DNUtilService.js"></script>

		<script type="text/javascript"  src="resources/js/services/ItemService.js"></script>
		
		<script type="text/javascript"  src="resources/js/directives/dnDirectives.js"></script>
		
		<script type="text/javascript"  src="resources/js/filters/dnFilters.js"></script>
		
		<script type="text/javascript"  src="resources/js/controllers/homeController.js"></script>
		<script type="text/javascript"  src="resources/js/controllers/categoryController.js"></script>
		<script type="text/javascript"  src="resources/js/controllers/loginController.js"></script>
		<script type="text/javascript"  src="resources/js/controllers/signUpController.js"></script>
		
		<script type="text/javascript"  src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>	



<script>
		    $(document).ready(function(){
		        $("#distictButton").click(function(){
		            $("#panel").slideToggle("slow");
		        });
		    });
				 
			function initMap() {
				console.log("initMap callback");
			}   
			function imageSlidingFunc() {
	            
	            var jssor_1_SlideshowTransitions = [
	              {$Duration:1200,x:0.3,$During:{$Left:[0.3,0.7]},$Easing:{$Left:$Jease$.$InCubic,$Opacity:$Jease$.$Linear},$Opacity:2},
	              {$Duration:1200,x:-0.3,$SlideOut:true,$Easing:{$Left:$Jease$.$InCubic,$Opacity:$Jease$.$Linear},$Opacity:2},
	              {$Duration:1200,x:-0.3,$During:{$Left:[0.3,0.7]},$Easing:{$Left:$Jease$.$InCubic,$Opacity:$Jease$.$Linear},$Opacity:2},
	              {$Duration:1200,x:0.3,$SlideOut:true,$Easing:{$Left:$Jease$.$InCubic,$Opacity:$Jease$.$Linear},$Opacity:2},
	              {$Duration:1200,y:0.3,$During:{$Top:[0.3,0.7]},$Easing:{$Top:$Jease$.$InCubic,$Opacity:$Jease$.$Linear},$Opacity:2},
	              {$Duration:1200,y:-0.3,$SlideOut:true,$Easing:{$Top:$Jease$.$InCubic,$Opacity:$Jease$.$Linear},$Opacity:2},
	              {$Duration:1200,y:-0.3,$During:{$Top:[0.3,0.7]},$Easing:{$Top:$Jease$.$InCubic,$Opacity:$Jease$.$Linear},$Opacity:2},
	              {$Duration:1200,y:0.3,$SlideOut:true,$Easing:{$Top:$Jease$.$InCubic,$Opacity:$Jease$.$Linear},$Opacity:2},
	              {$Duration:1200,x:0.3,$Cols:2,$During:{$Left:[0.3,0.7]},$ChessMode:{$Column:3},$Easing:{$Left:$Jease$.$InCubic,$Opacity:$Jease$.$Linear},$Opacity:2},
	              {$Duration:1200,x:0.3,$Cols:2,$SlideOut:true,$ChessMode:{$Column:3},$Easing:{$Left:$Jease$.$InCubic,$Opacity:$Jease$.$Linear},$Opacity:2},
	              {$Duration:1200,y:0.3,$Rows:2,$During:{$Top:[0.3,0.7]},$ChessMode:{$Row:12},$Easing:{$Top:$Jease$.$InCubic,$Opacity:$Jease$.$Linear},$Opacity:2},
	              {$Duration:1200,y:0.3,$Rows:2,$SlideOut:true,$ChessMode:{$Row:12},$Easing:{$Top:$Jease$.$InCubic,$Opacity:$Jease$.$Linear},$Opacity:2},
	              {$Duration:1200,y:0.3,$Cols:2,$During:{$Top:[0.3,0.7]},$ChessMode:{$Column:12},$Easing:{$Top:$Jease$.$InCubic,$Opacity:$Jease$.$Linear},$Opacity:2},
	              {$Duration:1200,y:-0.3,$Cols:2,$SlideOut:true,$ChessMode:{$Column:12},$Easing:{$Top:$Jease$.$InCubic,$Opacity:$Jease$.$Linear},$Opacity:2},
	              {$Duration:1200,x:0.3,$Rows:2,$During:{$Left:[0.3,0.7]},$ChessMode:{$Row:3},$Easing:{$Left:$Jease$.$InCubic,$Opacity:$Jease$.$Linear},$Opacity:2},
	              {$Duration:1200,x:-0.3,$Rows:2,$SlideOut:true,$ChessMode:{$Row:3},$Easing:{$Left:$Jease$.$InCubic,$Opacity:$Jease$.$Linear},$Opacity:2},
	              {$Duration:1200,x:0.3,y:0.3,$Cols:2,$Rows:2,$During:{$Left:[0.3,0.7],$Top:[0.3,0.7]},$ChessMode:{$Column:3,$Row:12},$Easing:{$Left:$Jease$.$InCubic,$Top:$Jease$.$InCubic,$Opacity:$Jease$.$Linear},$Opacity:2},
	              {$Duration:1200,x:0.3,y:0.3,$Cols:2,$Rows:2,$During:{$Left:[0.3,0.7],$Top:[0.3,0.7]},$SlideOut:true,$ChessMode:{$Column:3,$Row:12},$Easing:{$Left:$Jease$.$InCubic,$Top:$Jease$.$InCubic,$Opacity:$Jease$.$Linear},$Opacity:2},
	              {$Duration:1200,$Delay:20,$Clip:3,$Assembly:260,$Easing:{$Clip:$Jease$.$InCubic,$Opacity:$Jease$.$Linear},$Opacity:2},
	              {$Duration:1200,$Delay:20,$Clip:3,$SlideOut:true,$Assembly:260,$Easing:{$Clip:$Jease$.$OutCubic,$Opacity:$Jease$.$Linear},$Opacity:2},
	              {$Duration:1200,$Delay:20,$Clip:12,$Assembly:260,$Easing:{$Clip:$Jease$.$InCubic,$Opacity:$Jease$.$Linear},$Opacity:2},
	              {$Duration:1200,$Delay:20,$Clip:12,$SlideOut:true,$Assembly:260,$Easing:{$Clip:$Jease$.$OutCubic,$Opacity:$Jease$.$Linear},$Opacity:2}
	            ];
	            
	            var jssor_1_options = {
			  		$AutoPlay: true,
			  		$SlideshowOptions: {
			    		$Class: $JssorSlideshowRunner$,
			    		$Transitions: jssor_1_SlideshowTransitions,
			    		$TransitionsOrder: 1
			  		},
			  		$ArrowNavigatorOptions: {
			    		$Class: $JssorArrowNavigator$
			  		},
			  		$ThumbnailNavigatorOptions: {
			    		$Class: $JssorThumbnailNavigator$,
			    		$Cols: 10,
			    		$SpacingX: 8,
			    		$SpacingY: 8,
			    		$Align: 360
			  		}
	            };
	            
	            var jssor_1_slider = new $JssorSlider$("jssor_1", jssor_1_options);
	            
	            //responsive code begin
	            //you can remove responsive code if you don't want the slider scales while window resizing
	            function ScaleSlider() {
	                var refSize = jssor_1_slider.$Elmt.parentNode.clientWidth;
	                if (refSize) {
	                    refSize = Math.min(refSize, 800);
	                    jssor_1_slider.$ScaleWidth(refSize);
	                }
	                else {
	                    window.setTimeout(ScaleSlider, 30);
	                }
	            }
	            ScaleSlider();
	            $(window).bind("load", ScaleSlider);
	            $(window).bind("resize", ScaleSlider);
	            $(window).bind("orientationchange", ScaleSlider);
	            //responsive code end
	            
	            var data = new Array('bags', 'jwellary','shopping','hotel','shoes','fashion');
	           
	           	$(function() {
	         	    var availableTags = data;
	         	    $( "#inputSearchFeild" ).autocomplete({
	         	    	source: availableTags
	         	    });
	         	   $( "#inputSearch" ).val = $( "#inputSearchFeild" ).val;
	       		});
	
	           $(document).ready(function(){
	               $("#flip").hover(function(){
	                   $("#panel").slideToggle("slow");
	               });
	           });
	
			}
	
			function initViewMoreSclider() {
				console.log("initViewMoreSclider");
				var jssor_2_SlideshowTransitions = [
		      	      {$Duration:1200,x:0.3,$During:{$Left:[0.3,0.7]},$Easing:{$Left:$Jease$.$InCubic,$Opacity:$Jease$.$Linear},$Opacity:2},
		      	      {$Duration:1200,x:-0.3,$SlideOut:true,$Easing:{$Left:$Jease$.$InCubic,$Opacity:$Jease$.$Linear},$Opacity:2},
		      	      {$Duration:1200,x:-0.3,$During:{$Left:[0.3,0.7]},$Easing:{$Left:$Jease$.$InCubic,$Opacity:$Jease$.$Linear},$Opacity:2},
		      	      {$Duration:1200,x:0.3,$SlideOut:true,$Easing:{$Left:$Jease$.$InCubic,$Opacity:$Jease$.$Linear},$Opacity:2},
		      	      {$Duration:1200,y:0.3,$During:{$Top:[0.3,0.7]},$Easing:{$Top:$Jease$.$InCubic,$Opacity:$Jease$.$Linear},$Opacity:2},
		      	      {$Duration:1200,y:-0.3,$SlideOut:true,$Easing:{$Top:$Jease$.$InCubic,$Opacity:$Jease$.$Linear},$Opacity:2},
		      	      {$Duration:1200,y:-0.3,$During:{$Top:[0.3,0.7]},$Easing:{$Top:$Jease$.$InCubic,$Opacity:$Jease$.$Linear},$Opacity:2},
		      	      {$Duration:1200,y:0.3,$SlideOut:true,$Easing:{$Top:$Jease$.$InCubic,$Opacity:$Jease$.$Linear},$Opacity:2},
		      	      {$Duration:1200,x:0.3,$Cols:2,$During:{$Left:[0.3,0.7]},$ChessMode:{$Column:3},$Easing:{$Left:$Jease$.$InCubic,$Opacity:$Jease$.$Linear},$Opacity:2},
		      	      {$Duration:1200,x:0.3,$Cols:2,$SlideOut:true,$ChessMode:{$Column:3},$Easing:{$Left:$Jease$.$InCubic,$Opacity:$Jease$.$Linear},$Opacity:2},
		      	      {$Duration:1200,y:0.3,$Rows:2,$During:{$Top:[0.3,0.7]},$ChessMode:{$Row:12},$Easing:{$Top:$Jease$.$InCubic,$Opacity:$Jease$.$Linear},$Opacity:2},
		      	      {$Duration:1200,y:0.3,$Rows:2,$SlideOut:true,$ChessMode:{$Row:12},$Easing:{$Top:$Jease$.$InCubic,$Opacity:$Jease$.$Linear},$Opacity:2},
		      	      {$Duration:1200,y:0.3,$Cols:2,$During:{$Top:[0.3,0.7]},$ChessMode:{$Column:12},$Easing:{$Top:$Jease$.$InCubic,$Opacity:$Jease$.$Linear},$Opacity:2},
		      	      {$Duration:1200,y:-0.3,$Cols:2,$SlideOut:true,$ChessMode:{$Column:12},$Easing:{$Top:$Jease$.$InCubic,$Opacity:$Jease$.$Linear},$Opacity:2},
		      	      {$Duration:1200,x:0.3,$Rows:2,$During:{$Left:[0.3,0.7]},$ChessMode:{$Row:3},$Easing:{$Left:$Jease$.$InCubic,$Opacity:$Jease$.$Linear},$Opacity:2},
		      	      {$Duration:1200,x:-0.3,$Rows:2,$SlideOut:true,$ChessMode:{$Row:3},$Easing:{$Left:$Jease$.$InCubic,$Opacity:$Jease$.$Linear},$Opacity:2},
		      	      {$Duration:1200,x:0.3,y:0.3,$Cols:2,$Rows:2,$During:{$Left:[0.3,0.7],$Top:[0.3,0.7]},$ChessMode:{$Column:3,$Row:12},$Easing:{$Left:$Jease$.$InCubic,$Top:$Jease$.$InCubic,$Opacity:$Jease$.$Linear},$Opacity:2},
		      	      {$Duration:1200,x:0.3,y:0.3,$Cols:2,$Rows:2,$During:{$Left:[0.3,0.7],$Top:[0.3,0.7]},$SlideOut:true,$ChessMode:{$Column:3,$Row:12},$Easing:{$Left:$Jease$.$InCubic,$Top:$Jease$.$InCubic,$Opacity:$Jease$.$Linear},$Opacity:2},
		      	      {$Duration:1200,$Delay:20,$Clip:3,$Assembly:260,$Easing:{$Clip:$Jease$.$InCubic,$Opacity:$Jease$.$Linear},$Opacity:2},
		      	      {$Duration:1200,$Delay:20,$Clip:3,$SlideOut:true,$Assembly:260,$Easing:{$Clip:$Jease$.$OutCubic,$Opacity:$Jease$.$Linear},$Opacity:2},
		      	      {$Duration:1200,$Delay:20,$Clip:12,$Assembly:260,$Easing:{$Clip:$Jease$.$InCubic,$Opacity:$Jease$.$Linear},$Opacity:2},
		      	      {$Duration:1200,$Delay:20,$Clip:12,$SlideOut:true,$Assembly:260,$Easing:{$Clip:$Jease$.$OutCubic,$Opacity:$Jease$.$Linear},$Opacity:2}
		      	    ];
				var jssor_2_options = {
		            $AutoPlay: true,
		            $SlideshowOptions: {
		              $Class: $JssorSlideshowRunner$,
		              $Transitions: jssor_2_SlideshowTransitions,
		              $TransitionsOrder: 1
		            },
		            $ArrowNavigatorOptions: {
		              $Class: $JssorArrowNavigator$
		            },
		            $ThumbnailNavigatorOptions: {
		              $Class: $JssorThumbnailNavigator$,
		              $Cols: 10,
		              $SpacingX: 8,
		              $SpacingY: 8,
		              $Align: 360
		            }
		      	};
		          
		        var jssor_2_slider = new $JssorSlider$("jssor_2", jssor_2_options);
		        console.log(jssor_2_slider);
		        //responsive code begin
		        //you can remove responsive code if you don't want the slider scales while window resizing
		        function viewMoreScaleSlider() {
		        	var refSize = jssor_2_slider.$Elmt.parentNode.clientWidth;
		            if (refSize) {
		            	refSize = Math.min(refSize, 700);
		                jssor_2_slider.$ScaleWidth(refSize);
		            }
		            else {
		            	window.setTimeout(viewMoreScaleSlider, 30);
		            }
		        }
		        viewMoreScaleSlider();
		       // $(window).bind("load", viewMoreScaleSlider);
		        $(window).bind("resize", viewMoreScaleSlider);
		        $(window).bind("orientationchange", viewMoreScaleSlider);
		        //responsive code end
		        
		        // set images
		        setTimeout( function() {
			        var srcArr = $("#jssor_2 [data-u]>[data-p] img");
			        console.log(srcArr);
			        var destArr = $("#jssor_2 .w img");
			        console.log(destArr);
			        for (var i = 0; i < srcArr.length; i++) {
			        	var src = $(srcArr[i]).attr("src");
			        	console.log(src);
			        	$($("#jssor_2 .w img")[i]).attr("src", src);
			        }
			     }, 1000);
		        
			}
			
		    function initialize(dlat,dlan) {

			    var myLatlng = new google.maps.LatLng(dlat,dlan);
			    var mapOptions = {
			    	zoom: 10,
			    	center: myLatlng
			    }
			    var map = new google.maps.Map(document.getElementById("map"), mapOptions);

			    // Place a draggable marker on the map
			    marker = new google.maps.Marker({
			    	position: myLatlng,
			    	map: map,
			    	draggable:false,
			    	title:"Drag me!"
			    });

		    }
		    
		    function initializeEdit(dlat,dlan) {

			    var myLatlng = new google.maps.LatLng(dlat,dlan);
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
				    
				    
				    function changeLocationCreateAd(){
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
    		    } else {
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
			
			function initializeinitializeCreateAd() {
				    	     
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
	    
	    <script>
			(function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
			(i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
			m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
			})(window,document,'script','https://www.google-analytics.com/analytics.js','ga');
		
			ga('create', 'UA-80508583-1', 'auto');
			ga('send', 'pageview');
		</script>

	
	

    	<style>
		    #panel, #flip {
			    padding: 5px;
			    text-align: left;
			
			    height: 100px;
			    width: 120px;
			}

			#panel {
			     margin-top: -30px;
			    padding: 5px;
			    display: none;
			    position : relative;
			
			    height: 100px;
			    width: 120px;
			}

			.distictButton{
			 width: 100px;
			 height : 50px;
			 position : relative;
			 left : 50px;
			 margin-top: 50px;
			 background-color: green;
			 
			}
			
	    	.jssora05l, .jssora05r {    display: block;  position: absolute;       width: 40px;  height: 40px;   cursor: pointer; overflow: hidden; }
	        .jssora05l { background-position: -10px -40px; }
	        .jssora05r { background-position: -70px -40px; }
	        .jssora05l:hover { background-position: -130px -40px; }
	        .jssora05r:hover { background-position: -190px -40px; }
	        .jssora05l.jssora05ldn { background-position: -250px -40px; }
	        .jssora05r.jssora05rdn { background-position: -310px -40px; }
	
	        
	        .jssort01 .p {  position: absolute;  top: 0;  left: 0; width: 72px;  height: 72px;}
	        
	        .jssort01 .t { position: absolute;   top: 0; left: 0; width: 100%; height: 100%; border: none;}
	        
	        .jssort01 .w {   position: absolute; top: 0px;   left: 0px;   width: 100%;    height: 100%;}
	        
	        .jssort01 .c {  position: absolute;    top: 0px;   left: 0px;   width: 68px;   height: 68px;   border: #000 2px solid;    box-sizing: content-box;  _background: none;}
	        
	        .jssort01 .pav .c {  top: 2px;_top: 0px; left: 2px;    _left: 0px;   width: 68px;   height: 68px; border: #000 0px solid;  _border: #fff 2px solid;  background-position: 50% 50%;}
	        
	        .jssort01 .p:hover .c {  top: 0px;   left: 0px;    width: 70px;    height: 70px;   border: #fff 1px solid;   background-position: 50% 50%; }
	        
	        .jssort01 .p.pdn .c {   background-position: 50% 50%;   width: 68px; height: 68px;  border: #000 2px solid;}
	        
	        * html .jssort01 .c, * html .jssort01 .pdn .c, * html .jssort01 .pav .c { width /**/: 72px;   height /**/: 72px;}
	     
	        #panel, #flip { padding: 5px;  text-align: center;   background-color: #e5eecc; border: solid 1px #c3c3c3;}
	
			#panel {  padding: 20px;   display: none;}
	
			.button {  background-color: #9090ff; border: none;  color: white; padding: 15px 32px;   text-align: center; text-decoration: none;   display: inline-block;  font-size: 16px;  margin: 2px 2px;  cursor: pointer;  width: 150px; height: 50px;}
	
			.buttonPost {background-color: 	#9090ff;   border: none; color: white;   padding: 0px 5px; text-align: center;  text-decoration: none; display: inline-block; font-size: 16px;  margin: 2px 2px; cursor: pointer;  width: 150px;  height: 50px;}        
	
			.dropdown1 { position: relative;    display: inline-block;}
	
			.dropdown1-content { display: none; position: absolute;  background-color: #f9f9f9;  min-width: 160px;  box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);	z-index: 10;}
	
			.dropdown1:hover .dropdown1-content {  display: block;}
	
			.desc {  padding: 15px;  text-align: center;}
	
			.dropbtnCategory { background-color: #9090ff;    color: white;   padding: 2px; font-size: 16px;border: none;  cursor: pointer; width : 150px;  height: 50px;}
	
			.dropdownCategory {  position: relative;  display: inline-block;}
		
			.dropdown1-contentCategory { display: none; position: absolute;  background-color: #f9f9f9;  min-width: 160px;   color:black;  text-align:center;  box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);   z-index: 10;}

			.1-contentCategory a {   color: black; padding: 12px 16px; text-decoration: none; display: block;}
			
			.dropdown1-contentCategory a:hover {background-color: #0000b7; text-decoration: none; }
			
			.dropdownCategory:hover .dropdown1-contentCategory {  display: block;}
			
			.dropdownCategory:hover .dropbtnCategory {    background-color: #0000b7;}
			
			.buttonPost:hover {background-color:#0000b7;}
			
			.button:hover {background-color:#0000b7;}
			
			div.newsBlock1 {    position: relative;  top: 0px; left: 0px;  width: 1150px;  height: 800px;}
			
			div.newsBlock2 { position: absolute; top: 50px; left: 50px; width: 400px; height: 400px;}
			
			div.video { position: absolute;  top: 0px; left: 0px;    width: 855px;    height: 480px; }


			div.newsBlock3 { position: absolute; top: 50px; left: 500px; width: 350px; height: 450px;}
			
			div.newsBlock4 { position: absolute; top: -50px;  left: 900px; width: 150px; height: 750px;}
			
			div.newsBlock5 { position: absolute;  top: 500px;  left: 50px; width: 800px;  height: 250px;}
			
			div.newsBlock6 {   position: relative; top: 50px; left: 0px; width: 150px; height: 150px;}
			
			div.homePage {    position: relative;  top: -65px;  left: 0px; width: 1195px;   height: 400px;}
			
			div.homePageMenu { position: absolute; top: 0px;  left: 0px;  width: 1195px;  height: 110px;}
			
			div.imageSliding1 {    position: absolute;  top: 120px; left: 195px;   width: 800px;  height: 350px;}
			
			div.leftImageGallry {  position: absolute; top: 105px;  left: 50px;  width: 100px;  height: 365px;}
			
			div.rightImageGallry {   position: absolute;   top: 105px; right: 50px;width: 100px; height: 365px;}
			
			div.categoryItem {   position: relative;  top: 25px; width: 100px; height: 100px;}

			div.fixed {  position: fixed; top: 400px;    right: 0;  width: 40px; height: 200px;display:block;  background-color: #24201F; }
			
			div.siteVisitors {   position: absolute;  top: 1px; right: 0; width: 100px; height: 50px;}
			
			div.postAdds {    position: absolute; top: -1px; right: 102px;  width: 150px;  height: 50px;}
			
			div.browsCategory {  position: absolute;  top: 2px;  right: 250px; width: 150px; height: 50px;}
			
			div.selectDistric{position: absolute; top: 10px; right: 650px;  width: 150px;  height: 50px;}
			
			div.indiv{position: absolute; top: 10px; right: 700px;  width: 150px;  height: 50px;}
			
			div.serchBlock {position: absolute; top: 0px; right: 376px;  width: 150px;  height: 50px;}
			
			div.fullPage{position: relative; top: 0px; right: 0px;  width: 100%;  height: 1600px;   border: 1px solid gray;}

			div.pageHeader{position: absolute; top: 0px; right: 0px;  width: 100%;  height: 30px;   border: 1px solid #00838F; background-color: #00838F;}
			
			div.pageLogin{position: absolute; top: 5px; right: 0px;  width: 75px;  height: 20px; }
			
			div.pageLoginDivider{position: absolute; top: 5px; right: 90px;  width: 1px;  height: 17px;   border: 2px solid white;}
			
			div.pageLanguage{position: absolute; top: 5px; right: 100px;  width: 60px;  height: 20px;  }
			
			div.contactUs{position: absolute; top: 5px; right: 200px;  width: 75px;  height: 20px;  }
			
			div.home_header{position: absolute; top: 5px; left: 50px;  width: 25px;  height: 20px; color:white }
			
			div.home_header_movable_text{position: absolute; top: 5px; left: 75px;  width: 900px;  height: 20px; color:white }
			
			
			div.pageMenu{position: absolute; top: 30px; right: 0px;  width: 100%;  height: 100px;  background-color: #00838F;   border: 1px solid #00838F;}
			
			div.pageMenuSearch{position: absolute; top: 30px; left: 150px;  width: 500px;  height: 40px;     }
			
			div.pageMenuLocation{position: absolute; top: 32px; left: 700px;  width: 250px;  height: 40px;    }
			
			div.pageMenuSearchButton{position: absolute; top: 30px; left: 1000px;  width: 100px;  height: 40px;  }
			
			div.pageMenuLogo{position: absolute; top: -2px; left: 0px;  width: 150px;  height: 100px;  background-color:white; }


			div.categoryAndSliding{position: absolute; top: 130px; right: 0px;  width: 100%;  height: 1372px;     border: 2px solid gray;}
			
			div.categoryAndSlidingInVideo{position: absolute; top: 130px; right: 0px;  width: 100%;  height: 450px;     border: 2px solid gray;}
			
			div.imageSlidingDiv{position: absolute; top: 10px;  left:250px; width: 800px; height: 400px;     border: 1px solid gray;}
			
			div.leftSideCategories{position: absolute; top: 0px;  left:0px; width: 250px; height: 450px;    }
			
			div.rightSideCategories{position: absolute; top: 0px;  right:0px; width: 250px; height: 450px;    }
			
			div.categoryShadoBoxLeft{position: relative; top: 0px;  left:25px; width: 175px; height: 100px;     border: 1px solid gray; box-shadow: 10px 10px 5px #888888;}
			
			div.categoryHeaderLeft{position: relative; top: 0px;  left:25px; width: 175px; height: 15px;     }
			div.categoryHeaderLeftBlank{position: relative; top: 0px;  left:25px; width: 175px; height: 10px;     }
			
			div.categoryShadoBoxRight{position: relative; top: 0px;  left:50px; width: 175px; height: 100px;     border: 1px solid gray; box-shadow: 10px 10px 5px #888888;}
			
			div.categoryHeaderRight{position: relative; top: 0px;  left:50px; width: 175px; height: 15px;     }
			div.categoryHeaderRightBlank{position: relative; top: 0px;  left:50px; width: 175px; height: 10px;     }
			
			div.categoryHeaderBlank{position: relative; top: 0px;  left:50px; width: 175px; height: 10px;     }


			div.bottomCategories{position: absolute; top: 450px;  left:0px; width: 1100px; height: 850px;      }
			
			
			div.categoryHeaderBox1Bottom{position: absolute; top: -25px;  left:25px; width: 175px; height: 20px;      }
			
			div.categoryShadoBox1Bottom{position: absolute; top: 0px;  left:25px; width: 175px; height: 100px;     border: 1px solid gray; box-shadow: 10px 10px 5px #888888;}
			
			
			div.categoryHeaderBox2Bottom{position: absolute; top: -25px;  left:300px; width: 175px; height: 20px;     }
			
			div.categoryShadoBox2Bottom{position: absolute; top: 0px;  left:300px; width: 175px; height: 100px;     border: 1px solid gray; box-shadow: 10px 10px 5px #888888;}
			
			
			div.categoryHeaderBox3Bottom{position: absolute; top: -25px;  left:575px; width: 175px; height: 20px;    }
			
			div.categoryShadoBox3Bottom{position: absolute; top: 0px;  left:575px; width: 175px; height: 100px;     border: 1px solid gray; box-shadow: 10px 10px 5px #888888;}
			
			
			div.categoryHeaderBox4Bottom{position: absolute; top: -25px;  left:850px; width: 175px; height: 20px;     }
			
			div.categoryShadoBox4Bottom{position: absolute; top: 0px;  left:850px; width: 175px; height: 100px;     border: 1px solid gray; box-shadow: 10px 10px 5px #888888;}
			
			
			div.categoryHeaderBox5Bottom{position: absolute; top: -25px;  right:25px; width: 175px; height: 20px;      }
			
			div.categoryShadoBox5Bottom{position: absolute; top: 0px;  right:25px; width: 175px; height: 100px;     border: 1px solid gray; box-shadow: 10px 10px 5px #888888;}
			
			
			div.dailyNetAdHome{position: absolute; top: 500px;  right:25px; width: 150px; height: 760px;     border: 1px solid gray; }
			
			
			div.videoItems{position: absolute; top: 580px; right: 0px;  width: 100%;  height: 860px;     border: 2px solid gray;}
			
			div.leftVideoDiv{position: absolute; top: 55px; left: 25px;  width: 150px;  height: 760px;    }
			
			div.midleVideoHeaderDiv{position: absolute; top: 30px; left: 200px;  width: 855px;  height: 40px;     }
			
			div.midleVideoDiv{position: absolute; top: 90px; left: 200px;  width: 855px;  height: 480px;    }
			
			div.rightVideoDiv{position: absolute; top: 0px; right: 0px;  width: 240px;  height: 860px;     }
			
			div.bottomAdVideoDiv{position: absolute; top: 610px; left: 200px;  width: 855px;  height: 200px;     border: 1px solid gray;}
			
			div.bottomAdVideoImageDiv{position: absolute; top: 10px; left: 10px;  width: 200px;  height: 180px;    }
			
			div.bottomAdVideoHeaderDiv{position: absolute; top: 20px; left: 250px;  width: 300px;  height: 40px;    }
			
			div.bottomAdVideoDateDiv{position: absolute; top: 80px; left: 250px;  width: 300px;  height: 25px;     }
			
			div.bottomAdVideoPriceDiv{position: absolute; top: 125px; left: 250px;  width: 300px;  height: 25px;     }
			
			div.bottomAdVideoViewCountDiv{position: absolute; top: 10px; right: 10px;  width: 100px;  height: 25px;     }
			
			div.bottomAdVideoViewCountDivDesc{position: absolute; top: 0px; left: 10px;  width: 20px;  height: 20px;     }
			
			div.bottomAdVideoViewCountDivCount{position: absolute; top: 0px; left: 40px;  width: 20px;  height: 20px;     }
			
			
			div.videoItemList{position: relative; top: 0px;  left:20px; width: 200px; height: 180px;     border: 1px solid gray;}
			
			div.videoItemListBlank{position: relative; top: 0px;  left:20px; width: 200px; height: 15px;     }
			
			
			div.RandomAd1InHome{position: absolute; top: 200px; left: 100px;  width: 855px;  height: 200px;     border: 1px solid gray;    }
			
			div.RandomAd2InHome{position: absolute; top: 450px; left: 100px;  width: 855px;  height: 200px;     border: 1px solid gray;  }
			
			div.RandomAd3InHome{position: absolute; top: 700px; left: 100px;  width: 855px;  height: 200px;     border: 1px solid gray;   }
			
			
			div.footer{position: absolute; top: 1500px; right: 0px;  width: 100%;  height: 100px;     border: 2px solid gray;  background-color: #00838F;}
			
			
			
			div.socialMedia {    
				position: absolute;
			    top: 30px;
			    left: 10px;
			    width: 220px;
			    height: 50px;
			}
			
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
			
			div.termsAndConditions{position: absolute; top: 30px; left: 330px;  width: 140px;  height: 20px; }
			
			div.termsAndConditionsDivider{position: absolute; top: 30px; left: 490px;  width: 1px;  height: 17px;   border: 2px solid white;}
			
			div.privacyPolicy{position: absolute; top: 30px; left: 500px;  width: 110px;  height: 20px;}
			
			div.privacyPolicyDivider{position: absolute; top: 30px; left: 620px;  width: 1px;  height: 17px;   border: 2px solid white;}
			
			div.faqs{position: absolute; top: 30px; left: 630px;  width: 50px;  height: 20px; }
			
			div.faqsDivider{position: absolute; top: 30px; left: 690px;  width: 1px;  height: 17px;   border: 2px solid white;}
			
			div.contactFooter{position: absolute; top: 30px; left: 700px;  width: 75px;  height: 20px;  }
			
			div.totalSiteVisites{position: absolute; top: 30px; right: 50px;  width: 100px;  height: 50px;  }

			div.postAd{position: fixed; top: 40px; right: 30px;  width: 80px;  height: 80px;  background-color:white;   border: 1px solid gray; box-shadow: 10px 10px 5px #888888; z-index: 5;}


			/*---- category pag css -----*/
		
			div.fullSearchPage {
				width: 100%;
				position: absolute;
				top: 0;
				bottom: 0;
				background: #eee;
				overflow: auto;
			}
			
			div.searchPageAdsAndFilter {
				width: 850px;
				min-height: 100%;
				display: flex;
				background: #fff;
				margin: auto;
			}
			
			div.filterAllAds {
				width: 240px;
				box-shadow: 3px 0px 5px #DEDEDE;
			}
			
			div.filterAllAds hr {
				margin: 10px 0;
			}
			
			div.filterAllAdsByCategory {
			}
			
			div.filterAllAdsByDistrict {
			}
			
			div.filterAllAdsByPrice {
			}
			
			div.filterAllAdsSubmit {
				display: flex;
		    	padding: 20px 0;
			}
			
			div.searchPageAds {
				width: 610px;
				padding: 0;
			}
			
			div.searchPageAds > ul {
				list-style-type: none;
				padding: 0;
			}
			
			div.searchPageAds>ul li {
				padding: 10px 50px;
		    	border-bottom: 1px solid #eee;
			}
			
			div.searchPageAdsTemplate {
				display: flex;
				position: relative;
			}
			div.searchPageAdsTemplateBlank{width: 800px;}
			
			div.searchPageAdsIndexes{width: 800px; border: 1px solid gray;}
			
			div.footerSearchAdsPage {
				width: 100%;
				height: 100px;
			}
			
			div.searchAdsImageDiv {
				width: 160px; 
				height: 120px;
				1px solid gray;
				margin-right: 20px;
			}
			
			div.searchAdsViewCountDiv {
				position: absolute;
		    	right: 0;
		    	display: flex;
		    	margin-right: 5px;
			}
			
			.dn-tnc {
				margin: auto 0;
			    height: 17px;
			    width: 1px;
			    background: #fff;
			    border: 2px solid #fff;
			    margin: 0 10px;
			}
			
			.searchPageAds li a:hover {
				text-decoration: none;
			}
			
			input:focus {
				outline: none;
			}

			/*---- end of category pag css -----*/
			
			/* ---  footer ----*/
			.dn-footer {
				height : 100px;
				width : 100%;
				background: #006064;
			}

			/*--- viewmore page css ---*/
		
			.viewMorePage {
				background : #eee;
			}
			
			.viewMoreBody {
				background : #fff;
				width : 850px;
				margin : 0 auto;
			}
			
			.viewMorePageHeader {
				width: 100%;
				height: 85px;
				background-color: #00838F;
			}
		
			.mapLocation {
				margin : 2px;
			}


			div.createAdPage{position: absolute; top: 0px; right: 0px;  width: 100%;  height: 1300px;   border: 1px solid gray;}

			div.footerCreateAdPage{position: absolute; top: 1200px; right: 0px;  width: 100%;  height: 100px;     border: 2px solid gray;  background-color: #00838F;}


	        div.bodyCreateAd {
			    position: relative;
			    margin-top: 50px;
			    left: 50px;
			    margin-bottom: 50px;
			    width: 1050px;
			    height: 300px;
			    border: 3px solid #73AD21;
			}

			div.imageCreateAd {
			    position: absolute;
			    top: 25px;
			    left: 25px;
			    width: 250px;
			    height: 250px;
				border: 3px solid #73AD21;
			}
			
			div.headerCreateAd {
			    position: absolute;
			    top: 25px;
			    left: 300px;
			    width: 450px;
			    height: 75px;
			    border: 3px solid #73AD21;
			    color: red;
			    padding: 15px 32px;
			    text-align: center;
			    text-decoration: none;
			    font-size: 16px;
			}
			
			div.discriptionCreateAd {
			    position: absolute;
			    top: 125px;
			    left: 300px;
			    width: 450px;
			    height: 150px;
			    border: 3px solid #73AD21;
				
			}
			    
			 .textboxdescCreateAd {
			height: 150px;
			width: 450px;
			}
			
			
			.textboxheaderCreateAd {
			height: 75px;
			width: 450px;
			}
			
			div.locationCreateAd {
			    position: absolute;
			    top: 25px;
			    right: 25px;
			    width: 250px;
			    height: 250px;
			    border: 3px solid #73AD21;
				
			}

			.social	a {  color: #fff; text-decoration: none;}
			.me { width: 250px; margin: 90px auto;}
			.me p,
			.me h1 {text-transform: uppercase;letter-spacing: 3px;text-align: center;}
			.me p {font-weight: 200;}
			.me span {font-weight: bold;}
			.social {position: fixed;top: 300px;}
			.social ul { padding: 0px;  -webkit-transform: translate(-270px, 0); -moz-transform: translate(-270px, 0); -ms-transform: translate(-270px, 0); -o-transform: translate(-270px, 0);transform: translate(-270px, 0);}
			.social ul li {  display: block; margin: 5px; background: rgba(0, 0, 0, 0.36); width: 330px; text-align: right;  padding: 10px; -webkit-border-radius: 0 30px 30px 0;  -moz-border-radius: 0 30px 30px 0; border-radius: 0 30px 30px 0;  -webkit-transition: all 1s; -moz-transition: all 1s; -ms-transition: all 1s;  -o-transition: all 1s; transition: all 1s;}
			.social ul li:hover { -webkit-transform: translate(110px, 0); -moz-transform: translate(110px, 0); -ms-transform: translate(110px, 0);  -o-transform: translate(110px, 0);  transform: translate(110px, 0);  background: rgba(255, 255, 255, 0.4);}
			.social ul li:hover a {color: #000;}
			.social ul li:hover i {  color: #fff; background: rgba(0, 0, 0, 0.36); -webkit-transform: rotate(360deg); -moz-transform: rotate(360deg);  -ms-transform: rotate(360deg);-o-transform: rotate(360deg); transform: rotate(360deg); -webkit-transition: all 1s;  -moz-transition: all 1s; -ms-transition: all 1s;  -o-transition: all 1s; transition: all 1s;}
			.social ul li i { margin-left: 10px; color: #000;  background: #fff; padding: 10px;  -webkit-border-radius: 50%;  -moz-border-radius: 50%;  border-radius: 50%;  width: 20px;  height: 20px; font-size: 20px; background: #ffffff; -webkit-transform: rotate(0deg); -moz-transform: rotate(0deg); -ms-transform: rotate(0deg); -o-transform: rotate(0deg); transform: rotate(0deg);}
			
			#custom-search-input { margin:0; margin-top: 0px; padding: 0; width : 300px;}
			 
			#custom-search-input .search-query {    padding-right: 3px; padding-right: 4px \9;  padding-left: 3px; padding-left: 4px \9;    margin-bottom: 0;  -webkit-border-radius: 3px;   -moz-border-radius: 3px;   border-radius: 3px;}
			 
			#custom-search-input button {  border: 0; background: none;  padding: 2px 5px; margin-top: 2px;  position: relative; left: -28px;    margin-bottom: 0;    -webkit-border-radius: 3px;    -moz-border-radius: 3px;    border-radius: 3px;   color:#D9230F; }
			 
			.search-query:focus + button { z-index: 10;   }
			 
			.video-container {	position:relative;	padding-bottom:56.25%;	padding-top:30px;	height:0;	overflow:hidden;}
			
			.video-container iframe, .video-container object, .video-container embed {	position:absolute;	top:0;	left:0;	width:100%;	height:100%;}
			    
			
			div.body {    position: relative;    margin-top: 30px;    left: 50px;    margin-bottom: 50px;    width: 900px;    height: 200px;    border : 1px solid black;}
			
			div.image {
			    position: absolute;
			    top: 25px;
			    left: 25px;
			    width: 150px;
			    height: 150px;
				
			}
			
			
			div.image1 {
			    position: relative;
			    top: 25px;
			    left: 25px;
			    width: 700px;
			    height: 500px;
				
			}
			
			div.image2 {
			    position: relative;
			    top: 25px;
			    left: 25px;
			    width: 700px;
			    height: 500px;
				
			}
			
			div.image3 {
			    position: relative;
			    top: 25px;
			    left: 25px;
			    width: 700px;
			    height: 500px;
				
			}
			
			div.image4 {
			    position: relative;
			    top: 25px;
			    left: 25px;
			    width: 700px;
			    height: 500px;
				
			}
			
			div.moreDiscription  {
			    position: relative;
			    top: 25px;
			    left: 25px;
			    width: 500px;
			    height: 200px;
				
			}
			
			div.location {
			    position: relative;
			    top: 25px;
			    left: 25px;
			    width: 500px;
			    height: 500px;
				
			}
			
			div.header {
			    position: absolute;
			    top: 25px;
			    left: 200px;
			    width: 650px;
			    height: 50px;
			    color: red;
			    padding: 15px 32px;
			    text-align: center;
			    text-decoration: none;
			    font-size: 16px;
			}
			
			div.discription {
			    position: absolute;
			    top: 75px;
			    left: 200px;
			    width: 650px;
			    height: 125px;
			    
			}
			
			
			div.location {
			    position: absolute;
			    top: 10px;
			    right: 10px;
			    width: 150px;
			    height: 150px;
			    
			}
			
			
			div.viewMore {
			    position: absolute;
			    bottom: 10px;
			    right: 10px;
			    width: 150px;
			    height: 25px;
			    background-color:blue;
			}
			
			div.buyOnline {
			    position: absolute;
			    bottom: 10px;
			    left: 25px;
			    width: 150px;
			    height: 25px;
			    background-color:orange;
				
			}    
			
			
			div.imageSliding {    position: absolute;  top: 25px; left: 25px;   width: 600px;  height: 450px;}
			div.contactDetails{  position: absolute;  top: 25px; right: 25px;   width: 300px;  height: 450px;}
			div.mapLocation{  position: absolute;  top: 500px; right: 25px;   width: 600px;  height: 600px;}
			div.description{  position: absolute;  top: 500px; left: 25px;   width: 300px;  height: 600px;}

			div.viewMoreGrid{	position: relative;    top: 25px;    left: 25px;    width: 1100px;    height: 1200px;}
 
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
					
			.hr {display: block;			    
				border-style: inset;border-width: 1px;			    
				width : 100%;			    
				margin: auto;			
			}
			
			img {
				width: auto;
			    max-height: 100%;
			    display: flex;
			    max-width: 100%;
			    height: auto;
			    margin: auto;
			}
			
			
			


div.viewMoreUpgradeButton{    top: 0px;
    left: 0px;
    width: 33%;
    height: 40px; }

div.viewMoreEditButton{top: -40px;
    left: 34%;
    width: 33%;
    height: 40px; }

div.viewMoreDeleteButton{ top: -80px;
    left: 68%;
    width: 32%;
    height: 40px; }
    
    
    
    
    
    
    
        
	    
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
			
			div.editAddetailsArea {
				width: 75%; 
				margin : 20px auto auto auto;
				background: #fff;
				position : relative;
				top:80px;
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
			
			div.footerEditAd{
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
			
			div.termsAndConditionsEditAd {
				margin: auto 10px;
			}
			
			div.termsAndConditionsDividerEditAd {
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
	    

			
			
.datepickerdemoBasicUsage {
  /** Demo styles for mdCalendar. */ }
  .datepickerdemoBasicUsage md-content {
    padding-bottom: 200px; }
  .datepickerdemoBasicUsage .validation-messages {
    font-size: 12px;
    color: #dd2c00;
    margin: 10px 0 0 25px; }
			
			
			
    	</style>
 	</head>
	<body style="background : #eee;">
		<dev  ui-view></dev>
	</body>
</html>
