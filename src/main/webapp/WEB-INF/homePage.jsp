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
		<title>Home Page</title>
		<link rel="stylesheet" href="css/homePage.css">
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
		<style>
			@import url('https://fonts.googleapis.com/css?family=Kaushan+Script');
		</style>
	</head>
	<body>
			<div class="container">
			<div class="message_board">
				<p class="marron"> Here is the dojo.. See the ninjas, masked warriors in training. Honing their skills to one day unleash them on the world. Presearving justice in our time..</p>
				<h3><a href="/createNinja">Create Ninja</a></h3>
			</div>
			<c:forEach items="${ninjas}" var="ninja">
				<div class="ninja">
					<h1><a href="/ninjas/${ninja.id}" class="ninjaName"><c:out value="${ninja.name}"/></a></h1>
					<c:choose>
					    <c:when test="${ninja.color == 'blue'}">
					        <img src='../img/bluedown1.png' alt="ninja" class="img">
					        <br />
					    </c:when>    
					    <c:when test="${ninja.color == 'green'}">
					        <img src='../img/greendown1.png' alt="ninja" class="img">
					        <br />
				    	</c:when>
				    	<c:when test="${ninja.color == 'purple'}">
					        <img src='../img/purpledown2.png' alt="ninja" class="img">
					        <br />
				    	</c:when>
					    <c:when test="${ninja.color == 'red'}">
					        <img src="../img/reddown2.png" alt="ninja" class="img">
					        <br />
					    </c:when>
					</c:choose>
					<img src='../img/flame.jpg' alt="ninja" class="flame"> 
				</div>
			</c:forEach>
			<script>
				var step = 1;
				function walkNinja(){
					if(step == 1){
						step = 2;
					}else{
						step = 1;
					}
					setTimeout(walkNinja, 100)
				}
				walkNinja();
			</script>
		</div>
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script> 
		<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
	</body>
</html>
