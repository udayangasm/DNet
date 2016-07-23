
'use strict';

var App = angular.module('myApp3',['ui.router']);


App.config(['$stateProvider', '$urlRouterProvider', function($stateProvider, $urlRouterProvider){

	$stateProvider
	.state('create_user', {
		url: "/create_user",
		templateUrl: 'create_user'
	
	})

	
	.state('view_users', {
		url: '/view_users',
		templateUrl: 'view_users'
	})

	.state('create_ad', {
		url: '/create_ad',
		templateUrl: 'create_ad'
	})
	
	
	.state('create_post', {
		url: "/create_post",
		templateUrl: 'create_post'
		
	})
	
	.state('view_all_categories', {
		url: "/view_all_categories",
		templateUrl: 'view_all_categories'
		
	})
	
	
	
}]);


App.controller('UserController', ['$scope', 'UserService', function($scope, UserService) {
    var self = this;
    self.user={id:null,username:'',address:'',email:''};
    self.users=[];
        
    self.fetchAllUsers = function(){
        UserService.fetchAllUsers()
            .then(
					       function(d) {
						        self.users = d;
					       },
      					function(errResponse){
      						console.error('Error while fetching Currencies');
      					}
			       );
    };

	
}]);