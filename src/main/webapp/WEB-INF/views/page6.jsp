<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html ng-app="myModule">
<head>
<script type="text/javascript" src="resources/js/angular.min.js"></script>
<script type="text/javascript" src="resources/js/myapp.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Two way data binding</title>
</head>
<body>
	<div ng-controller="dataBindingController">
		<table>
			<tr>
				<td>First Name: <input type="text"
					ng-model="employee.firstName"></td>
			</tr>
			<tr>
				<td>Last Name: <input type="text" ng-model="employee.lastName"></td>
			</tr>
			<tr>
				<td>Gender: <input type="text" ng-model="employee.gender"></td>
			</tr>
		</table>
		<hr>
		<table>
			<tr>
				<td>{{ employee.firstName }}</td>
			</tr>
			<tr>
				<td>{{ employee.lastName }}</td>
			</tr>
			<tr>
				<td>{{ employee.gender }}</td>
			</tr>
		</table>
	</div>
<hr>
	<div ng-controller="repeateController">
		<ul>
			<li ng-repeat="country in countries">{{country.name}}</li>
			<ol>
				<li ng-repeat= "city in country.cities">{{ city.name}}</li>
			</ol>
		</ul>
	</div>

</body>
</html>