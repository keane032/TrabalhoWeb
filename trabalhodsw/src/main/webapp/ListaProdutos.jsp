<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css"
	href="resources/css/bootstrap.css">
<link rel="stylesheet" type="text/css"
	href="resources/css/bootstrap.min.css">
</head>
<body>


	<c:import url="cabecalho.html"></c:import>

	<div class="container">


		<form action="sistema?logica=AdicionarProdutoLogic" method="post">
			<h1>Adicione aqui!!!!</h1>
			Nome:<input type="text" name="nome"><br> Preco:<input
				type="text" name="preco"><br> qtd:<input type="text"
				name="qtd"><br>
			<input type="Submit" name="Adicionar"><br>
		</form>

		<h1>Lista de produtos</h1>

		<div class="row">
			<c:forEach var="p" items="${produtos}">
				<div class="col-sm-6 col-md-4">
					<div class="thumbnail">
						<img src="resources/img/Produto1.jpg" alt="..." width="460"
							height="345">
						<div class="caption">
							<h3>${p.nome}</h3>
							<p>${p.preco}</p>




							<p>
								<a class="btn btn-primary" role="button" data-toggle="modal"
									data-target="#${p.id}"> Atualizar </a>
							</p>


							<!-- Modal -->
							<div class="modal fade" id="${p.id}" tabindex="-1" role="dialog"
								aria-labelledby="myModalLabel">
								<div class="modal-dialog" role="document">
									<div class="modal-content">
										<div class="modal-header">
											<button type="button" class="close" data-dismiss="modal"
												aria-label="Close">
												<span aria-hidden="true">&times;</span>
											</button>
											<h4 class="modal-title" id="myModalLabel">Atulalizar</h4>
										</div>
										<div class="modal-body">

											<form action="sistema?logica=AtualizarProdutoLogic"
												method="post">
												id:<input type="text" name="id" value="${p.id}"><br>
												Nome:<input type="text" name="nome" value="${p.nome}"><br>
												Preco:<input type="text" name="preco" value="${p.preco}"><br>
												<input type="Submit" name="Adicionar"><br>
											</form>

										</div>
									</div>
								</div>
							</div>



							<p>
								<a href="sistema?logica=RemoveProdutoLogic&id=${p.id}"
									class="btn btn-primary" role="button"> Remover </a>
							</p>


						</div>
					</div>
				</div>


			</c:forEach>
		</div>
	</div>




	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script>
	<script
		src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>







</body>
</html>