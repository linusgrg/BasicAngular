<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<html ng-app="myModule">
<head>
<script type="text/javascript" src="resources/js/angular.min.js"></script>
<script type="text/javascript" src="resources/js/myapp.js"></script>
<title>angular page</title>
</head>
<body>
	<div ng-controller="SimpleController">
		Name:<input type="text" ng-model="name" />{{name}}
		<ul>
			<li data-ng-repeat="cust in customers | filter:name |orderBy:'city'">{{cust.name}},{{cust.city}}</li>
		</ul>
	</div>
	<script>
		var myapp= angular.module("myModule", [])
							.controller("SimpleController",function($scope) {
								
			$scope.customers = [ {
				name : 'john smit',
				city : 'newyork'
			}, {
				name : 'sunil Gurung',
				city : 'iowa'
			}, {
				name : 'ram',
				city : 'texas'
			} ];
		});
	</script>
</body>
</html>