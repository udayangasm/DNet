
'use strict';

var app = angular.module('createAd',['ui.router']);


app.controller("HttpGetController", function ($scope,$location,$window, $http) {

    $scope.add = function () {
       // use $.param jQuery function to serialize data from JSON 
    	
    	
    	/*
        
    	 var fd = new FormData();
         fd.append('file', file);
         $http.post('/DailyNet/file_upload', fd, {
             transformRequest: angular.identity,
             headers: {'Content-Type': undefined}
         })
         .success(function(){
         })
         .error(function(){
         });
    	
    	alert(file);*/
    	
    	
    	
    	
    	
    	alert("data upload");
    	
    	
  /*  	
    	
    	 $http({
             method: 'POST',
             url: '/DailyNet/file_upload',
             headers: {
                 'Content-Type': 'multipart/form-data'
             },
             data: {
                 upload: $scope.file
             },
             transformRequest: function (data, headersGetter) {
                 var formData = new FormData();
                 angular.forEach(data, function (value, key) {
                     formData.append(key, value);
                 });

                 var headers = headersGetter();
                 delete headers['Content-Type'];

                 return formData;
             }
         })
         .success(function (data) {

         })
         .error(function (data, status) {

         });
    	
    */	
    	
    	
    	
    	
    	
    	
    	
    	var file = document.getElementById('file').files[0];
    		
       var fd = new FormData();
        //Take the first selected file
        fd.append("file", file);
/*
        $http.post('/DailyNet/file_upload', fd, {
            withCredentials: true,
            headers: {'Content-Type': undefined },
            transformRequest: angular.identity
        }).success( "...all right!..." ).error(" ..damn!... ");

        */
        

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

        $http.post('/DailyNet/new_vedio_post', fd,data, config)
        .success(function (data, status, headers, config) {
        	
        	alert("Successfully added");
        	$window.location.href='/DailyNet/admin';
        })
        .error(function (data, status, header, config) {
        	alert("added failed");
        	$window.location.href='/DailyNet/loginError';
        });
    };

});




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