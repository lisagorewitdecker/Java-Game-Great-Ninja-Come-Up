<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<link rel="shortcut icon" href="../img/bonsai.jpg" />
		<title>Level I</title>
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
		<link rel="stylesheet" href="../../css/world1.css">
		 <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
		<!-- <script src="../js/ninja.js"></script> -->
		<script>
			$(document).ready(function() {
				$('.level1').click(function(){
					$('.level1').hide();
				});
			});
		</script>
	</head>
	<body>
		<div class="container">
		<div id="world"></div>
		<div id="ninja"></div>
		<div class="gold">Flame:<h3 id="gold"></h3></div>
		<div class="silver">Silver:<h3 id="silver"></h3>
			<a href="/world2/${ninja.id}">Level 2</a>		
		</div>
		<h3 class="health">Health: <c:out value="${ninja.health}"/></h3>
		<h3 class="health">Name: <c:out value="${ninja.name}"/></h3>
		<img src="../img/level1.png" alt="level 1" class="level1">
		<!-- <script src="../js/world1.js"></script> -->
		<c:choose>
			<c:when test="${ninja.color == 'blue'}">
		        <script src="../js/world1blue.js"></script>
		    </c:when>
		    <c:when test="${ninja.color == 'red'}">
		        <script src="../js/world1red.js"></script>
		    </c:when>
		    <c:when test="${ninja.color == 'green'}">
		    	<script src="../js/world1green.js"></script>
		    </c:when> 
		    <c:when test="${ninja.color == 'purple'}">
		    	<script src="../js/world1purple.js"></script>
	    	</c:when> 
		</c:choose>
		<audio src="../audio/viet.mp3" id="viet" loop="loop" autoplay="autoplay"></audio>
		<script>
			window.onload = function(){
				document.getElementById("viet").play();
			}
		</script>
		</div>
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script> 
		<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>  

	</body>
</html>
