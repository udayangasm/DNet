'use strict'

App.controller('viewAllMessagesController', ['Config', 'DNUtilService', 'DNDataService', 'ItemService', '$window', function(Config, DNUtilService, DNDataService, ItemService, $window) {
	var self = this;
	
	self.config = Config;
	self.utilService = DNUtilService;
	self.dataService = DNDataService;
	self.itemService = ItemService;
	
	
	self.messages = null;
	
	
	
	
	
	self.init = function() {
		
		var queryParams = {userName : getCookie("user")};
		self.itemService.getAllMessagesByUserName(queryParams,function(response) {
				console.log("success : ", response.data);
				self.messages = response.data;
			},
			function(response) {
				console.log("error : ", response.data);
			});
		
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

    

    
    
    
	
}]);