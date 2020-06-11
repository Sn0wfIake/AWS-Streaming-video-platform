<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="objetos.*,java.util.* "%>
<html class="fontawesome-i2svg-active fontawesome-i2svg-complete"><head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
<link rel="stylesheet" href="css/registro.css">

<%



		String ok = (String) request.getAttribute("ok");
	if (!ok.equals("0") && !ok.equals("6")) {%>
		<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
		<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
		<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
		<!------ Include the above in your HEAD tag ---------->

		<div class="page-wrap d-flex flex-row align-items-center">
		    <div class="container">
		        <div class="row justify-content-center">
		            <div class="col-md-12 text-center">
		                <span class="display-1 d-block">Registro exitoso</span>
		                <div class="mb-4 lead">Te has registrado correctamente, por favor inicia sesion para disfrutar de todo el contenido :)</div>
		                <a href="index.jsp" class="btn btn-link">Iniciar sesion</a>
		            </div>
		        </div>
		    </div>
		</div>
		<%}else if(ok.equals("6")){	%>	
		<!-- Actualizando el user -->
		
		<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<!------ Include the above in your HEAD tag ---------->

<div class="page-wrap d-flex flex-row align-items-center">
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-md-12 text-center">
                <span class="display-1 d-block">Perfil Actualizado</span>
                <div class="mb-4 lead">Vuelve al index, e inicia sesion de nuevo.</div>
                <a href="index.jsp" class="btn btn-link">Iniciar sesion de nuevo</a>
            </div>
        </div>
    </div>
</div>
		
		<%} else{ %>
		<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<!------ Include the above in your HEAD tag ---------->

<div class="page-wrap d-flex flex-row align-items-center">
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-md-12 text-center">
                <span class="display-1 d-block">ERROR</span>
                <div class="mb-4 lead">Algo salio mal.</div>
                <a href="index.jsp" class="btn btn-link">Regresa al inicio e intentalo de nuevo</a>
            </div>
        </div>
    </div>
</div>

	<%}%>
	
</body>
</html>