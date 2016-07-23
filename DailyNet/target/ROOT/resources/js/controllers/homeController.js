'use strict'

App.controller('HomeController', ['Config', 'DNUtilService', 'DNDataService', 'ItemService', '$window', function(Config, DNUtilService, DNDataService, ItemService, $window) {
	var self = this;
	
	self.config = Config;
	self.utilService = DNUtilService;
	self.dataService = DNDataService;
	self.itemService = ItemService;
	
	self.categories = null;
	self.videos = null;
	self.loadedVideo = null;
	self.randomAds = null;
	
	
	
	
	
	self.init = function() {
		self.itemService.getCategories(function(response) {
				console.log("success : ", response.data);
				self.categories = response.data;
			},
			function(response) {
				console.log("error : ", response.data);
			});
		self.itemService.getRandomAds({limit: 3}, function(response) {
				self.randomAds = response.data;
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
    
    
    self.create_ad_func = function () {

    	var user = getCookie("user");
    	if (user == 'Login') {
    		$window.location.href='/#/login_user';
    	} else {
    		$window.location.href='create_ad';
    	}

    }
    
    self.loadVideos = function(videoId) {
    	console.log("loadVideos : ", videoId);
    	var queryParams = {offset : 0, limit : 10};
    	if (videoId) {
    		queryParams.videoName = videoId;
    		self.itemService.getVideo(queryParams, function(response) {
    			console.log("success : ", response.data);
    			self.videos = response.data;
    			self.loadedVideo = response.data[0];
    		},
    		function(response) {
    			console.log("error : ", response.data);
    		});
    	} else {
    		self.itemService.getVideos(queryParams, function(response) {
    			console.log("success : ", response.data);
    			self.videos = response.data;
    			self.loadedVideo = response.data[0];
    		},
    		function(response) {
    			console.log("error : ", response.data);
    		});
    	}
    }
    
    self.playThisVideo = function(video) {
    	video.videoName = video.videoName + '?autoplay=1';
    	self.loadedVideo = video;
    }
	
}]);