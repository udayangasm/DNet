<div class="generic-container"  width: 1150px; height: 1000px; >
		
				<h2>Daily News</h2>
				<div class="panel panel-default">
							<ul>
						<li ng-repeat="category in ctgController.categories">
						
						
						
						
						<div class="panel-heading">
						
								<span class="lead">
						 				{{category.header}}   
								</span>
						
						</div>
						
						
						
						<div class="tablecontainer">
				  		
				  				<div class ="newsBlock1">
				  				
				  						<div class ="newsBlock2">
				  						
				  								<img src="/DailyNet/myResources/{{category.imageName}}" alt="Trolltunga Norway" width="400px" height="400px">
				  						
				  						</div>
					
						  				<div class ="newsBlock3">
						
										{{category.paragraph1}} 
						  				
						  					</div>
						  				
						  				<div class ="newsBlock5">
						  							
						  					{{category.paragraph2}}
						  				</div>
						  			
									  	<div class ="newsBlock4">
									  	<h3><b>Recent News </b></h3>
									  		
									  			<div class ="newsBlock6">
									  	<a ui-sref="latestNews.another({ID:category.otherIDs[0]})">
									  			<img src= "/DailyNet/myResources/{{category.otherNews[0]}}"  alt="my image" width="150px" height="120px">
									  	
									  	
									 </a>		
									  			</div>
									  											  	
									  					<div class ="newsBlock6">
									  					<a ui-sref="latestNews.another({ID:category.otherIDs[1]})">
									  			<img src= "/DailyNet/myResources/{{category.otherNews[1]}}"  alt="my image" width="150px" height="120px">
									  			</a>
									  			</div>
									  	
									  	
									  					<div class ="newsBlock6">
									  					<a ui-sref="latestNews.another({ID:category.otherIDs[2]})">
									  			<img src= "/DailyNet/myResources/{{category.otherNews[2]}}"  alt="my image" width="150px" height="120px">
									  			</a>
									  			</div>
									  	
									  	
									  				<div class ="newsBlock6">
									  				<a ui-sref="latestNews.another({ID:category.otherIDs[3]})">
									  			<img src= "/DailyNet/myResources/{{category.otherNews[3]}}"  alt="my image" width="150px" height="120px">
									  			</a>
									  			</div>
									  	
									  	
									  	
									  				<div class ="newsBlock6">
									  				<a ui-sref="latestNews.another({ID:category.otherIDs[4]})">
									  			<img src= "/DailyNet/myResources/{{category.otherNews[4]}}"  alt="my image" width="150px" height="120px">
									  			</a>
									  			</div>
									  			
									  			<h3><button><b>Load More</b> <button></h3>
									  			
									  	
									  			
									  	</div>
				  				</div>
				  				
		 				</div>
						</li>
						</ul>
			
		 				
		 		</div>
		</div>
