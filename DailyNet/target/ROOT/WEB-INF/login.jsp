<div class="loginPage" ng-controller="LoginController">



	<div class="loginPageDetailsAre">
		<div class="welcome-bnner">
	 		<span>Welcome! Please Login Here</span>
	 	</div>	
		<div class="userNameAndPassword">
			<div  layout="column" ng-cloak="" class="inputdemoErrors" >
			  <md-content layout-padding="">
			    <form name="projectForm">
			      <md-input-container class="md-block">
			        <label>User Name</label>
			        <input required="" name="clientName" ng-model="clientName">
			        <div ng-messages="projectForm.clientName.$error">
			          <div ng-message="required">This is required.</div>
			        </div>
			      </md-input-container>
			      <md-input-container class="md-block">
			        <label>Password</label>
			        <input required="" type="password" name="clientEmail" ng-model="password" minlength="5" maxlength="100" >
			        <div ng-messages="projectForm.clientEmail.$error" role="alert">
			          <div ng-message-exp="['required', 'minlength', 'maxlength', 'pattern']">
			            Your password must be between 5 and 100 .
			          </div>
			        </div>
			      </md-input-container>
			    </form>
			  </md-content>
			</div>
			
			<div class="loginButton">
				<button id= "loginButton" style="width:28%" ng-click="Login()" >Login</button>
			</div>
		</div>
		<div class="signUpDetails" >
	  		Not A Member Already , Please SignUp Here
	  	</div>
	  	<div class="SignUpButton">
	  		<button id= "signUpButton" style="width:28%" ui-sref="sign_up"  >SignUp</button>
	  	</div>
	</div>
</div>