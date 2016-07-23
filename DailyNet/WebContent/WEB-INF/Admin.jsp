<html  ng-app ="myApp3">
  <head>  
         <link rel="stylesheet" href="resources/css/bootstrap.css" />
    <link rel="stylesheet" href="resources/css/app.css" />
    <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.4.4/angular.js"></script>
    <script src="http://angular-ui.github.io/ui-router/release/angular-ui-router.js"></script>
	
	
	<script type="text/javascript" src="resources/js/jquery-1.9.1.min.js"></script>
    <script type="text/javascript" src="resources/js/jssor.slider.mini.js"></script>
    
	<script src="resources/js/admin.js"></script>


    
     
  </head>
  <body>
  


	<div class="generic-container">
		<h2>Admin Page</h2>
		<div class="panel panel-default">
			<!-- Default panel contents -->
		    <div class="panel-heading"><span class="lead">Show Admin Previledes</span></div>
				<ul>
				
				<li><a ng-href="create_user">Create User</a></li>
				<li><a ng-href="view_users">View All Users </a></li>
				<li><a ng-href="create_ad">Create Ads</a></li>
				<li><a ng-href="create_post">Create News</a></li>
				<li><a ng-href="create_video">Create Videos</a></li>
				<li><a ng-href="view_all_categories">View All Categories</a></li>
				
				<ul>		
		</div>
		
		
		
		

	<dev ui-view></dev>
		
	</div>
	
	</body>
	<html>
	
	