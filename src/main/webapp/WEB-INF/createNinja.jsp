<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page isErrorPage="true" %>    
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<link rel="shortcut icon" href="../img/purpleNinja.jpg" />
		<title>Create Ninja here</title>
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
		<link rel="stylesheet" href="css/createNinja.css">
	</head>
	<body>
			<div class="container">
			<h1 class="title">Create a new ninja</h1>
			<form:form action="/ninjas" method="POST" modelAttribute="ninja">
				<div>
					<p><form:errors class="error" path="name"/></p>
					<form:label class="white" path="name">Name:</form:label>
					<form:input path="name"/>
				</div>
				<div>
					<p><form:errors class="error" path="color"/></p>
					<form:label class="white" path="color">Color:</form:label>
					<form:select path="color">
					  <form:option value="red">Red</form:option>
					  <form:option value="green">Green</form:option>
					  <form:option value="blue">Blue</form:option>
					  <form:option value="purple">Purple</form:option>
					</form:select>
				</div>
				<div>
					<p><form:errors class="error" path="expression"/></p>
					<form:label class="white" path="expression">Expression:</form:label>
					<form:input path="expression"/>
				</div>
				<input type="submit" value="Create Ninja!"/>	
			</form:form>
			<img src="img/reddown1.png" alt="ninja" class="img">
			<img src="img/greendown1.png" alt="ninja" class="img">
			<img src="img/bluedown1.png" alt="ninja" class="img">
			<img src="img/purpledown1.png" alt="ninja" class="img">
		</div>
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script> 
		<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>  
	</body>
</html>
