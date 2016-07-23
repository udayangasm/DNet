<html  ng-app ="myApp2">
  <head>  
    <title>User Login</title>  
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
    
	<script src="resources/js/userManagment.js"></script>


    
     
  </head>
  <body>
          <div class="panel panel-default">
          
              <div class="panel-heading"><span class="lead">User Login Form </span></div>
              
  	
		
		
		
		
		
		
  <div class="generic-container"   ng-controller="HttpGetController">
          <div class="panel panel-default">
              <div class="panel-heading"><span class="lead">User Login Form </span></div>
              <div class="formcontainer">
                      
                    
                      <div class="row">
                          <div class="form-group col-md-12">
                              <label class="col-md-2 control-lable" for="file">User Name</label>
                              <div class="col-md-7">
                                  <input type="text"  name="username" ng-model="username"  class="userName form-control input-sm" placeholder="Enter User Name" required/>
                                  <div class="has-error" ng-show="myForm.$dirty">
                                      <span ng-show="myForm.email.$error.required">This is a required field</span>
                                 
                                  </div>
                              </div>
                          </div>
                      </div>
                      
                      <div class="row">
                          <div class="form-group col-md-12">
                              <label class="col-md-2 control-lable" for="file">Password</label>
                              <div class="col-md-7">
                                  <input type="password"  name="password" ng-model="password"  class="userName form-control input-sm" placeholder="Enter Password" required ng-minlength="3"/>
                                  <div class="has-error" ng-show="myForm.$dirty">
                                      <span ng-show="myForm.uname.$error.required">This is a required field</span>
                                     
                                  </div>
                              </div>
                          </div>
                      </div>

                      <div class="row">
                          <div class="form-actions floatRight">
                             
                              <button type="button"  ng-click="SendData()"   class="btn btn-warning btn-sm" >Login</button>
                          </div>
                      </div>
                  
              </div>
          </div>
          
      </div>
      
		
		
		
		
		
		
		
		
		
		
		
		
		          
          
      
      </div>
      
 
 <dev ui-view></dev>
  </body>
</html>
