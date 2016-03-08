<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html data-ng-app="myModule">
<head>
<script type="text/javascript" src="resources/js/angular.min.js"></script>
<script type="text/javascript" src="resources/js/myapp.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Event</title>
</head>
<body>

	<table ng-controller="eventController" border="1px">
		<tr>
			<td  colspan="2"><img alt="image" src="{{ details.image }}"></td>

		</tr>
		<tr >
			<td>{{ details.like }}</td>
			<td>{{ details.dislike }}</td>
		</tr>
		<tr>
		<td><input type="button" value="like" ng-click="incrementLikes()"></td>
		<td><input type="button" value="dis like" ng-click="incrementDisLikes()"></td>
		</tr>
	</table>
	
	<div company-copy-right>this is what</div>

</body>
</html>