'use strict'

App.controller("AdsController", ['async', 'ItemService', function(async, ItemService) {
	
	var self = this;
	
	self.async = async;
	self.itemService = ItemService;
	
	self.ads = undefined;
	
	self.init = function() {
		self.loadAds();
	}
	
	self.loadAds = function() {
		console.log("q : ", self.async.q);
		if (self.async.q) {
			self.itemService.searchAdsByTag({q: self.async.q}, function(response) {
				self.ads = response.data;
			},
			function(response) {
				console.log("error : ", response.data);
			});
		} else {
			self.itemService.getAllAds(function(response) {
				self.ads = response.data;
			},
			function(response) {
				console.log("error : ", response.data);
			});
		}
	}
	
}]);