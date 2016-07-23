'use strict'

App.controller('updateHotelBookingController', ['Config', 'DNUtilService', 'DNDataService', 'ItemService', '$window', function(Config, DNUtilService, DNDataService, ItemService, $window) {
	var self = this;
	
	self.config = Config;
	self.utilService = DNUtilService;
	self.dataService = DNDataService;
	self.itemService = ItemService;
	
	self.categories = null;
	self.videos = null;
	self.loadedVideo = null;
	self.randomAds = null;
	
	
	
	self.myDate = new Date();

	self.minDate = new Date(
			self.myDate.getFullYear(),
			self.myDate.getMonth() - 2,
			self.myDate.getDate());

	self.maxDate = new Date(
			self.myDate.getFullYear(),
			self.myDate.getMonth() + 2,
			self.myDate.getDate());
	
	
	
	self.init = function() {
		self.itemService.getCategories(function(response) {
				console.log("success : ", response.data);
				self.categories = response.data;
			},
			function(response) {
				console.log("error : ", response.data);
			});
		
	}
	
	self.imageSlidingFunc = function () {
    	var user = getCookie("user");
    	if (user == 'Login') {
    		document.getElementById("loginLogout").innerHTML="Login";
    		document.getElementById("messageDiv").style.display = "none";
    	} else {
    		
    		document.getElementById("loginLogout").innerHTML="Logout";
    		document.getElementById("userName").innerHTML=user;
    		document.getElementById("messageDiv").style.display = "flex";
    	}
    		
    	imageSlidingFunc();
    }
    
    self.login_user_func = function () {
    	var user = getCookie("user");
    	
    	if (user == 'Login') {
    		$window.location.href='/#/login_user';
    	} else {
    		
    		document.getElementById("loginLogout").innerHTML="Login";
    		document.getElementById("userName").innerHTML="";
    		setCookie("user", "", -1);
    		document.getElementById("messageDiv").style.display = "none";
    	}
    }
    
    
    self.updateHotelBooking_func = function (fromDate, numOfSingleRooms,numOfDoubleRooms,numOfTripleRooms,priceOfSingleRoom,priceOfDoubleRoom,priceOfTripleRoom) {

    	var user = getCookie("user");
    	if (user == 'Login') {
    		alert('Please login');
    	} else {
    		
    		
    		var hotelID = getCookie("hotelID");
        	
    		
        	var queryParams = {hotelID:hotelID,dueDate:fromDate,numOfSingleRooms:numOfSingleRooms,numOfDoubleRooms:numOfDoubleRooms,numOfTripleRooms:numOfTripleRooms,priceOfSingleRoom:priceOfSingleRoom,priceOfDoubleRoom:priceOfDoubleRoom,priceOfTripleRoom:priceOfTripleRoom, receiverUserName : user, userName : 'DailyNet',messageHeader:'Team DailyNet',messageContent:'Update Details for '+fromDate};

        	
    		self.itemService.updateHotelBooking(queryParams,function(response) {
    				console.log("success : ", response.data);
    				$window.location.href='/#/home';
    				
    			},
    			function(response) {
    				console.log("error : ", response.data);
    				$window.location.href='/#/home';
    		});

    		
    		
    	}

    }
    
    
}]);






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
