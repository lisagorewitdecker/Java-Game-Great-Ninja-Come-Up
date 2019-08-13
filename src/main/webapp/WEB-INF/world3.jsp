<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>    
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<link rel="shortcut icon" href="../img/bonsai.jpg" />
		<title>Level III</title>
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
		<link rel="stylesheet" href="../../css/world3.css">
		
	</head>
	<body>
		<div class="container">
		<div id="world"></div>
		<div id="ninja"></div>
		<div class="gold">Flame:<h3 id="gold"></h3>
			<a href="/world/${ninjaMan.id}">Level 1</a>
		</div>
		<div class="silver">Silver:<h3 id="silver"></h3>
			<a href="/world2/${ninjaMan.id}">Level 2</a>
		</div>
		<h3 class="health">Health: <c:out value="${ninjaMan.health}"/></h3>
		<h3 class="health">Name: <c:out value="${ninjaMan.name}"/>
			<a href="/garden/${ninjaMan.id}">Garden</a>
		</h3>
		<img src="../img/level3.png" alt="level 3" class="level3">
		<!-- <script src="../../js/world3.js"></script> -->
		<c:choose>
		    <c:when test="${ninjaMan.color == 'blue'}">
		        <script src="../../js/world3blue.js"></script>
		    </c:when>
		    <c:when test="${ninjaMan.color == 'red'}">
		        <script src="../../js/world3red.js"></script>
		    </c:when>  
		    <c:when test="${ninjaMan.color == 'green'}">
		    	<script src="../../js/world3green.js"></script>
		    </c:when> 
		    <c:when test="${ninjaMan.color == 'purple'}">
		        <script src="../../js/world3purple.js"></script>
	    	</c:when> 
		</c:choose>
		<audio src="../audio/pacman.mp3" id="pacman" loop="loop" autoplay="autoplay"></audio>
		<script>
			window.onload = function(){
				document.getElementById("pacman").play();
			}
		</script>
		</div>
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script> 
		<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>  

	</body>
</html>
