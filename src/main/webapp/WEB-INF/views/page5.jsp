<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html ng-app="myModule">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<script type="text/javascript" src="resources/js/angular.min.js"></script>
<script type="text/javascript" src="resources/js/myapp.js"></script>
<title>Insert title here</title>
</head>
<body>
	<div ng-controller="myControl">
		<div>firstName: {{ employee12.firstName}}</div>

		<div>lastName: {{ employee12.lastName}}</div>

		<div>Age: {{ employee12.gender}}</div>
	</div>
	<hr>
	<div ng-controller="imageController">
		<div>Name: {{ country.name}}</div>

		<div>Name: {{ country.capital}}</div>

		<div>
			<img alt="crying image" src="{{ country.flag}}">
		</div>

	</div>

</body>
</html>