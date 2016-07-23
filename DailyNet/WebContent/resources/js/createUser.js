
'use strict';

var App2 = angular.module('createUser',['ui.router']);


App2.controller("HttpGetController", function ($scope,$location,$window, $http) {

    $scope.SendData = function () {
       // use $.param jQuery function to serialize data from JSON 
    	
        var data = $.param({
            name: $scope.username,
            discription: $scope.discription,
            password: $scope.password
        });
    
        var config = {
            headers : {
                'Content-Type': 'application/x-www-form-urlencoded;charset=utf-8;'
            }
        }

        $http.post('/DailyNet/new_user', data, config)
        .success(function (data, status, headers, config) {
        	
        	alert("Successfully created");
        	$window.location.href='/DailyNet/admin';
        })
        .error(function (data, status, header, config) {
        	alert("Creation failed");
        	$window.location.href='/DailyNet/loginError';
        });
    };

});
