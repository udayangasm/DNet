<div  style="width: 100%; margin-top: 100px;" ng-init="vwAllMessagesController.init()">

		<div  style="width: 80%; margin-top: 50px;margin-left:10%;background-color:white;" >

				<div ng-repeat="message in vwAllMessagesController.messages" style="display: flex; margin: auto; width: 100%; padding: 5px; background: #fff; min-width: 390px;">
				
				
						<div  style="display: flex; margin: auto; width: 15%; padding: 5px; background: #B9C; ">
				
							<h3>{{message.messageSentBy}}</h3>
				
						</div>
						
						
						<div  style="display: flex; margin: auto; width: 20%; padding: 5px; background: #FFA; ">
				
							<h3>{{message.messageHeder}}</h3>
				
						</div>

				
						<div  style="display: flex; margin: auto; width: 50%; padding: 5px; background: #FFB; ">
				
							<h6>{{message.messageContent}}</h6>
				
						</div>


				</div>


		</div>
		
</div>
