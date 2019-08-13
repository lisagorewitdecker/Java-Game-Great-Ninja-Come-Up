<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page isErrorPage="true" %>    
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<link rel="shortcut icon"
		<c:choose>
		    <c:when test="${ninja.color == 'blue'}">
		        href='../../img/bluedown1.png' 
		    </c:when>
		    <c:when test="${ninja.color == 'red'}">
		        href='../../img/reddown1.png' 
		    </c:when>
		    <c:when test="${ninja.color == 'green'}">
		        href='../../img/greendown1.png' 
		    </c:when> 
		    <c:when test="${ninja.color == 'purple'}">
		        href='../../img/purpledown1.png' 
	    	</c:when>   
		</c:choose> />
		<title><c:out value="${ninja.name}"/></title>
		<link rel="stylesheet" href="../../css/editNinja.css">
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">

	</head>
	<body>
		<div class="container">
		<h1 class="white">Edit Ninja</h1>
		<form:form action="/ninjas/${ninja.id}" method="POST" modelAttribute="ninja">
			<input type="hidden" name="_method" value="put" />
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
			<input type="submit" value="Edit Ninja"/>	
		</form:form>
		<c:choose>
		    <c:when test="${ninja.color == 'blue'}">
		        <img src='../../img/bluedown1.png' alt="ninja" class="img">
		        <br />
		    </c:when>
		    <c:when test="${ninja.color == 'red'}">
		        <img src='../../img/reddown1.png' alt="ninja" class="img">
		        <br />
		    </c:when>  
		    <c:when test="${ninja.color == 'green'}">
		        <img src='../../img/greendown1.png' alt="ninja" class="img">
		        <br />
		    </c:when> 
		    <c:when test="${ninja.color == 'purple'}">
		        <img src='../../img/purpledown1.png' alt="ninja" class="img">
		        <br />
	    	</c:when> 
		</c:choose>
		</div>
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script> 
		<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>  
	</body>

</html>
