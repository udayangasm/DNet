'use strict';

var App = angular.module('myApp',['ui.router', 'ngSanitize', 'ngMaterial','ngMessages']);

App.config(['$stateProvider', '$urlRouterProvider', function($stateProvider, $urlRouterProvider) {
	
	$urlRouterProvider.otherwise('/home');
	
	$stateProvider
	
	.state('home', {
		url: "/home",
		templateUrl: 'homePage',
		controller : "HomeController as hmController",
		resolve: {
			Config: [function() {
		        return {page : "home"};
		   	}]
        }
	})
	.state('videos', {
		url: "/video",
		templateUrl: 'homePage',
		controller : "HomeController as hmController",
		resolve: {
			Config: [function() {
		        return {page : "video"};
		   	}]
        }
	})
	.state('video', {
		url: "/video/:VIDEOID",
		templateUrl: 'homePage',
		controller : "HomeController as hmController",
		resolve: {
			Config: ['$stateParams', function($stateParams) {
            	var videoId = "empty";
            	videoId = getID();
            	if ($stateParams.VIDEOID && $stateParams.VIDEOID != "") {
            		videoId = $stateParams.VIDEOID;
            	}
    		    return {page : "video", videoName : videoId};
           	}]
        }
	})
	.state('searchAds', {
		url:'/allAds?q&category&district&min&max',
		templateUrl: 'searchAds',
		controller : "CategoryController as ctgController",
		resolve: {
			async: ['$stateParams', function($stateParams) {
				console.log("q : ", $stateParams.q);
				var params = {page : 'allAds'};
				if ($stateParams.q) {
					params.q = $stateParams.q;
				}
				
				if ($stateParams.category) {
					params.category = $stateParams.category;
				}
				
				if ($stateParams.district) {
					params.district = $stateParams.district;
				}
				
				if ($stateParams.min) {
					params.min = $stateParams.min;
				}
				
				if ($stateParams.max) {
					params.max = $stateParams.max;
				}
				
				return params;
   			}]
        }
	})
	
	
	.state('viewMore', {
		url:'/ads/:CATEGORY/:ID',
		templateUrl: 'viewMoreDetails',
		controller : "viewMoreController as vMController",
		resolve: {
			async: ['ItemService', '$stateParams', function(ItemService, $stateParams) {
				return ItemService.viewMore($stateParams.ID);
   			}]
        }
	})
	.state('category', {
		url:'/ads/:CATEGORY',
		templateUrl: 'searchAds',
		controller : "CategoryController as ctgController",
		resolve: {
			async: ['$stateParams', function($stateParams) {
				return {page : "category", category : $stateParams.CATEGORY};
   			}]
        }
	})
	.state('editAd', {
		url:'/selectedAd/:AdID',
		templateUrl: 'edit_ad',
		controller : "CategoryController2 as ctgController2",
		resolve: {
			async: ['ItemService', '$stateParams', function(ItemService, $stateParams) {
				return ItemService.editSelectedAd($stateParams.AdID);
   			}]
        }
	})
	
//	.state('postAd', {
//		url: "/postAd",
//		templateUrl: 'create_ad',
//		controller: "PostAdController as pstadController"
//	});
	.state('create_ad', {
		url: "/create_ad",
		templateUrl: 'create_ad'
	})
	.state('login_user', {
		url: "/login_user",
		templateUrl: 'login_user'
	})
	.state('sign_up', {
		url: "/sign_up",
		templateUrl: 'sign_up',
		controller : "signUpPageController as sgUpPageController",
		resolve: {
			Config: [function() {
			    return {page : "sign_up"};
			}]
	    }
			
			
	})
	.state('viewAllMessages', {
		url: "/viewAllMessages",
		templateUrl: 'viewAllMessages',
		controller : "viewAllMessagesController as vwAllMessagesController",
		resolve: {
			Config: [function() {
			    return {page : "viewAllMessages"};
			}]
	    }
	})
	.state('hotelBooking', {
		url: "/hotelBooking",
		templateUrl: 'hotelBooking',
		controller : "hotelBookingController as htlBookingController",
		resolve: {
			Config: [function() {
			    return {page : "hotelBooking"};
			}]
	    }
	})
	
	.state('updateHotelBooking', {
		url: "/updateHotelBooking",
		templateUrl: 'updateHotelBooking',
		controller : "updateHotelBookingController as udHotelBookingController",
		resolve: {
			Config: [function() {
			    return {page : "hotelBooking"};
			}]
	    }
	})
	
	
	;
	
	
	
	
	
	

}]);


angular.element(document).ready(function () {
	
	var videos = document.querySelectorAll("video");
	for (var i = 0, l = videos.length; i < l; i++) {
	    var video = videos[i];
	    var src = video.src || (function () {
	        var sources = video.querySelectorAll("source");
	        for (var j = 0, sl = sources.length; j < sl; j++) {
	            var source = sources[j];
	            var type = source.type;
	            var isMp4 = type.indexOf("mp4") != -1;
	            if (isMp4) return source.src;
	        }
	        return null;
	    })();
	    if (src) {
	        var isYoutube = src && src.match(/(?:youtu|youtube)(?:\.com|\.be)\/([\w\W]+)/i);
	        if (isYoutube) {
	            var id = isYoutube[1].match(/watch\?v=|[\w\W]+/gi);
	            id = (id.length > 1) ? id.splice(1) : id;
	            id = id.toString();
	            var mp4url = "http://www.youtubeinmp4.com/redirect.php?video=";
	            video.src = mp4url + id;
	        }
	    }
	}
});

$(document).ready(function(){
    $("#flip").hover(function(){
        $("#panel").slideToggle("slow");
    });
});

function SendData  () {
	window.location.href="create_ad";        
}
    
App.controller('CategoryController1', ['async', function(async) {
	var self = this;
	self.categories=async;
	
	// showAllAds variablrs nd functions
	self.districts = [
    		{value : "all", display: "Any"},
    	    {value : "Ampara", display: "Ampara"},
    	    {value : "Anuradhapura", display: "Anuradhapura"},
    	    {value : "Badulla", display: "Badulla"},
    	    {value : "Batticaloa", display: "Batticaloa"},
    	    {value : "Colombo", display: "Colombo"},
    	    {value : "Galle", display: "Galle"},
    	    {value : "Gampaha", display: "Gampaha"},
    	    {value : "Hambantota", display: "Hambantota"},
    	    {value : "Jaffna", display: "Jaffna"},
    	    {value : "Kalutara", display: "Kalutara"},
    	    {value : "Kandy", display: "Kandy"},
    	    {value : "Kegalle", display: "Kegalle"},
    	    {value : "Kilinochchi", display: "Kilinochchi"},
    	    {value : "Kurunegala", display: "Kurunegala"},
    	    {value : "Mannar", display: "Mannar"},
    	    {value : "Matale", display: "Matale"},
    	    {value : "Matara", display: "Matara"},
    	    {value : "Monaragala", display: "Monaragala"},
    	    {value : "Mullaitivu", display: "Mullaitivu"},
    	    {value : "Nuwara Eliya", display: "Nuwara Eliya"},
    	    {value : "Polonnaruwa", display: "Polonnaruwa"},
    	    {value : "Puttalam", display: "Puttalam"},
    	    {value : "Ratnapura", display: "Ratnapura"},
    	    {value : "Trincomalee", display: "Trincomalee"},
    	    {value : "Vavuniya", display: "Vavuniya"}];
	
	self.showAllAds = {
			categories : [
			              {value : "all", display : "Any"},
			              {value : "VEHICLES", display : "Vehicles"},
			              {value : "HOTELS", display : "Hotel"},
			              {value : "HOUSE AND PROPERTY", display : "House & Property"},
			              {value : "ELECTRONICS", display : "Electronics"},
			              {value : "FASHION AND BEAUTY", display : "Fashion & Beauty"},
			              {value : "OTHER", display : "Other"}
			              ],
			filter : {
				category : "all",
				district : "all",
				less : null,
				more : null
			}
	}
	
	
}]);
    
App.controller('ItemListController', ['async', function(async) {
	var self = this;
	self.items=async;
}]);




App.controller('CategoryController2', ['async', 'DNDataService', 'DNUtilService','$scope', function(async, DNDataService, DNUtilService, $scope) {
	
	var self = this;
	self.categories = async;

	self.dataService = DNDataService;
	self.utilService = DNUtilService;
	
	self.filter = {
		category : "all",
		district : "all",
		less : null,
		more : null
	}
	
	
	
	self.init = function(dlat,dlan,city,category,description) {
		initializeEdit(dlat,dlan);
		

	    var element1 = document.getElementById('dropDown');
	    element1.value = category;
	    
	    var element2 = document.getElementById('dropDownCity');
	    element2.value = city;
	    
	    var arr1 = description.split(";");
	    
	    
			document.getElementById("hiddenFeild").value = category; 
			
			if (category =='VEHICLES'){
				document.getElementById("vehiclePanel").style.display = 'block';
				
				var arr10 = arr1[0].split(":");
				document.getElementById('vehicleBrand').value = arr10[1];
				
				var arr11 = arr1[1].split(":");
				document.getElementById('vehicleModelYear').value = arr11[1];
				
				var arr12 = arr1[2].split(":");
				document.getElementById('vehicleCondition').value = arr12[1];
				
				var arr13 = arr1[3].split(":");
				document.getElementById('vehicleTransmission').value = arr13[1];
				
				var arr14 = arr1[4].split(":");
				document.getElementById('vehicleModel').value = arr14[1];
				
				var arr15 = arr1[5].split(":");
				document.getElementById('vehicleBodyType').value = arr15[1];
				
				var arr16 = arr1[6].split(":");
				document.getElementById('vehicleFuelType').value = arr16[1];
				
				var arr17 = arr1[7].split(":");
				document.getElementById('vehicleEnginCapacity').value = arr17[1];
				
				var arr18 = arr1[8].split(":");
				document.getElementById('vehicleMileage').value = arr18[1];
				
				var arr19 = arr1[9].split(":");
				document.getElementById('vehiclePrice').value = arr19[1];
				
				
				
			}
			else{
				document.getElementById("vehiclePanel").style.display = 'none';
			}
			
			if (category =='HOUSE AND PROPERTY'){
				document.getElementById("houseAndPropertyPanel").style.display = 'block';
		
				var arr10 = arr1[0].split(":");
				document.getElementById('houseAndPropertyAddress').value = arr10[1];
				
				var arr11 = arr1[1].split(":");
				document.getElementById('houseAndPropertyLandType').value = arr11[1];
				
				var arr12 = arr1[2].split(":");
				document.getElementById('houseAndPropertyLandSize').value = arr12[1];
				
				var arr13 = arr1[3].split(":");
				document.getElementById('houseAndPropertyPrice').value = arr13[1];
					
			
			}
			else{
				document.getElementById("houseAndPropertyPanel").style.display = 'none';
			}
		
			if (category =='HOTELS'){
				document.getElementById("hotelsPanel").style.display = 'block';
			
			
				var arr10 = arr1[0].split(":");
				document.getElementById('hotelsNumberOfRooms').value = arr10[1];
				
				var arr11 = arr1[1].split(":");
				document.getElementById('hotelsWeddingHalls').value = arr11[1];
				
				var arr12 = arr1[2].split(":");
				document.getElementById('hotelsSwimmingPools').value = arr12[1];
				
				var arr13 = arr1[3].split(":");
				document.getElementById('hotelsInternet').value = arr13[1];
				
				var arr14 = arr1[4].split(":");
				document.getElementById('hotelsTransport').value = arr14[1];
				
				var arr15 = arr1[5].split(":");
				document.getElementById('hotelsFitness').value = arr15[1];
				
			
			}
			else{
				document.getElementById("hotelsPanel").style.display = 'none';
			}
			if (category =='ELECTRONICS'){
				document.getElementById("electronicsPanel").style.display = 'block';
			

				var arr10 = arr1[0].split(":");
				document.getElementById('electronicBrand').value = arr10[1];
				
				var arr11 = arr1[1].split(":");
				document.getElementById('electronicCondition').value = arr11[1];
				
				var arr12 = arr1[2].split(":");
				document.getElementById('electronicModel').value = arr12[1];
				
				var arr13 = arr1[3].split(":");
				document.getElementById('electronicPrice').value = arr13[1];
				
			
			}
			else{
				document.getElementById("electronicsPanel").style.display = 'none';
			}
			
			if (category =='FASHION AND BEAUTY'){
				document.getElementById("fasionPanel").style.display = 'block';
			
				var arr10 = arr1[0].split(":");
				document.getElementById('fasionItem').value = arr10[1];
				
				var arr11 = arr1[1].split(":");
				document.getElementById('fasionPrice').value = arr11[1];
			
			
			}
			else{
				document.getElementById("fasionPanel").style.display = 'none';
			}
			
			if (category =='OTHER'){
				document.getElementById("otherPanel").style.display = 'block';
				
				var arr10 = arr1[0].split(":");
				document.getElementById('otherPrice').value = arr10[1];
				
			
			}
			else{
				document.getElementById("otherPanel").style.display = 'none';
			}
	}
}]);




App.filter('trusted', ['$sce', function ($sce) {
    return function(url) {
        return $sce.trustAsResourceUrl(url);
    };
}]);

App.controller('GreetingController', ['$scope', function($scope) {
	$scope.$on('$viewContentLoaded', function(){});
}]);
    
App.controller("HttpGetController1", ['$scope', '$location', '$window', '$http', 'DNDataService', function ($scope, $location, $window, $http, DNDataService) {

	$scope.dndataService = DNDataService;
    $scope.imageSlidingFunc = function () {
    	imageSlidingFunc();
    }
    
	$scope.districts = [
		{title: "Search in Any Where"},
	    {title: "Ampara"  },
	    {title: "Anuradhapura"},
	    {title: "Badulla"  },
	    {title: "Batticaloa"},
	    {title: "Colombo"  },
	    {title: "Galle"},
	    {title: "Gampaha"  },
	    {title: "Hambantota"},
	    {title: "Jaffna"  },
	    {title: "Kalutara"},
	    {title: "Kandy"  },
	    {title: "Kegalle"},
	    {title: "Kilinochchi"  },
	    {title: "Kurunegala"},
	    {title: "Mannar"  },
	    {title: "Monaragala"},
	    {title: "Mullaitivu"  },
	    {title: "Nuwara Eliya"},
	    {title: "Polonnaruwa"  },
	    {title: "Puttalam"},
	    {title: "Ratnapura"  },
	    {title: "Trincomalee"},
	    {title: "Vavuniya"  }];
}]);
    
App.controller("HttpGetController", function ($scope,$location,$window, $http) {
	console.log("HttpGetController");
    $scope.showme = function (dlat,dlan) {
    	imageSlidingFunc();
    	initialize(dlat,dlan);
    }
    
    $scope.showLocation = function (dlat,dlan) {
    	initialize(dlat,dlan);
    }
    
    $scope.initializeCreateAd = function () {
    	initializeCreateAd();
    }
});
    
App.controller("HttpGetController2", function ($scope,$location,$window, $http) {
    
    $scope.initializeCreateAd = function () {
    	initializeCreateAd();
    }
});

App.controller("viewMoreController", ['ItemService','async','$scope', '$location', '$window', '$http', function(ItemService,async,$scope, $location, $window, $http) {
	console.log("viewMoreController");
	var self = this;
	self.categories = async;
	console.log(self.categories);
	
	self.init = function(dlat,dlan,category,userName) {
		initialize(dlat,dlan);
		initViewMoreSclider();
		
		var user = getCookie("user");
    	
		
		
		if (category == 'HOTELS'){
			
			if (user == userName) {
				
				document.getElementById("viewMoreBookHotelButtonDiv").style.display = "none";
				document.getElementById("viewMoreContactSellerButton").style.display = "none";
				
				
				
	    	}else{
	    		
	    		document.getElementById("viewMoreUpdateHotelButton").style.display = "none";
				
	    	}
			
			
		}else{
			
			document.getElementById("viewMoreBookHotelButtonDiv").style.display = "none";
			document.getElementById("viewMoreUpdateHotelButton").style.display = "none";
			
			
		}
		
		
	}
	
	self.deleteAd_func = function(id,userName) {
		var user = getCookie("user");
    	if (user == userName) {
    		
    	
        var data = $.param({
            AdvertismentId: id
            
        });
    
       var config = {
            headers : {
                'Content-Type': 'application/x-www-form-urlencoded;charset=utf-8;'
            }
        }

        $http.post('/deleteAd', data, config)
        .success(function (data, status, headers, config) {

        	$window.location.href='/#/home';
        })
        .error(function (data, status, header, config) {
        	
        	alert("can not delete this advertisment");
        	
        });
       

   	
    	} else {
    		alert("can not delete this advertisment");
    	}


	
	}
	
	self.editAd_func = function(id,userName) {

		var user = getCookie("user");
    	if (user == userName) {

        	$window.location.href='/#/selectedAd/'+id;
        }
    	else{
        	alert("can not edit this advertisment");
       }

	
	}

	
	self.contactSeller_func = function(userName) {

		var user = getCookie("user");
    	if (user == 'Login') {

    		alert("Please Login to Contact Buyer");
        }
    	else{
        	var queryParams = {receiverUserName : userName, userName : user,messageHeader:'Please Contact Buyer',messageContent:user + ' is interesting on your advertiesment'};

        	ItemService.sendMessageByUserName(queryParams,function(response) {
    				console.log("success : ", response.data);
    				
    			},
    			function(response) {
    				console.log("error : ", response.data);
    		});
       }

	
	}
	
	self.bookHotel_func = function(id,userName) {
	
		var user = getCookie("user");
    	if (user == 'Login') {

    		alert("Please Login to book the hotel");
        }else{
        	setCookie("hotelID", id, 1800000);
        	$window.location.href='/#/hotelBooking';
        	
        }
	}

	
	
	self.updateHotel_func = function(id) {
			
		
			
			setCookie("hotelID", id, 1800000);
			
			$window.location.href='/#/updateHotelBooking';
        	
	}



	
}]);
    
function getID() {
	// This function is anonymous, is executed immediately and
	// the return value is assigned to QueryString!
	var query_string = {};
	var query = window.location.href;
	
	var vars = query.split("?");
	
	
		var pair = vars[1].split("=");
		// If first entry with this name
		if (typeof query_string[pair[0]] === "undefined") {
			query_string[pair[0]] = decodeURIComponent(pair[1]);
			// If second entry with this name
		} else if (typeof query_string[pair[0]] === "string") {
			var arr = [ query_string[pair[0]],decodeURIComponent(pair[1]) ];
			query_string[pair[0]] = arr;
			// If third or later entry with this name
		} else {
			query_string[pair[0]].push(decodeURIComponent(pair[1]));
		}
	

	if (typeof query_string['id'] == 'undefined') {
		return "empty";
	} else {
		return query_string['id'];
	}
}

var cname = "user";
var cvalue = "pradeep";
var exdays = 1*3600; // one hour expiry
//setCookie(cname, cvalue, exdays);

function setCookie(cname, cvalue, exdays) {
    var d = new Date();
    d.setTime(d.getTime() + (exdays*1000));
    var expires = "expires=" + d.toGMTString();
    document.cookie = cname+"="+cvalue+"; "+expires;
}

function getCookie(cname) {
    var name = cname + "=";
    var ca = document.cookie.split(';');
    for(var i=0; i<ca.length; i++) {
        var c = ca[i];
        while (c.charAt(0)==' ') c = c.substring(1);
        if (c.indexOf(name) != -1) {
            return c.substring(name.length, c.length);
        }
    }
    return "Login";
}

    
    
 /*
App.controller("viewMoreController1", function ($scope, $location, $window, $http) {

    $scope.deleteAd_func = function () {
       // use $.param jQuery function to serialize data from JSON 
    	
    	
    	alert("im from delete function");
        var data = $.param({
            AdvertismentId: $scope.ID
            
        });
        
     
    
       var config = {
            headers : {
                'Content-Type': 'application/x-www-form-urlencoded;charset=utf-8;'
            }
        }

        $http.post('/deleteAd', data, config)
        .success(function (data, status, headers, config) {

        	$window.location.href='/#/home';
        })
        .error(function (data, status, header, config) {
        	
        	alert("can not delete this advertisment");
        	$window.location.href='/loginError';
        });
       
       
    };
    
    

});

   */     
    
    



App.controller('dataTimePickerCtrl', function($scope) {
  $scope.myDate = new Date();

  $scope.minDate = new Date(
      $scope.myDate.getFullYear(),
      $scope.myDate.getMonth() - 2,
      $scope.myDate.getDate());

  $scope.maxDate = new Date(
      $scope.myDate.getFullYear(),
      $scope.myDate.getMonth() + 2,
      $scope.myDate.getDate());
  
 
});



function login_user_func() {
	var user = getCookie("user");
	
	if (user == 'Login') {
		window.location.href='/#/login_user';
	} else {
		
		document.getElementById("loginLogout").innerHTML="Login";
		document.getElementById("userName").innerHTML="";
		setCookie("user", "", -1);
		document.getElementById("messageDiv").style.display = "none";
	}
}


function viewAllMessages() {
	
		window.location.href='/#/viewAllMessages';
	
}




