var application = angular.module('mainApp',[]);

application.service('random', function(){
	var num = Math.floor(Math.random()*10);
	this.generate =function(){
		return num;
	};
});

application.controller('serviceController', function($scope, random){
	$scope.generatRandom = function() {
		$scope.randomNumber =random.generate();
	};
});


//factory method
application.factory('random', function(){
	var randomObject = {};
	var number = Math.floor(Math.random()*10);
	randomObject.generate =function(){
		return number;
	};
	return randomObject;
});

application.controller('factoryController', function($scope, random){
	$scope.generatRandom = function() {
		$scope.randomNumber =random.generate();
	};
});
