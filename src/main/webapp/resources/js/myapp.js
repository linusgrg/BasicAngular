var myApp = angular.module("myModule", []);

myApp.controller("myController", function($scope) {
	$scope.message = "sunil";
	
});

myApp.controller("myControl", function($scope) {
	var employee = {
		firstName : "David",
		lastName : "Hasting",
		gender : "Male"
	};
	$scope.employee12 = employee;
});

// controller for image
myApp.controller("imageController", function($scope) {
	var country = {
		name : "abc",
		capital : "xyz",
		flag : "resources/images/image.jpg"
	};
	$scope.country = country;
});

// controller for two way data binding

myApp.controller("dataBindingController", function($scope) {
	var employee = {
		firstName : "sunil",
		lastName : "Gurung",
		gender : "male"
	}
	$scope.employee = employee;
});

// ng-repeate example

myApp.controller("repeateController", function($scope) {
	var countries = [ {
		name : "uk",
		cities : [ {
			name : "london"
		}, {
			name : "manchester"
		} ]
	}, {
		name : "usa",
		cities : [ {
			name : "losAngeles"
		}, {
			name : "chicago"
		} ]
	} ];
	$scope.countries = countries;
});

// event
myApp.controller("eventController", function($scope) {
	var details = 
	       { image : "resources/images/image.jpg",
			like : 0,	
			dislike : 1	}
	
	$scope.details = details;
	
	$scope.incrementLikes = function (){
		details.like++;
	}
	
	$scope.incrementDisLikes = function (){
		details.dislike++;
	}
});

//filter
myApp.controller("filterController",function($scope){
	var informations = [
	                   {name: "sunil", dob:new Date("december 24, 1999"), gender:"MALE" ,salary:5455.24},
	                   {name: "sita", dob:new Date("October 24, 1998"), gender:"female" ,salary:87455.2456},
	                   {name: "sunil1", dob:new Date("december 24, 1999"), gender:"MALE" ,salary:5455.24},
	                   {name: "sita3", dob:new Date("October 24, 1998"), gender:"female" ,salary:87455.2456}
	];
	$scope.informations = informations;
	$scope.rowLimit = 1;
})

//search in angular js
myApp.controller("searchController",function($scope){
	var informations = [
	                   {name: "sunil", dob:new Date("december 24, 1999"), gender:"MALE" ,salary:5455.24},
	                   {name: "sita", dob:new Date("October 24, 1998"), gender:"female" ,salary:87455.2456},
	                   {name: "sunil1", dob:new Date("december 24, 1999"), gender:"MALE" ,salary:5455.24},
	                   {name: "sita3", dob:new Date("October 24, 1998"), gender:"female" ,salary:87455.2456}
	];
	
})


//custom directrive
myApp.directrive('companyCopyRight',function(){
	return{
		templateUrl:'home.jsp'
	};
});


//custom directive example2
myApp.directive('customeDirective', function(){
	return {
		template:"<b>hello from custom directirve</b>",
		restric: "E"
	}
})