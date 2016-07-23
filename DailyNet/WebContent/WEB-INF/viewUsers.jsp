<html  ng-app ="createUser">
  <head>  
    <title>Create User</title>  
    <style>
      .username.ng-valid {
          background-color: lightgreen;
      }
      .username.ng-dirty.ng-invalid-required {
          background-color: red;
      }
      .username.ng-dirty.ng-invalid-minlength {
          background-color: yellow;
      }

      .email.ng-valid {
          background-color: lightgreen;
      }
      .email.ng-dirty.ng-invalid-required {
          background-color: red;
      }
      .email.ng-dirty.ng-invalid-email {
          background-color: yellow;
      }

    </style>
  
       <link rel="stylesheet" href="resources/css/bootstrap.css" />
    <link rel="stylesheet" href="resources/css/app.css" />
    <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.4.4/angular.js"></script>
    <script src="http://angular-ui.github.io/ui-router/release/angular-ui-router.js"></script>
	
	
	<script type="text/javascript" src="resources/js/jquery-1.9.1.min.js"></script>
    <script type="text/javascript" src="resources/js/jssor.slider.mini.js"></script>
    
	<script src="resources/js/createUser.js"></script>


    
     
  </head>
  <body>
          <div class="panel panel-default">
          
              <div class="panel-heading"><span class="lead">User Create Form </span></div>
              
  	
		
		
		
		
		
		
  <div class="generic-container"   ng-controller="HttpGetController">
          <div class="panel panel-default">
              <div class="panel-heading"><span class="lead">View All Users </span></div>
              <div class="formcontainer">
                      
                    

                  
              </div>
          </div>
          
      </div>
      
		
		
		
		
		
		
		
		
		
		          
          
      
      </div>
      
 
 <dev ui-view></dev>
  </body>
</html>
