'use strict';

App.factory('ItemService', ['$http', '$q', 'DNDataService', function($http, $q, DNDataService) {

	return {
			
		fetchFashionList: function() {//Fetches category list from server.
			return $http.get(DNDataService.config.getHostUrl() + '/fashionCategories')
				.then(function(response) {
						return response.data;
					}, 
					function(errResponse) {
						console.error('Error while fetching Items');
						return $q.reject(errResponse);
					}
				);
		},
		fetchHotelList: function() {//Fetches category list from server.
			return $http.get(DNDataService.config.getHostUrl() + '/hotelCategories')
				.then(
					function(response){
						return response.data;
					}, 
					function(errResponse){
						console.error('Error while fetching Items');
						return $q.reject(errResponse);
					}
				);
		},
		fetchJwellaryList: function() {//Fetches category list from server.
			return $http.get(DNDataService.config.getHostUrl() + '/jwellaryCategories')
				.then(
					function(response){
						return response.data;
					}, 
					function(errResponse){
						console.error('Error while fetching Items');
						return $q.reject(errResponse);
					}
				);
		},
		fetchPlacesList: function() {//Fetches category list from server.
			return $http.get(DNDataService.config.getHostUrl() + '/placesCategories')
				.then(
					function(response){
						return response.data;
					}, 
					function(errResponse){
						console.error('Error while fetching Items');
						return $q.reject(errResponse);
					}
				);
		},
		fetchElectronicList: function() {//Fetches category list from server.
			return $http.get(DNDataService.config.getHostUrl() + '/electronicCategories')
				.then(
					function(response){
						return response.data;
					}, 
					function(errResponse){
						console.error('Error while fetching Items');
						return $q.reject(errResponse);
					}
				);
		},
		fetchVehicleList: function() {//Fetches category list from server.
			return $http.get(DNDataService.config.getHostUrl() + '/vehicleCategories')
				.then(
					function(response){
						return response.data;
					}, 
					function(errResponse){
						console.error('Error while fetching Items');
						return $q.reject(errResponse);
					}
				);
		},
		fetchAllAdsList: function() {//Fetches category list from server.
			return $http.get(DNDataService.config.getHostUrl() + '/allAdsCategories')
				.then(
					function(response){
						return response.data;
					}, 
					function(errResponse){
						console.error('Error while fetching Items');
						return $q.reject(errResponse);
					}
				);
		},
		fetchNewsList: function() {//Fetches category list from server.
			return $http.get(DNDataService.config.getHostUrl() + '/getLatestNews')
				.then(
					function(response){
						return response.data;
					}, 
					function(errResponse){
						console.error('Error while fetching Items');
						return $q.reject(errResponse);
					}
				);
		},
		fetchSeletedNews: function(ID) {//Fetches category list from server.
			return $http.get(DNDataService.config.getHostUrl() + '/latestNews/'+ID)
				.then(
					function(response){
						return response.data;
					}, 
					function(errResponse){
						console.error('Error while fetching Items');
						return $q.reject(errResponse);
					}
				);
		},
		fetchVidosList: function(name) {//Fetches category list from server.
			
			return $http.get(DNDataService.config.getHostUrl() + '/getLatestVideos/'+name)
				.then(
					function(response){
						return response.data;
					}, 
					function(errResponse){
						console.error('Error while fetching Items');
						return $q.reject(errResponse);
					}
				);
		},
		fetchanotherVideo: function(ID) {//Fetches category list from server.
			return $http.get(DNDataService.config.getHostUrl() + '/getanotherVideos/'+ID)
				.then(
					function(response){
						return response.data;
					}, 
					function(errResponse){
						console.error('Error while fetching Items');
						return $q.reject(errResponse);
					}
				);
		},
		viewMore: function(ID) {//Fetches category list from server.
			return $http.get(DNDataService.config.getHostUrl() + '/viewMore/'+ID)
				.then(
					function(response){
						return response.data;
					}, 
					function(errResponse){
						console.error('Error while fetching Items');
						return $q.reject(errResponse);
					}
				);
		},
		searchAds	: function(ID) {//Fetches category list from server.
			return $http.get(DNDataService.config.getHostUrl() + '/searchSpecificAds/'+ID)
				.then(
					function(response){
						return response.data;
					}, 
					function(errResponse){
						console.error('Error while fetching Items');
						return $q.reject(errResponse);
					}
				);
		},
		viewSelectedCategory : function(ID) {//Fetches category list from server.
			return $http.get(DNDataService.config.getHostUrl() + '/searchAdsByCategory/'+ID)
				.then(
					function(response){
						return response.data;
					}, 
					function(errResponse){
						console.error('Error while fetching Items');
						return $q.reject(errResponse);
					}
				);
		},
		filterAds : function(ID) {//Fetches category list from server.
			return $http.get(DNDataService.config.getHostUrl() + '/searchFilterAds/'+ID)
				.then(
					function(response){
						return response.data;
					}, 
					function(errResponse){
						console.error('Error while fetching Items');
						return $q.reject(errResponse);
					}
				);
		},
		
		editSelectedAd	: function(ID) {//Fetches category list from server.
			return $http.get(DNDataService.config.getHostUrl() + '/editSelectedAd/'+ID)
				.then(
					function(response){
						return response.data;
					}, 
					function(errResponse){
						console.error('Error while fetching Items');
						return $q.reject(errResponse);
					}
				);
		},
		
		getCategories : function(sucessCB, errorCB) {
			return $http.get(DNDataService.config.getHostUrl() + '/categories')
			.then(sucessCB, errorCB);
		},
		
		getRandomAds : function(data, sucessCB, errorCB) {
			return $http.get(DNDataService.config.getHostUrl() + '/randomads?limit=' + data.limit)
			.then(sucessCB, errorCB);
		},
		
		getVideos : function(data, sucessCB, errorCB) {
			return $http.get(DNDataService.config.getHostUrl() + '/videos?offset='+ data.offset + '&limit=' + data.limit)
			.then(sucessCB, errorCB);
		},
		
		getVideo : function(data, sucessCB, errorCB) {
			return $http.get(DNDataService.config.getHostUrl() + '/videos/'+ data.videoName +'?offset='+ data.offset + '&limit=' + data.limit)
			.then(sucessCB, errorCB);
		},
		
		searchAdsByTag : function(data, sucessCB, errorCB) {
			var queryParam = "";
			var keys = Object.keys
			for (var key in data) {
				queryParam = queryParam + "&" + key + "=" + data[key];
			}
			queryParam = queryParam.substring(1);
			console.log("queryParam : ", queryParam);
			return $http.get(DNDataService.config.getHostUrl() + '/allAds?'+ queryParam)
			.then(sucessCB, errorCB);
		},
		
		getAllAds : function(sucessCB, errorCB) {
			return $http.get(DNDataService.config.getHostUrl() + '/allAds')
			.then(sucessCB, errorCB);
		},
		getSelectedCategory : function(ID, sucessCB, errorCB) {//Fetches category list from server.
			return $http.get(DNDataService.config.getHostUrl() + '/searchAdsByCategory/'+ID)
			.then(sucessCB, errorCB);
		},
		
		getAllMessagesByUserName : function(data, sucessCB, errorCB) {
			var ID = data.userName;
			return $http.get(DNDataService.config.getHostUrl() + '/allMessagesByUserName/'+ ID)
			.then(sucessCB, errorCB);
		},
		
		sendMessage : function(data, sucessCB, errorCB) {
			return $http.get(DNDataService.config.getHostUrl() + '/sendMessage'+'?receiverID='+ data.receiverID + '&userName=' + data.userName + '&messageHeader=' + data.messageHeader  + '&messageContent=' + data.messageContent )
			.then(sucessCB, errorCB);
		},
		
		sendMessageByUserName: function(data, sucessCB, errorCB) {
			return $http.get(DNDataService.config.getHostUrl() + '/sendMessageByUserName'+'?receiverUserName='+ data.receiverUserName + '&userName=' + data.userName + '&messageHeader=' + data.messageHeader  + '&messageContent=' + data.messageContent )
			.then(sucessCB, errorCB);
		},
		
		bookHotel: function(data, sucessCB, errorCB) {
			return $http.get(DNDataService.config.getHostUrl() + '/bookHotel'+'?receiverUserName='+ data.receiverUserName + '&userName=' + data.userName + '&messageHeader=' + data.messageHeader  + '&messageContent=' + data.messageContent+ '&fromDate=' + data.fromDate+ '&toDate=' + data.toDate+ '&hotelID=' + data.hotelID+ '&roomType=' + data.roomType + '&numOfRooms=' + data.numOfRooms + '&numOfMens=' + data.numOfMens+ '&numOfWomens=' + data.numOfWomens+ '&numOfChildren=' + data.numOfChildren)
			.then(sucessCB, errorCB);
		},
		
		
		updateHotelBooking: function(data, sucessCB, errorCB) {
			return $http.get(DNDataService.config.getHostUrl() + '/updateHotelBookingDetails'+'?receiverUserName='+ data.receiverUserName + '&userName=' + data.userName + '&messageHeader=' + data.messageHeader  + '&messageContent=' + data.messageContent+ '&hotelID=' + data.hotelID + '&dueDate=' + data.dueDate + '&numOfSingleRooms=' + data.numOfSingleRooms  + '&numOfDoubleRooms=' + data.numOfDoubleRooms + '&numOfTripleRooms=' + data.numOfTripleRooms+ '&priceOfSingleRoom=' + data.priceOfSingleRoom  + '&priceOfDoubleRoom=' + data.priceOfDoubleRoom + '&priceOfTripleRoom=' + data.priceOfTripleRoom)
			.then(sucessCB, errorCB);
		},
		
		
		
	};
}]);

