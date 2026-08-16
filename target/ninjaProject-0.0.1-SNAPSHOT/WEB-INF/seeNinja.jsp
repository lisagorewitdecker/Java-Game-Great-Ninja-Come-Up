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
		<title><c:out value="${ninja.expression}"/></title>
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">		<link rel="stylesheet" href="../css/seeNinja.css">
	</head>
	<body>
			<div class="container mb-6">
			<div class="left">
				<p><c:out value="${ninja.name}"/></p>
				<p><span class="cursive">"<c:out value="${ninja.expression}"/>"</span></p>
				<p></p>
				<table>
					<thead>
						<tr>
							<th><img src='../img/flame.jpg' alt="gold" class="img"></th>
							<th><img src='../img/silver.jpg' alt="silver" class="img"></th>
							<th>Health</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td><c:out value="${ninja.gold}"/></td>
							<td><c:out value="${ninja.silver}"/></td>
							<td><c:out value="${ninja.health}"/></td>
						</tr>
					</tbody>
				</table>
				<a href="/ninjas/${ninja.id}/edit" class="btn btn-primary">Edit</a>
				<form style="display:inline-block" action="/ninjas/${ninja.id}" method="post">
					<input type="hidden" name="_method" value="delete"/>
					<input type="submit" value="Delete"/>
				</form>
				<a href="/garden/${ninja.id}" class="btn btn-primary">Garden</a>
			</div>
			<c:choose>
			    <c:when test="${ninja.color == 'blue'}">
			        <img src='../img/bluedown2.png' alt="ninja" class="Nimg">
			        <br />
			    </c:when>
			    <c:when test="${ninja.color == 'red'}">
			        <img src='../img/reddown1.png' alt="ninja" class="Nimg">
			        <br />
			    </c:when>
			    <c:when test="${ninja.color == 'green'}">
			        <img src='../img/greendown2.png' alt="ninja" class="Nimg">
			        <br />
			    </c:when> 
			    <c:when test="${ninja.color == 'purple'}">
			        <img src='../img/purpledown1.png' alt="ninja" class="Nimg">
			        <br />
		    	</c:when>   
			</c:choose>
		</div>
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script> 
		<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script> 
	</body>
</html>
