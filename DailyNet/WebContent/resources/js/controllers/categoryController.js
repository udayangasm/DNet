App.controller('CategoryController', ['async', 'DNDataService', 'DNUtilService', 'ItemService', function(async, DNDataService, DNUtilService, ItemService) {
	
	var self = this;
	self.async = async;
	self.ads = null;
	self.dataService = DNDataService;
	self.utilService = DNUtilService;
	self.itemService = ItemService;
	
	self.init = function() {
		
		
		console.log("init");
		if (self.async.page == "category") {
			self.itemService.getSelectedCategory(self.async.category, function(response) {
				self.ads = response.data;
			}, function(response) {
				console.log("error : ", response.data);
			});
		} else if (self.async.page == "allAds") {
//			if (self.async.q) {
				self.itemService.searchAdsByTag(self.async, function(response) {
					self.ads = response.data;
				}, function(response) {
					console.log("error : ", response.data);
				});
//			} else {
//				self.itemService.getAllAds(function(response) {
//					self.ads = response.data;
//				}, function(response) {
//					console.log("error : ", response.data);
//				});
//			}
		}
		
	}
	
	self.filter = {
		category : "any",
		district : "any",
		min : null,
		max : null
	}
	
}]);