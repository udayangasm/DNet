'use strict'

App.service('DNDataService', [function() {
	
	var config = {
			
			// ROOT
//			APP_NAME : '',
//			HOST : "http://www.dailynet.lk",
//			APP_URL : "http://www.dailynet.lk",
//			getHostUrl : function() {return this.HOST},
			
			// DNet
			APP_NAME : '',
			HOST : "http://localhost:8080",
			APP_URL : "http://www.dailynet.lk",
			getHostUrl : function() {return this.HOST + "/" + this.APP_NAME}
	}
	
	return {
		config : config,
	}
}]);


