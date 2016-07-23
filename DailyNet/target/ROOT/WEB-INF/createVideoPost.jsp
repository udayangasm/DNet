
<html  ng-app ="createVedio">
  <head>  
    <title>Create Vedio</title>  
      
    <link rel="stylesheet" href="resources/css/bootstrap.css" />
    <link rel="stylesheet" href="resources/css/app.css" />
    <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.4.4/angular.js"></script>
    <script src="http://angular-ui.github.io/ui-router/release/angular-ui-router.js"></script>
	
	
	<script type="text/javascript" src="resources/js/jquery-1.9.1.min.js"></script>
    <script type="text/javascript" src="resources/js/jssor.slider.mini.js"></script>
    
	<script src="resources/js/createVedioPost.js"></script>
   
    <style> 
    
 
div.newsBlock1 {  position: relative; top: 0px; left: 0px;  width: 1150px;  height: 800px; border: 3px solid #73AD21;}

div.vedio { position: absolute;  top: 50px; left: 200px;    width: 645px;    height: 365px; border: 3px solid #73AD21;}

div.newsBlock3 {   position: absolute;    top: 50px;   left: 500px;   width: 350px;  height: 450px;  border: 3px solid #73AD21;}

div.header {    position: relative;   top: 0px; left: 0px;  width: 1150px;   height: 70px;  border: 3px solid #73AD21;}

div.newsBlock5 {  position: absolute;   top: 500px;  left: 50px;  width: 800px;    height: 250px;border: 3px solid #73AD21;}

div.newsBlock6 {  position: relative; top: 25px; left: 25px;  width: 100px; height: 80px; border: 3px solid #73AD21;}
    
 </style>  
    
 
 
 <script>
 
 

 var loadFile = function(event) {
   var output = document.getElementById('output');
   output.src = URL.createObjectURL(event.target.files[0]);
 };
 
 	
 </script>
    
     
  </head>
  <body>
      
      <div class="generic-container"  width: 1150px; height: 1000px; >
		
				<h2>Vedio Creation Form</h2>
				
				
				
				    	 <form method="post" action="saveVedios"
            modelAttribute="uploadForm" enctype="multipart/form-data" id="myForm">
  		
  		
		
				<div class="panel panel-default">
			
						<div class="panel-heading">
						
								<span class="lead">
		
							<div class ="header">
									<textarea rows="2" cols="93" id ="header" name="header"  placeholder="Enter header here"> </textarea>
							</div> 
						 
          								
								</span>
						
						</div>
		
		
		 				<div class="tablecontainer">
				  		
				  				<div class ="newsBlock1">
				  				
				  						<div class ="vedio">
				  					<textarea rows="1" cols="100" id ="vedioName" name="vedioName"  placeholder="Enter Youtube Vedio URL here"> </textarea>
          		
          							<input name="files[0]" type="file"  id="selectedFile" onchange="loadFile(event)"/>
          							<img id="output" width="375px" height="375px"/>
          							
          		
				  						</div>
					
						  		
				  				</div>
				  				
				  				
				  				 <input type="submit" value="Add Button"  class="btn btn-warning btn-sm" onclick="add"/>
  		
		 				</div>
		 				
		 		</div>
		
		
		    </form>
  		
  		

		</div>
      
 
 <dev ui-view></dev>
  </body>
</html>
