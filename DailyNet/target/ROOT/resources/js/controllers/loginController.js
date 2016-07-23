'use strict'

App.controller("LoginController", function ($scope, $location, $window, $http) {

    $scope.Login = function () {
       // use $.param jQuery function to serialize data from JSON 
    	
    	
        var data = $.param({
            fName: $scope.clientName,
            lName: $scope.password
        });
    
       var config = {
            headers : {
                'Content-Type': 'application/x-www-form-urlencoded;charset=utf-8;'
            }
        }

        $http.post('/login', data, config)
        .success(function (data, status, headers, config) {
        	if($scope.clientName == 'DailyNet'){
        		$window.location.href='/admin';
        	}else{
        		$window.location.href='';
        	}
        	
        	setCookie(cname,$scope.clientName,exdays);
        	
        	
        })
        .error(function (data, status, header, config) {
        	
        	$window.location.href='/loginError';
        }); 
    };
    
    

});