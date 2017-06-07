<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%@	taglib	prefix="c"	uri="http://java.sun.com/jsp/jstl/core" %>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
 <meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="resources/css/bootstrap.min.css">
  <link rel="stylesheet" href="resources/css/bootstrap.css">
   <link rel="stylesheet" href="resources/css/carousel.css">
   <link rel="stylesheet" href="resources/css/rodape.css">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Home</title>
</head>
<body>
<div class="container">
	
	<c:import url="cabecalho.html"/>
	
	<div class ="jumbotron" > 
	</div>

	

	
	
<div id="carousel" class="carousel slide responsive" data-ride="carousel">

  <!-- Indicators -->
  <ol class="carousel-indicators responsive">
    <li data-target="#carousel" data-slide-to="0" class="active"></li>
    <li data-target="#carousel" data-slide-to="1"></li>
    <li data-target="#carousel" data-slide-to="2"></li>
  </ol>

  <!-- Wrapper for slides -->
  	<div class="carousel-inner" role="listbox">
    
    <div class="item active">
    	<img class="d-block img-fluid" src="resources/img/d6e.jpg" alt="">
    	<div class="carousel-caption">
    		<h3>Produto1</h3>
    	</div>
    </div>

    <div class="item">
    	<img class="d-block img-fluid" src="resources/img/d6e.jpg" alt="">
    	 <div class="carousel-caption">
        <h3>Produto2</h3>
      </div>
    </div>

    <div class="item">
    	<img class="d-block img-fluid" src="resources/img/d6e.jpg" alt="">
    	 <div class="carousel-caption">
        <h3>Produto3</h3>
      </div>
    </div>


    </div>
	
		<!-- Controls -->


<div>
    <h2>Produtos</h2>
</div>

<div class="row">
  <div class="col-sm-6 col-md-4">
    <div class="thumbnail">
      <img src="resources/img/Produto1.jpg" alt="..." width="460" height="345">
      <div class="caption">
        <h3>Produto 1</h3>
        <p>descricao</p>
        <p><a href="#" class="btn btn-primary" role="button">Adicionar</a></p>
      </div>
    </div>
  </div>




  <div class="col-sm-6 col-md-4">
    <div class="thumbnail">
      <img src="resources/img/Produto2.jpg" alt="..." width="460" height="345">
      <div class="caption">
        <h3>Produto2</h3>
        <p>descricao</p>
        <p><a href="#" class="btn btn-primary" role="button">Adicionar</a></p>
      </div>
    </div>
  </div>




  <div class="col-sm-6 col-md-4">
    <div class="thumbnail">
      <img src="resources/img/Produto3.jpg" alt="..." width="460" height="345">
      <div class="caption">
        <h3>Produto3</h3>
        <p>descricao</p>
        <p><a href="#" class="btn btn-primary" role="button">adicinoar</a></p>
      </div>
    </div>
  </div>


	</div>
	
</div>	
</div>

<div class="container">

<c:import url="rodape.html"></c:import>

</div>

<script type="text/javascript" src = "resources/js/bootstrap.min.js"></script>
<script type="text/javascript" src = "resources/js/jquery-3.2.0.min.js"></script>

</body>

</html>