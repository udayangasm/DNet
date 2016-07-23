'use strict'

App.controller("signUpPageController",[ 'ItemService','$scope', '$location', '$window', '$http', function ( ItemService,$scope, $location, $window, $http) {

	
	
	
    $scope.signUpFunc = function () {
       // use $.param jQuery function to serialize data from JSON 
    	
        var data = $.param({
            userName: $scope.userName,
            emailOrNumber: $scope.NumberOrEmail,
            password: $scope.password
        });
        
        if($scope.password != $scope.comfirmPassword){
        	alert("password should be matched");
        	return;
        }
    
       var config = {
            headers : {
                'Content-Type': 'application/x-www-form-urlencoded;charset=utf-8;'
            }
        }

        $http.post('/register', data, config)
        .success(function (data, status, headers, config) {
        	
        	var queryParams = {receiverUserName : $scope.userName, userName : 'DailyNet',messageHeader:'Team DailyNet ',messageContent:'Welcome to DailyNet'};

        	ItemService.sendMessageByUserName(queryParams,function(response) {
    				console.log("success : ", response.data);
    				
    			},
    			function(response) {
    				console.log("error : ", response.data);
    		});

        	$window.location.href='/#/login_user';
        })
        .error(function (data, status, header, config) {
        	
        	$window.location.href='/loginError';
        });
       
       
    };
    
    

}]);





