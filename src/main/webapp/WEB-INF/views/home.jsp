<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>
<html data-ng-app>
<head>
<title>Home</title>
<script type="text/javascript" src="resources/js/angular.min.js"></script>
<script type="text/javascript" src="resources/js/myapp.js"></script>
</head>
<body>
<p  data-ng-init="customers=[{name:'john smit',city:'newyork'},{name:'sunil Gurung',city:'iowa'},{name:'ram',city:'texas'}]"></p>
	Name:<input type="text" ng-model="name" />{{name}}
	<ul>
		<li data-ng-repeat="cust in customers | filter:name |orderBy:'city'">{{cust.name}},{{cust.city}}</li>
	</ul>
	<a href="nextpage">next page</a><br />
	<a href="page3">page3</a><br />
	<a href="page4">page4</a><br />
	<a href="page5">page5</a><br />
	<a href="page6">page6</a><br />
	<a href="event">event</a><br />
	<a href="filter">filter</a><br />
	<a href="search">search</a><br />
	<a href="service">service</a><br />
	<a href="customedirective">customedirective</a><br />
	<customeDirective></customeDirective>
</html>
