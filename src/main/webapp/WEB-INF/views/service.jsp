<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<script type="text/javascript" src="resources/js/angular.min.js"></script>
<script type="text/javascript" src="resources/js/service.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Service</title>
</head>
<body ng-app="mainApp">
<div ng-controller="serviceController">
<button ng-click="generatRandom()">Generate by service </button><br />
{{randomNumber}}
</div>

<hr>
<div ng-controller="factoryController"><button ng-click="generatRandom()">Generate factory</button><br />
{{randomNumber}}</div>

</body>
</html>