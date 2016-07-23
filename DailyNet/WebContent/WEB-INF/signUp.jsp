<div class="signUpPage" >
<div class="signUpPageDetailsAre" >



	<div class="welcome-bnner">
  			 		<span>Welcome! Please Register Here</span>
  			 	</div>	




<div class="signUpPageDetails" >

<div  layout="column" ng-cloak="" class="inputdemoErrors" >

  <md-content layout-padding="">
    <form name="projectForm">

      

      <md-input-container class="md-block">
        <label>User Name</label>
        <input required="" name="clientName" ng-model="userName" ng-required="true">
        <div ng-messages="projectForm.clientName.$error">
          <div ng-message="required">This is required.</div>
        </div>
      </md-input-container>
      
      
      


      <md-input-container class="md-block">
        <label>Phone Number or Email</label>
        <input required="" name="clientNumber" ng-model="NumberOrEmail" ng-required="true">
        <div ng-messages="projectForm.clientNumber.$error">
          <div ng-message="required">This is required.</div>
        </div>
      </md-input-container>



      <md-input-container class="md-block">
        <label>Password</label>
        <input required="" type="password" name="clientEmail" ng-model="password" minlength="5" maxlength="100" ng-required="true">

        <div ng-messages="projectForm.clientEmail.$error" role="alert">
          <div ng-message-exp="['required', 'minlength', 'maxlength', 'pattern']">
            Your password must be between 5 and 100 .
          </div>
        </div>
      </md-input-container>



      <md-input-container class="md-block">
        <label>Comfirm Password</label>
        <input required="" type="password" name="clientEmail" ng-model="comfirmPassword" minlength="5" maxlength="100" ng-required="true">

        <div ng-messages="projectForm.clientEmail.$error" role="alert">
          <div ng-message-exp="['required', 'minlength', 'maxlength', 'pattern']">
            Your password must be between 5 and 100 .
          </div>
        </div>
      </md-input-container>

      
    </form>
  </md-content>

</div>

 </div>





<div class="signUpPageSignUpButton"><button id= "signUpPageSignUpButton" ng-click="signUpFunc()">Register</button></div>

</div>






</div>
