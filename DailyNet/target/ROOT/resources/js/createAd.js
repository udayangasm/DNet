
'use strict';

var app = angular.module('createAd',['ui.router']);


app.controller("createAd", function ($scope,$location,$window, $http) {

    $scope.add = function () {
        	alert("data upload");
        	
    	
    	
    	var file = document.getElementById('file').files[0];
    		
       var fd = new FormData();
        //Take the first selected file
        fd.append("file", file);
        

    	var e = document.getElementById("dropDown");
    	var strUser = e.options[e.selectedIndex].text;
    	
    	var heder = document.getElementById("header").value;
    	
    	var disc = document.getElementById("description").value;
    	
        var data = $.param({
            description: disc,
            heder: heder,
            category: strUser
            
        });
        
        
        
        
        alert(data);
    
        var config = {
            headers : {
                'Content-Type': 'undefined'
            }
        }

        $http.post('/DailyNet/new_ad', fd,data, config)
        .success(function (data, status, headers, config) {
        	
        	alert("Successfully added");
        	$window.location.href='/DailyNet/admin';
        })
        .error(function (data, status, header, config) {
        	alert("added failed");
        	$window.location.href='/DailyNet/loginError';
        });
    };
    
    
    
    
    $scope.createPage  = function () {
    	
    	alert(" create page");
    	
    }
    

});








app.controller("PostAdController", [  '$window','$scope','$http', function(  $window, $scope,$http) {
	
	
	$scope.info = {
			selectedImage : null,
			images : []
	}
	
	$scope.apply = function() {
		$scope.$apply();
	}
	
	$scope.submitDetails = function () {
    	alert("Submit Details");
    
    	var user = getCookie("user");
    	
    	$http.get('http://www.dailynet.lk/sendMessageByUserName'+'?receiverUserName='+ user + '&userName=DailyNet&messageHeader=Post Advertisment&messageContent=Your Advertiesment has been Successfully Posted').
    	then(console.log("success"),console.log("fail") );
    	
    }
    
    
	
}]);



function getCookie(cname) {
    var name = cname + "=";
    var ca = document.cookie.split(';');
    for(var i=0; i<ca.length; i++) {
        var c = ca[i];
        while (c.charAt(0)==' ') c = c.substring(1);
        if (c.indexOf(name) != -1) {
            return c.substring(name.length, c.length);
        }
    }
    return "Login";
}





app.directive('file', function () {
    return {
        scope: {
            file: '='
        },
        link: function (scope, el, attrs) {
            el.bind('change', function (event) {
                var file = event.target.files[0];
                scope.file = file ? file : undefined;
                scope.$apply();
            });
        }
    };
});