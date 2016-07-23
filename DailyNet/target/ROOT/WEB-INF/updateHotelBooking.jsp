

<div style="background: #eee; ng-init="udHotelBookingController.init()">

<div style="background: #fff; width:80%;margin-left:10% ">



<div style="width: 100%;height: 150px;margin: auto 0;padding: 0px; ">
<div  style="padding: 0px; margin-left:100px" ng-cloak=""  >

  <md-content>
   <h3> Update Details for  Date : <md-datepicker ng-model="myDateFrom" md-placeholder="Checkin date" md-min-date="minDate" md-max-date="maxDate"></md-datepicker></h3>
  </md-content>
</div>

		



</div>


<div style="width:100%;height:100px;display:flex;margin-left:100px">

<div style="width: 30%;margin: auto 0;padding: 0px; display:flex;">
				<h3> Single Room </h3>

</div>

<div style="width: 30%;margin: auto 0;padding: 0px; display:flex;">

			<div style="width: 200px;">

					<md-input-container class="md-block">
						<label>Number of Available Rooms </label>
						<md-select ng-model="udHotelBookingController.filter.countSingleRoom">
							<md-option ng-repeat="intergerCount in udHotelBookingController.utilService.integerCounter" value="{{intergerCount.value}}">
								{{intergerCount.display}}
							</md-option>
						</md-select>
				    </md-input-container>
			</div>
</div>

<div style="width: 40%;margin: auto 0;padding: 0px; display:flex;">

      <md-input-container class="md-block">
        <label>Price Of Single Room</label>
        <input required="" name="priceSingleRoom" ng-model="udHotelBookingController.filter.priceSingleRoom" ng-required="true" type="number">
      </md-input-container>
</div>

</div>


<div style="width:100%;height:100px;display:flex;margin-left:100px">

<div style="width: 30%;margin: auto 0;padding: 0px; display:flex;">
				<h3> Double Room </h3>

</div>

<div style="width: 30%;margin: auto 0;padding: 0px; display:flex;">

			<div style="width: 200px;">

					<md-input-container class="md-block">
						<label>Number of Available Rooms </label>
						<md-select ng-model="udHotelBookingController.filter.countDoubleRoom">
							<md-option ng-repeat="intergerCount in udHotelBookingController.utilService.integerCounter" value="{{intergerCount.value}}">
								{{intergerCount.display}}
							</md-option>
						</md-select>
				    </md-input-container>
			</div>
</div>

<div style="width: 40%;margin: auto 0;padding: 0px; display:flex;">

      <md-input-container class="md-block">
        <label>Price Of Double Room</label>
        <input required="" name="priceDoubleRoom" ng-model="udHotelBookingController.filter.priceDoubleRoom" ng-required="true" type="number">
      </md-input-container>
</div>

</div>

<div style="width:100%;height:100px;display:flex;margin-left:100px">

<div style="width: 30%;margin: auto 0;padding: 0px; display:flex;">
				<h3> Triple Room </h3>

</div>

<div style="width: 30%;margin: auto 0;padding: 0px; display:flex;">

			<div style="width: 200px;">

					<md-input-container class="md-block">
						<label>Number of Available Rooms </label>
						<md-select ng-model="udHotelBookingController.filter.countTripleRoom">
							<md-option ng-repeat="intergerCount in udHotelBookingController.utilService.integerCounter" value="{{intergerCount.value}}">
								{{intergerCount.display}}
							</md-option>
						</md-select>
				    </md-input-container>
			</div>
</div>

<div style="width: 40%;margin: auto 0;padding: 0px; display:flex;">

      <md-input-container class="md-block">
        <label>Price Of Triple Room</label>
        <input required="" name="priceTripleRoom" ng-model="udHotelBookingController.filter.priceTripleRoom" ng-required="true" type="number">
      </md-input-container>
</div>

</div>





			<div class="hotelBookingButton btn-group btn-group-justified" >
 					<button style="width:40%;height:40px;float: right;margin-bottom: 10px;"  ng-click="udHotelBookingController.updateHotelBooking_func(myDateFrom,udHotelBookingController.filter.countSingleRoom,udHotelBookingController.filter.countDoubleRoom ,udHotelBookingController.filter.countTripleRoom ,udHotelBookingController.filter.priceSingleRoom,udHotelBookingController.filter.priceDoubleRoom,udHotelBookingController.filter.priceTripleRoom )" class="btn btn-primary" >
 					Update  Now
 					</button>
				</div>


</div>
</div>