

<div style="background: #eee; ng-init="htlBookingController.init()">

<div style="background: #fff; width:80%;margin-left:10% ">

<h3> Hotel Booking</h3>

<div style="width: 100%;height: 200px;margin: auto 0;padding: 0px; ">
<div  style="padding: 0px; margin-left:100px" ng-cloak=""  >
  <md-content>

    Checking Date : <md-datepicker ng-model="myDateFrom" md-placeholder="Checkin date" md-min-date="minDate" md-max-date="maxDate"></md-datepicker>

  <br><br>
   Checkout Date : <md-datepicker ng-model="myDateTo" md-placeholder="Checkout date" md-min-date="minDate" md-max-date="maxDate"></md-datepicker>


   

  </md-content>
</div>

		



</div>

<div style="width: 100%;height: 65px;margin: auto 0;padding: 0px; margin-left:100px;display:flex;">

<div style="width: 40%;margin: auto 0;padding: 0px; display:flex;">


			<div style="width: 200px;">
				
					<md-input-container class="md-block">
						<label>Type of Room </label>
						<md-select ng-model="htlBookingController.filter.room">
							<md-option ng-repeat="room in htlBookingController.utilService.rooms" value="{{room.value}}">
								{{room.display}}
							</md-option>
						</md-select>
				    </md-input-container>
				
			</div>
</div>
<div style="width: 60%;margin: auto 0;padding: 0px; display:flex;">


			<div style="width: 200px;">
				
					<md-input-container class="md-block">
						<label>Number Of Rooms </label>
						<md-select ng-model="htlBookingController.filter.roomCount">
							<md-option ng-repeat="intergerCount in htlBookingController.utilService.integerCounter" value="{{intergerCount.value}}">
								{{intergerCount.display}}
							</md-option>
						</md-select>
				    </md-input-container>
				
			</div>
			

			
</div>


</div>

<div style="width:100%;height:100px;display:flex;margin-left:100px">
<div style="width: 30%;margin: auto 0;padding: 0px; display:flex;">


			<div style="width: 120px;">
				
					<!-- district dropdown -->
					<md-input-container class="md-block">
						<label>Number of Men </label>
						<md-select ng-model="htlBookingController.filter.countMen">
							<md-option ng-repeat="intergerCount in htlBookingController.utilService.integerCounter" value="{{intergerCount.value}}">
								{{intergerCount.display}}
							</md-option>
						</md-select>
				    </md-input-container>
				
			</div>

</div>

<!-- <div style="width: 300px; height:200px;padding: 0px; position:absolute;top:200px;right:300px;">

<h3> Total Price : <b> RS.10000 </b></h3>

</div> -->


<div style="width: 30%;margin: auto 0;padding: 0px; display:flex;">


			<div style="width: 120px;">
				
					<!-- district dropdown -->
					<md-input-container class="md-block">
						<label>Number of Women </label>
						<md-select ng-model="htlBookingController.filter.countWomen">
							<md-option ng-repeat="intergerCount in htlBookingController.utilService.integerCounter" value="{{intergerCount.value}}">
								{{intergerCount.display}}
							</md-option>
						</md-select>
				    </md-input-container>
				
			</div>

</div>

<div style="width: 30%;margin: auto 0;padding: 0px; display:flex;">


			<div style="width: 120px;">
				
					<!-- district dropdown -->
					<md-input-container class="md-block">
						<label>Number of Children  </label>
						<md-select ng-model="htlBookingController.filter.countChild">
							<md-option ng-repeat="intergerCount in htlBookingController.utilService.integerCounter" value="{{intergerCount.value}}">
								{{intergerCount.display}}
							</md-option>
						</md-select>
				    </md-input-container>
				
			</div>

</div>
</div>



			<div class="hotelBookingButton btn-group btn-group-justified" >
 					<button style="width:40%;height:40px;float: right;margin-bottom: 5px;"  ng-click="htlBookingController.bookHotel_func(myDateFrom,myDateTo,htlBookingController.filter.room ,htlBookingController.filter.roomCount,htlBookingController.filter.countMen,htlBookingController.filter.countWomen,htlBookingController.filter.countChild )" class="btn btn-primary" >
 					Book Now
 					</button>
				</div>


</div>
</div>