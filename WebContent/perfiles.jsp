<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<%@page import="objetos.*, java.util.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<%
ArrayList<usuarios> listaU = (ArrayList<usuarios>) request.getAttribute("listaU");
System.out.println("Denrto de perfiles "+listaU);
usuarios u= listaU.get(0);
if (request.getParameter("cerrar")!=null){
	session.invalidate();

}
%>
<!-- BOOTSTRAP PARA EL PANEL DE NAVEGACION -->
 <style type="text/css">svg:not(:root).svg-inline--fa{overflow:visible}.svg-inline--fa{display:inline-block;font-size:inherit;height:1em;overflow:visible;vertical-align:-.125em}.svg-inline--fa.fa-lg{vertical-align:-.225em}.svg-inline--fa.fa-w-1{width:.0625em}.svg-inline--fa.fa-w-2{width:.125em}.svg-inline--fa.fa-w-3{width:.1875em}.svg-inline--fa.fa-w-4{width:.25em}.svg-inline--fa.fa-w-5{width:.3125em}.svg-inline--fa.fa-w-6{width:.375em}.svg-inline--fa.fa-w-7{width:.4375em}.svg-inline--fa.fa-w-8{width:.5em}.svg-inline--fa.fa-w-9{width:.5625em}.svg-inline--fa.fa-w-10{width:.625em}.svg-inline--fa.fa-w-11{width:.6875em}.svg-inline--fa.fa-w-12{width:.75em}.svg-inline--fa.fa-w-13{width:.8125em}.svg-inline--fa.fa-w-14{width:.875em}.svg-inline--fa.fa-w-15{width:.9375em}.svg-inline--fa.fa-w-16{width:1em}.svg-inline--fa.fa-w-17{width:1.0625em}.svg-inline--fa.fa-w-18{width:1.125em}.svg-inline--fa.fa-w-19{width:1.1875em}.svg-inline--fa.fa-w-20{width:1.25em}.svg-inline--fa.fa-pull-left{margin-right:.3em;width:auto}.svg-inline--fa.fa-pull-right{margin-left:.3em;width:auto}.svg-inline--fa.fa-border{height:1.5em}.svg-inline--fa.fa-li{width:2em}.svg-inline--fa.fa-fw{width:1.25em}.fa-layers svg.svg-inline--fa{bottom:0;left:0;margin:auto;position:absolute;right:0;top:0}.fa-layers{display:inline-block;height:1em;position:relative;text-align:center;vertical-align:-.125em;width:1em}.fa-layers svg.svg-inline--fa{-webkit-transform-origin:center center;transform-origin:center center}.fa-layers-counter,.fa-layers-text{display:inline-block;position:absolute;text-align:center}.fa-layers-text{left:50%;top:50%;-webkit-transform:translate(-50%,-50%);transform:translate(-50%,-50%);-webkit-transform-origin:center center;transform-origin:center center}.fa-layers-counter{background-color:#ff253a;border-radius:1em;-webkit-box-sizing:border-box;box-sizing:border-box;color:#fff;height:1.5em;line-height:1;max-width:5em;min-width:1.5em;overflow:hidden;padding:.25em;right:0;text-overflow:ellipsis;top:0;-webkit-transform:scale(.25);transform:scale(.25);-webkit-transform-origin:top right;transform-origin:top right}.fa-layers-bottom-right{bottom:0;right:0;top:auto;-webkit-transform:scale(.25);transform:scale(.25);-webkit-transform-origin:bottom right;transform-origin:bottom right}.fa-layers-bottom-left{bottom:0;left:0;right:auto;top:auto;-webkit-transform:scale(.25);transform:scale(.25);-webkit-transform-origin:bottom left;transform-origin:bottom left}.fa-layers-top-right{right:0;top:0;-webkit-transform:scale(.25);transform:scale(.25);-webkit-transform-origin:top right;transform-origin:top right}.fa-layers-top-left{left:0;right:auto;top:0;-webkit-transform:scale(.25);transform:scale(.25);-webkit-transform-origin:top left;transform-origin:top left}.fa-lg{font-size:1.33333em;line-height:.75em;vertical-align:-.0667em}.fa-xs{font-size:.75em}.fa-sm{font-size:.875em}.fa-1x{font-size:1em}.fa-2x{font-size:2em}.fa-3x{font-size:3em}.fa-4x{font-size:4em}.fa-5x{font-size:5em}.fa-6x{font-size:6em}.fa-7x{font-size:7em}.fa-8x{font-size:8em}.fa-9x{font-size:9em}.fa-10x{font-size:10em}.fa-fw{text-align:center;width:1.25em}.fa-ul{list-style-type:none;margin-left:2.5em;padding-left:0}.fa-ul>li{position:relative}.fa-li{left:-2em;position:absolute;text-align:center;width:2em;line-height:inherit}.fa-border{border:solid .08em #eee;border-radius:.1em;padding:.2em .25em .15em}.fa-pull-left{float:left}.fa-pull-right{float:right}.fa.fa-pull-left,.fab.fa-pull-left,.fal.fa-pull-left,.far.fa-pull-left,.fas.fa-pull-left{margin-right:.3em}.fa.fa-pull-right,.fab.fa-pull-right,.fal.fa-pull-right,.far.fa-pull-right,.fas.fa-pull-right{margin-left:.3em}.fa-spin{-webkit-animation:fa-spin 2s infinite linear;animation:fa-spin 2s infinite linear}.fa-pulse{-webkit-animation:fa-spin 1s infinite steps(8);animation:fa-spin 1s infinite steps(8)}@-webkit-keyframes fa-spin{0%{-webkit-transform:rotate(0);transform:rotate(0)}100%{-webkit-transform:rotate(360deg);transform:rotate(360deg)}}@keyframes fa-spin{0%{-webkit-transform:rotate(0);transform:rotate(0)}100%{-webkit-transform:rotate(360deg);transform:rotate(360deg)}}.fa-rotate-90{-webkit-transform:rotate(90deg);transform:rotate(90deg)}.fa-rotate-180{-webkit-transform:rotate(180deg);transform:rotate(180deg)}.fa-rotate-270{-webkit-transform:rotate(270deg);transform:rotate(270deg)}.fa-flip-horizontal{-webkit-transform:scale(-1,1);transform:scale(-1,1)}.fa-flip-vertical{-webkit-transform:scale(1,-1);transform:scale(1,-1)}.fa-flip-horizontal.fa-flip-vertical{-webkit-transform:scale(-1,-1);transform:scale(-1,-1)}:root .fa-flip-horizontal,:root .fa-flip-vertical,:root .fa-rotate-180,:root .fa-rotate-270,:root .fa-rotate-90{-webkit-filter:none;filter:none}.fa-stack{display:inline-block;height:2em;position:relative;width:2em}.fa-stack-1x,.fa-stack-2x{bottom:0;left:0;margin:auto;position:absolute;right:0;top:0}.svg-inline--fa.fa-stack-1x{height:1em;width:1em}.svg-inline--fa.fa-stack-2x{height:2em;width:2em}.fa-inverse{color:#fff}.sr-only{border:0;clip:rect(0,0,0,0);height:1px;margin:-1px;overflow:hidden;padding:0;position:absolute;width:1px}.sr-only-focusable:active,.sr-only-focusable:focus{clip:auto;height:auto;margin:0;overflow:visible;position:static;width:auto}</style><link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.0/css/bootstrap.min.css" integrity="sha384-9gVQ4dYFwwWSjIDZnLEWnxCjeSWFphJiwGPXr1jddIhOegiu1FwO5qRGvFXOdJZ4" crossorigin="anonymous">
     <script defer="" src="https://use.fontawesome.com/releases/v5.0.13/js/solid.js" integrity="sha384-tzzSw1/Vo+0N5UhStP3bvwWPq+uvzCMfrN1fEFe+xBmv1C/AtVX5K0uZtmcHitFZ" crossorigin="anonymous"></script>
    <script defer="" src="https://use.fontawesome.com/releases/v5.0.13/js/fontawesome.js" integrity="sha384-6OIrr52G08NpOFSZdxxz1xdNSndlD4vdcf/q2myIUVO0VsqaGHJsB0RaBE01VTOY" crossorigin="anonymous"></script>
<!-- bOOTSTRAP PARA EL RESTO -->
<link
	href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
	rel="stylesheet" id="bootstrap-css">
<script
	src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
<link rel="stylesheet" type="text/css" href="css/index.css">
<!-- Compiled and minified Bootstrap CSS -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<!-- Minified JS library -->
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<!-- Compiled and minified Bootstrap JavaScript -->
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
	
<script type="text/javascript">
	//Funcion que cambia entre formularios, el de registro y login

	function visualiza_login() {
		document.getElementById('login').style.visibility = 'visible';
		document.getElementById('login').style.display = 'block';
		document.getElementById('registro').style.visibility = 'hidden';
		document.getElementById('registro').style.display = 'none';
	};
	function visualiza_registro() {
		document.getElementById('registro').style.visibility = 'visible';
		document.getElementById('registro').style.display = 'block';

		document.getElementById('login').style.visibility = 'hidden';
		document.getElementById('login').style.display = 'none';
	};
	

</script>

<title>Mi Perfil</title>
</head>
<body>


	<div class="sidenav">
		<div class="login-main-text">
			<h2>
				SnowMedia<br> Perfil del usuario <%=u.getNombre() %> Aqui puedes modificar tus datos
			</h2>
			<p>Aqui puedes modificar los datos basicos de tu perfil</p>


		</div>
		<br> <br> <br>

		<!-- Carrusel de imagenes -->
		<div class="login-main">
			<div id="myCarousel" class="carousel slide" data-ride="carousel">
				<!-- Indicators -->
				<ol class="carousel-indicators">
					<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
					<li data-target="#myCarousel" data-slide-to="1"></li>
					<li data-target="#myCarousel" data-slide-to="2"></li>
				</ol>


				<div class="carousel-inner">
					<div class="item active">
						<img
							src="https://proyectofinalamm.s3.eu-west-3.amazonaws.com/imagenespag/login/dino.jpg"
							alt="">
					</div>
					<div class="item">
						<img
							src="https://proyectofinalamm.s3.eu-west-3.amazonaws.com/imagenespag/login/tres.png"
							alt="">
					</div>
					<div class="item">
						<img
							src="https://proyectofinalamm.s3.eu-west-3.amazonaws.com/imagenespag/login/video.png"
							alt="">
					</div>
				</div>


				<a class="left carousel-control" href="#myCarousel"
					data-slide="prev"> <span
					class="glyphicon glyphicon-chevron-left"></span> <span
					class="sr-only">Previous</span>
				</a> <a class="right carousel-control" href="#myCarousel"
					data-slide="next"> <span
					class="glyphicon glyphicon-chevron-right"></span> <span
					class="sr-only">Next</span>
				</a>
			</div>
		</div>
	</div>
	<div class="main">

		<br>
		<div >

			 <nav class="navbar navbar-expand-lg navbar-light bg-light">
                <div class="container-fluid">

                  
                    <button class="btn btn-dark d-inline-block d-lg-none ml-auto" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                        <svg class="svg-inline--fa fa-align-justify fa-w-14" aria-hidden="true" data-prefix="fas" data-icon="align-justify" role="img" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 448 512" data-fa-i2svg=""><path fill="currentColor" d="M0 84V44c0-8.837 7.163-16 16-16h416c8.837 0 16 7.163 16 16v40c0 8.837-7.163 16-16 16H16c-8.837 0-16-7.163-16-16zm16 144h416c8.837 0 16-7.163 16-16v-40c0-8.837-7.163-16-16-16H16c-8.837 0-16 7.163-16 16v40c0 8.837 7.163 16 16 16zm0 256h416c8.837 0 16-7.163 16-16v-40c0-8.837-7.163-16-16-16H16c-8.837 0-16 7.163-16 16v40c0 8.837 7.163 16 16 16zm0-128h416c8.837 0 16-7.163 16-16v-40c0-8.837-7.163-16-16-16H16c-8.837 0-16 7.163-16 16v40c0 8.837 7.163 16 16 16z"></path></svg><!-- <i class="fas fa-align-justify"></i> -->
                    </button>

                    <div class="collapse navbar-collapse" id="navbarSupportedContent">
                        <ul class="nav navbar-nav ml-auto">
                            <li class="nav-item active">
                                <a class="nav-link" href="controladorproyecto?action=4">Volver</a>
                            </li>
                          
                            
                            
                        </ul>
                    </div>
                </div>
            </nav>
		</div>

		<div class="col-md-6 col-sm-12">


			<div class="login-form">

				<!-- DATOS DE USUARIO -->

				<form id="login" style="visibility: visible; display: block;" >
					<div id="login" class="form-group">
						<label>Usuario </label> <input type="text"
							class="form-control" placeholder="<%=u.getNombre() %>" name="user"
							readonly="readonly">
					</div>
					<div id="login" class="form-group">
						<label>Correo electronico</label> <input type="text"
							class="form-control" placeholder="<%=u.getCorreo() %>"
							name="correo" readonly="readonly">
					</div>
					
					<div class="form-group">
						<label>Contraseņa</label> <input id="contrasena" type="password"
							class="form-control" placeholder="<%=u.getContrasena()%>"
							name="clave" readonly="readonly">
					</div>
				
					
					
					<button type="button" class="btn btn-black"
						onclick="visualiza_registro()">Modificar mis datos</button>
				</form>

				<!-- FORMULARIO DE REGISTRO  -->
				<form id="registro" style="visibility: hidden; display: none;"
					action="controladorproyecto" method="post">
					<div class="form-group">
						<label>Correo electronico*</label> <input type="text"
							class="form-control" placeholder="Correo electronico*"
							name="correo" >
					</div>
					<div class="form-group">

						<label>Nombre de usuario* </label> <input type="text"
							class="form-control" placeholder="Nombre de usuario*"
							name="nombre" >
					</div>
					<div class="form-group">
						<label>Contraseņa*</label> <input id="contrasena" type="password"
							class="form-control" placeholder="Contraseņa" "
							name="clave" >
					</div>
					
					<div id="resultado"></div>
					<input type="hidden" name="id" value="<%=u.getId_usuario() %>" />
					<input type="hidden" name="action" value="6" />
					<button type="submit" class="btn btn-black">Modificar mis datos</button>
					<button type="button" class="btn btn-secondary"
						onclick="visualiza_login()">Ya tengo cuenta</button>
				</form>
			</div>
		</div>
	</div>

</body>
</html>