'use strict';

var App = angular.module('allAds',['ui.router']);

App.config(['$stateProvider', '$urlRouterProvider', function($stateProvider, $urlRouterProvider){
	
	
	
	$urlRouterProvider.when('', '/allAdsCategory');
	
	$stateProvider
	.state('allAdsCategory', {
		url: "/allAdsCategory",
		templateUrl: 'allAdsCategory',
		controller : "CategoryController as ctgController",
		resolve: {
            async: ['ItemService', function(ItemService) {
                return ItemService.fetchAllAdsList();
           	}]
        }
	})
	
	.state('viewMoreDetails', {
		url:'/{ID:[A-Za-z]{0,9}}',
		templateUrl: 'viewMoreDetails',
		controller : "CategoryController as ctgController",
		resolve: {
    
			async: ['ItemService', '$stateParams', function(ItemService, $stateParams) {
        		
				return ItemService.viewMore($stateParams.ID);
   			}]

        }
	})
	
	
	
	
	
}]);


App.controller('CategoryController', ['async', function(async) {
          var self = this;
          self.categories=async;
}]);




App.controller("HttpGetController", function ($scope,$location,$window, $http) {

    $scope.showme = function (dlat,dlan) {
    	imageSlidingFunc();
    	initialize(dlat,dlan);
    	
    }

});