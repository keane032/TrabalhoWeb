<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Login</title>
	<link rel="stylesheet" href="resources/css/bootstrap.min.css">
  <link rel="stylesheet" href="resources/css/bootstrap.css">
	<link rel="stylesheet" href="resources/css/rodape.css">
</head>
<body>

<div class="container">
<nav class="navbar navbar-default">
<a class="navbar-brand"> Nome da loja </a>
</nav>


<div class="container" id = "formulario">
	<form action="login" method="post" id="login">
		<input type ="text" name = "login"></br>
		<input type ="text" name = "senha"><br>
		<input type = "submit" name="login">
	</form>	
</div>


<div class="footer container">

<c:import url="rodape.html"></c:import>

</div>
</div>
<script type="text/javascript" src = "resources/js/jquery-3.2.0.min.js"></script>
</body>
</html>
