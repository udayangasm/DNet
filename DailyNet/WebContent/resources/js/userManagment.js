
'use strict';

var App2 = angular.module('myApp2',['ui.router']);


App2.controller("HttpGetController", function ($scope,$location,$window, $http) {

    $scope.SendData = function () {
       // use $.param jQuery function to serialize data from JSON 
    	
    	
        var data = $.param({
            fName: $scope.username,
            lName: $scope.password
        });
    
        var config = {
            headers : {
                'Content-Type': 'application/x-www-form-urlencoded;charset=utf-8;'
            }
        }

        $http.post('/DailyNet/login', data, config)
        .success(function (data, status, headers, config) {

        	$window.location.href='/DailyNet/admin';
        })
        .error(function (data, status, header, config) {
        	
        	$window.location.href='/DailyNet/loginError';
        });
    };

});
