<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<link rel="shortcut icon" href="../img/skull2.jpg" />
		<title>Level II</title>
		<link rel="stylesheet" href="../../css/world2.css">
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">

		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
		<!-- <script src="js/ninja.js"></script> -->
	</head>
	<body><div class="container">
		<div id="world"></div>
		<div id="ninja"></div>
		<div class="gold">Flame:<h3 id="gold"></h3>
			<a href="/world/${ninjaMan.id}">Level 1</a>
		</div>
		<div class="silver">Silver:<h3 id="silver"></h3></div>
		<h3 class="health">Health: <c:out value="${ninjaMan.health}"/>
			<a href="/world3/${ninjaMan.id}">Level 3</a>		
		</h3>
		<h3 class="health">Name: <c:out value="${ninjaMan.name}"/></h3> 
		<!-- <script src="../js/world2.js"></script> -->
		<img src="../img/level2.png" alt="level 2" class="level2">
		<c:choose>
		    <c:when test="${ninjaMan.color == 'blue'}">
		        <script src="../js/world2blue.js"></script>
		    </c:when>
		    <c:when test="${ninjaMan.color == 'red'}">
		        <script src="../js/world2red.js"></script>
		    </c:when>  
		    <c:when test="${ninjaMan.color == 'green'}">
		    	<script src="../js/world2green.js"></script>
		    </c:when> 
		    <c:when test="${ninjaMan.color == 'purple'}">
		        <script src="../js/world2purple.js"></script>
	    	</c:when> 
		</c:choose>
		<audio src="../audio/mortal_kombat.mp3" id="mortal_kombat" loop="loop" autoplay="autoplay"></audio>
		<script>
			window.onload = function(){
				document.getElementById("mortal_kombat").play();
			}
		</script>
		</div>
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script> 
		<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>  

	</body>
</html>
