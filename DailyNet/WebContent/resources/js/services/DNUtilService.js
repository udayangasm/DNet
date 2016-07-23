'use strict'

App.service('DNUtilService', [function() {
	
	// showAllAds variablrs nd functions
	var districts = [
    		{value : "any", display: "Any"},
    	    {value : "Ampara", display: "Ampara"},
    	    {value : "Anuradhapura", display: "Anuradhapura"},
    	    {value : "Badulla", display: "Badulla"},
    	    {value : "Batticaloa", display: "Batticaloa"},
    	    {value : "Colombo", display: "Colombo"},
    	    {value : "Galle", display: "Galle"},
    	    {value : "Gampaha", display: "Gampaha"},
    	    {value : "Hambantota", display: "Hambantota"},
    	    {value : "Jaffna", display: "Jaffna"},
    	    {value : "Kalutara", display: "Kalutara"},
    	    {value : "Kandy", display: "Kandy"},
    	    {value : "Kegalle", display: "Kegalle"},
    	    {value : "Kilinochchi", display: "Kilinochchi"},
    	    {value : "Kurunegala", display: "Kurunegala"},
    	    {value : "Mannar", display: "Mannar"},
    	    {value : "Matale", display: "Matale"},
    	    {value : "Matara", display: "Matara"},
    	    {value : "Monaragala", display: "Monaragala"},
    	    {value : "Mullaitivu", display: "Mullaitivu"},
    	    {value : "Nuwara Eliya", display: "Nuwara Eliya"},
    	    {value : "Polonnaruwa", display: "Polonnaruwa"},
    	    {value : "Puttalam", display: "Puttalam"},
    	    {value : "Ratnapura", display: "Ratnapura"},
    	    {value : "Trincomalee", display: "Trincomalee"},
    	    {value : "Vavuniya", display: "Vavuniya"}];
	
	var categories = [
          {value : "any", display : "Any"},
          {value : "VEHICLES", display : "Vehicles"},
          {value : "HOTELS", display : "Hotel"},
          {value : "HOUSE AND PROPERTY", display : "House & Property"},
          {value : "ELECTRONICS", display : "Electronics"},
          {value : "FASHION AND BEAUTY", display : "Fashion & Beauty"},
          {value : "OTHER", display : "Other"}
          ];

	var rooms = [
	             	  {value : "NoRooms", display : "No Rooms"},
	                  {value : "Single", display : "Single"},
	                  {value : "Double", display : "Double"},
	                  {value : "Triple", display : "Triple"}
	                  ];
	
	var counter = [
	             	  {value : "Zero", display : "Zero"},
	                  {value : "One", display : "One"},
	                  {value : "Two", display : "Two"},
	                  {value : "Three", display : "Three"},
	                  {value : "Four", display : "Four"},
	                  {value : "Five", display : "Five"},
	                  {value : "Six", display : "Six"},
	                  {value : "Seven", display : "Seven"}
	                  ];
	
	
	var integerCounter = [
	             	  {value : "0", display : "0"},
	                  {value : "1", display : "1"},
	                  {value : "2", display : "2"},
	                  {value : "3", display : "3"},
	                  {value : "4", display : "4"},
	                  {value : "5", display : "5"},
	                  {value : "6", display : "6"},
	                  {value : "7", display : "7"},
	                  {value : "8", display : "8"},
	                  {value : "9", display : "9"},
	                  {value : "10", display : "10"},
	                  {value : "11", display : "11"},
	                  {value : "12", display : "12"},
	                  {value : "13", display : "13"},
	                  {value : "14", display : "14"},
	                  {value : "15", display : "15"},
	                  {value : "16", display : "16"},
	                  {value : "17", display : "17"},
	                  {value : "18", display : "18"},
	                  {value : "19", display : "19"},
	                  {value : "20", display : "20"},
	                  {value : "21", display : "21"},
	                  {value : "22", display : "22"},
	                  {value : "23", display : "23"},
	                  {value : "24", display : "24"},
	                  {value : "25", display : "25"},
	                  {value : "26", display : "26"},
	                  {value : "27", display : "27"},
	                  {value : "28", display : "28"},
	                  {value : "29", display : "29"},
	                  {value : "30", display : "30"}
	                  ];
	
	
	
	return {
		districts : districts,
		categories : categories,
		rooms :rooms,
		counter : counter,
		integerCounter : integerCounter
	}
}]);