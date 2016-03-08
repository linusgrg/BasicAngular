<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html ng-app="myModule">
<head>
<script type="text/javascript" src="resources/js/angular.min.js"></script>
<script type="text/javascript" src="resources/js/myapp.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>filter</title>
</head>
<body>

	<div ng-controller="filterController">
	Number of Data:<input type="number" step="1" min="0" max="3" ng-model="rowLimit"/>
	<br/><br />
			<table border="1">
			<thead>
				<tr>
					<th>Name</th>
					<th>Date of Birth</th>
					<th>Gender</th>
					<th>Salary(number)</th>
					<th>Salary(currency)</th>
				</tr>

			</thead>
			<tbody>
				<tr ng-repeat="information in informations | limitTo:rowLimit">
					<td>{{ information.name | uppercase }}</td>
					<td>{{ information.dob | date:"dd/mm/yyyy"}}</td>
					<td>{{ information.gender | lowercase }}</td>
					<td>{{ information.salary }}</td>
					<td>{{ information.salary }}</td>
				</tr>
			</tbody>
		</table>
	</div>

</body>
</html>