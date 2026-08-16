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
		        href='../img/bluedown1.png' 
		    </c:when>
		    <c:when test="${ninja.color == 'red'}">
		        href='../img/reddown1.png' 
		    </c:when>
		    <c:when test="${ninja.color == 'green'}">
		        href='../img/greendown1.png' 
		    </c:when> 
		    <c:when test="${ninja.color == 'purple'}">
		        href='../img/purpledown1.png' 
	    	</c:when>   
		</c:choose> />
		<title><c:out value="${ninja.name}"/></title>
		<title>Garden</title>
		<link rel="stylesheet" href="../css/garden.css">
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">

	</head>
	<body>
			<div class="container">
			<div>
			<a class="world" href="/homePage">Home</a>
			<h2>Flame: <c:out value="${ninja.gold}"/></h2>
			<h2>Silver: <c:out value="${ninja.silver}"/></h2>
			<h2>Wisdom: <c:out value="${ninja.wisdom}"/></h2>
			<h2>Health: <c:out value="${ninja.health}"/></h2>
			<h2 class="name"><c:out value="${ninja.name}"/>-</h2>
			<a class="world" href="/world/${ninja.id}">Play the game.......</a>
		</div>
		<c:choose>
		    <c:when test="${ninja.color == 'blue'}">
		        <img src='../img/bluedown1.png' alt="ninja" class="img">
		        <br />
		    </c:when>
		    <c:when test="${ninja.color == 'red'}">
		        <img src='../img/reddown1.png' alt="ninja" class="img">
		        <br />
		    </c:when>
		    <c:when test="${ninja.color == 'green'}">
		        <img src='../img/greendown1.png' alt="ninja" class="img">
		        <br />
		    </c:when> 
		    <c:when test="${ninja.color == 'purple'}">
		        <img src='../img/purpledown1.png' alt="ninja" class="img">
		        <br />
	    	</c:when>   
		</c:choose>
		</div>
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script> 
		<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
	</body>
</html>
