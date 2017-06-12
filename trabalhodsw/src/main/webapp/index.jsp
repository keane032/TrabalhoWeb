<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login</title>
<link rel="stylesheet" href="resources/css/bootstrap.min.css">
<link rel="stylesheet" href="resources/css/bootstrap.css">
<link rel="stylesheet" href="resources/css/rodape.css">
<link rel="stylesheet" href="resources/css/Login.css">
</head>
<body>


	<h2>Login</h2>

	<form action="">
	<div class="imgcontainer">
    <img src="resources/img/Produto1.jpg" alt="Avatar" class="avatar">
  </div>
		<div class="container">
		
			<label><b>Username</b></label> <br><input type="text"
				placeholder="Enter Username" name="uname" required> <br>
				<label><b>Password</b></label><br>
			<input type="password" placeholder="Enter Password" name="psw"
				required>
			<br>
			<button type="submit">Login</button>
			<a href="CadastrarCliente.jsp"><button type="button">Cadastrar</button></a>
		</div>
	</form>
		

	<script type="text/javascript" src="resources/js/jquery-3.2.0.min.js"></script>
</body>
</html>
