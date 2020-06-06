<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="objetos.*,java.util.*, modelo.*"%>
<html class="fontawesome-i2svg-active fontawesome-i2svg-complete">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>SnowMediaLogin</title>
</head>
<body>

	<%
	ArrayList<usuarios> listaU = (ArrayList<usuarios>) request.getAttribute("listaU");
	System.out.println("Denrto de jsp "+listaU);
	
	ArrayList<contenidos> listaC = (ArrayList<contenidos>) request.getAttribute("listaC");
	System.out.println("Denrto de jsp 1 "+listaC);
	ArrayList<contenidos> listaS = (ArrayList<contenidos>) request.getAttribute("listaS");
	System.out.println("Denrto de jsp 2 "+listaS);
	int arr2[] = (int[]) request.getAttribute("recoserie");
	System.out.println("Denrto de jsp 2 "+arr2.length);
	int arr[] = (int[]) request.getAttribute("nums");
	System.out.println("Denrto de jsp 3 "+arr.length);
	String user = "";

		

	
if (listaU.isEmpty()) {
		out.println("Error an el login, intentalo de nuevo");
		
	%>

	<p>
		<a href="index.jsp">Volver a logearte</a>
	</p>
	<%
		} else {
			for (usuarios u: listaU){
			HttpSession miSesion = request.getSession();
			user = (String) session.getAttribute("name");
			
			}
		
			%>


	<title>Inicio Snowmedia</title>

	<!-- Bootstrap CSS CDN -->

	<link rel="stylesheet"
		href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.0/css/bootstrap.min.css"
		integrity="sha384-9gVQ4dYFwwWSjIDZnLEWnxCjeSWFphJiwGPXr1jddIhOegiu1FwO5qRGvFXOdJZ4"
		crossorigin="anonymous">
	<!-- Our Custom CSS -->
	<link rel="stylesheet" href="css/style.css">
	<!-- Scrollbar Custom CSS -->
	<link rel="stylesheet"
		href="https://cdnjs.cloudflare.com/ajax/libs/malihu-custom-scrollbar-plugin/3.1.5/jquery.mCustomScrollbar.min.css">

	<!-- Font Awesome JS -->
	<script defer=""
		src="https://use.fontawesome.com/releases/v5.0.13/js/solid.js"
		integrity="sha384-tzzSw1/Vo+0N5UhStP3bvwWPq+uvzCMfrN1fEFe+xBmv1C/AtVX5K0uZtmcHitFZ"
		crossorigin="anonymous"></script>
	<script defer=""
		src="https://use.fontawesome.com/releases/v5.0.13/js/fontawesome.js"
		integrity="sha384-6OIrr52G08NpOFSZdxxz1xdNSndlD4vdcf/q2myIUVO0VsqaGHJsB0RaBE01VTOY"
		crossorigin="anonymous"></script>
</head>

<body>

	<div class="wrapper">
		<!-- Sidebar  -->
		<nav id="sidebar"
			class="mCustomScrollbar _mCS_1 mCS-autoHide mCS_no_scrollbar"
			style="overflow: visible;">
			<div id="mCSB_1"
				class="mCustomScrollBox mCS-minimal mCSB_vertical mCSB_outside"
				style="max-height: none;" tabindex="0">
				<div id="mCSB_1_container"
					class="mCSB_container mCS_y_hidden mCS_no_scrollbar_y"
					style="position: relative; top: 0; left: 0;" dir="ltr">
					<div class="sidebar-header">
						<h3>Panel de usuario</h3>
					</div>


					<ul class="list-unstyled components">
						<p>
							Bienvenido
							<%=user%></p>
						<li class="active"><a href="#homeSubmenu"
							data-toggle="collapse" aria-expanded="false"
							class="dropdown-toggle collapsed">Catalogo</a>
							<ul class="list-unstyled collapse" id="homeSubmenu" style="">
								<li><a
									href="controladorproyecto?action=3&demandado=peliculas">Peliculas</a></li>
								<li><a href="controladorproyecto?action=3&demandado=series">Series/Videos</a></li>
								<li><a href="controladorproyecto?action=3&demandado=musica">Musica</a></li>
							</ul></li>

						<li><a href="#">Mi perfil</a></li>
						<li><a href="#pageSubmenu" data-toggle="collapse"
							aria-expanded="false" class="dropdown-toggle">Lista de
								favoritos</a>
							<ul class="collapse list-unstyled" id="pageSubmenu">
								<li><a href="#">Peliculas favoritas </a></li>
								<li><a href="#">Series/Videos favoritos</a></li>
								<li><a href="#">Musica favorita</a></li>
							</ul></li>

					</ul>

					<ul class="list-unstyled CTAs">

					</ul>
				</div>
			</div>
			<div id="mCSB_1_scrollbar_vertical"
				class="mCSB_scrollTools mCSB_1_scrollbar mCS-minimal mCSB_scrollTools_vertical"
				style="display: none;">
				<div class="mCSB_draggerContainer">
					<div id="mCSB_1_dragger_vertical" class="mCSB_dragger"
						style="position: absolute; min-height: 50px; height: 0px; top: 0px;">
						<div class="mCSB_dragger_bar" style="line-height: 50px;"></div>
					</div>
					<div class="mCSB_draggerRail"></div>
				</div>
			</div>
		</nav>

		<!-- Page Content  -->
		<div id="content">

			<nav class="navbar navbar-expand-lg navbar-light bg-light">
				<div class="container-fluid">

					<button type="button" id="sidebarCollapse" class="btn btn-info">
						<svg class="svg-inline--fa fa-align-left fa-w-14"
							aria-hidden="true" data-prefix="fas" data-icon="align-left"
							role="img" xmlns="http://www.w3.org/2000/svg"
							viewBox="0 0 448 512" data-fa-i2svg="">
							<path fill="currentColor"
								d="M288 44v40c0 8.837-7.163 16-16 16H16c-8.837 0-16-7.163-16-16V44c0-8.837 7.163-16 16-16h256c8.837 0 16 7.163 16 16zM0 172v40c0 8.837 7.163 16 16 16h416c8.837 0 16-7.163 16-16v-40c0-8.837-7.163-16-16-16H16c-8.837 0-16 7.163-16 16zm16 312h416c8.837 0 16-7.163 16-16v-40c0-8.837-7.163-16-16-16H16c-8.837 0-16 7.163-16 16v40c0 8.837 7.163 16 16 16zm256-200H16c-8.837 0-16 7.163-16 16v40c0 8.837 7.163 16 16 16h256c8.837 0 16-7.163 16-16v-40c0-8.837-7.163-16-16-16z"></path></svg>
						<!-- <i class="fas fa-align-left"></i> -->

					</button>
					<button class="btn btn-dark d-inline-block d-lg-none ml-auto"
						type="button" data-toggle="collapse"
						data-target="#navbarSupportedContent"
						aria-controls="navbarSupportedContent" aria-expanded="false"
						aria-label="Toggle navigation">
						<svg class="svg-inline--fa fa-align-justify fa-w-14"
							aria-hidden="true" data-prefix="fas" data-icon="align-justify"
							role="img" xmlns="http://www.w3.org/2000/svg"
							viewBox="0 0 448 512" data-fa-i2svg="">
							<path fill="currentColor"
								d="M0 84V44c0-8.837 7.163-16 16-16h416c8.837 0 16 7.163 16 16v40c0 8.837-7.163 16-16 16H16c-8.837 0-16-7.163-16-16zm16 144h416c8.837 0 16-7.163 16-16v-40c0-8.837-7.163-16-16-16H16c-8.837 0-16 7.163-16 16v40c0 8.837 7.163 16 16 16zm0 256h416c8.837 0 16-7.163 16-16v-40c0-8.837-7.163-16-16-16H16c-8.837 0-16 7.163-16 16v40c0 8.837 7.163 16 16 16zm0-128h416c8.837 0 16-7.163 16-16v-40c0-8.837-7.163-16-16-16H16c-8.837 0-16 7.163-16 16v40c0 8.837 7.163 16 16 16z"></path></svg>
						<!-- <i class="fas fa-align-justify"></i> -->
					</button>

					<div class="collapse navbar-collapse" id="navbarSupportedContent">
						<ul class="nav navbar-nav ml-auto">
							
							<li class="nav-item active"><a class="nav-link"
								href="controladorproyecto?action=3&demandado=musica">Mi
									perfil </a></li>
							<li class="nav-item"><a class="nav-link"
								href="index.jsp?cerrar=true">Cerrar sesion</a></li>

						</ul>
					</div>
				</div>
			</nav>

			<h2>
				Bienvenido
				<%=user%></h2>
			<p>Lista de series recomendadas, entre todas las de la bd</p>

			<div class="line"></div>

			<h2>Recomendaciones generales, de todos los contenidos</h2>

			<div class="body2">

				<div class="wrapper2" id="brand">
					<section id="s1">
						<a class="arrow__btn" href="#s3"><</a>
						<%
							for (int i = 0; i < 5; i++) {
							out.println("<div class=\"item\">");
							out.println("<button type=\"\" data-toggle=\"modal\" data-target=\"#exampleModal\"><img src=\""
							+ listaC.get(arr[i]).getFrame() + "\"width=\"357\" height=\"198\" title=\""+listaC.get(arr[i]).getNombre()+"\"></button></div>");
							out.println("<input type= \"hidden\" id=\""+listaC.get(arr[i]).getNombre()+ "\" name=\"articuloId\" value=\" "+listaC.get(arr[i]).getUrl()+"\"\">");
						}
						%>





						<a class="arrow__btn" href="#s2">></a>
					</section>
					<section id="s2">
						<a class="arrow__btn" href="#s1"><</a>
						<%
							for (int i = 5; i < 10; i++) {
							out.println("<div class=\"item\">");
							out.println("<button type=\"\" data-toggle=\"modal\" data-target=\"#exampleModal\"><img src=\""
							+ listaC.get(arr[i]).getFrame() + "\"width=\"357\" height=\"198\" title=\""+listaC.get(arr[i]).getNombre()+"\"></button></div>");
							out.println("<input type= \"hidden\" id=\""+listaC.get(arr[i]).getNombre()+ "\" name=\"articuloId\" value=\" "+listaC.get(arr[i]).getUrl()+"\"\">");
						}
						%>
						<a class="arrow__btn" href="#s3">></a>
					</section>
					<section id="s3">
						<a class="arrow__btn" href="#s2"><</a>
						<%
							for (int i = 10; i < 15; i++) {
							out.println("<div class=\"item\">");
							out.println("<button type=\"\" data-toggle=\"modal\" data-target=\"#exampleModal\"><img src=\""
							+ listaC.get(arr[i]).getFrame() + "\"width=\"357\" height=\"198\" title=\""+listaC.get(arr[i]).getNombre()+"\"></button></div>");
							out.println("<input type= \"hidden\" id=\""+listaC.get(arr[i]).getNombre()+ "\" name=\"articuloId\" value=\" "+listaC.get(arr[i]).getUrl()+"\"\">");
						}
						%>
						<a class="arrow__btn" href="#s1">></a>
					</section>
				</div>
			</div>
			<div class="line"></div>

			<h2>Series recomendadas</h2>
			<div class="body2">

				<div class="wrapper2" id="brand">
					<section id="ss1">
						<a class="arrow__btn" href="#ss3"><</a>
						<%
							for (int i = 0; i < 5; i++) {
							out.println("<div class=\"item\">");
							out.println("<button type=\"\" data-toggle=\"modal\" data-target=\"#exampleModal\"><img src=\""
							+ listaS.get(arr2[i]).getFrame() + "\"width=\"357\" height=\"198\" title=\""+listaS.get(arr2[i]).getNombre()+"\"></button></div>");
							out.println("<input type= \"hidden\" id=\""+listaS.get(arr2[i]).getNombre()+ "\" name=\"articuloId\" value=\" "+listaS.get(arr2[i]).getUrl()+"\"\">");
						}
						%>

						<a class="arrow__btn" href="#ss2">></a>
					</section>
					<section id="ss2">
						<a class="arrow__btn" href="#ss1"><</a>
						<%
							for (int i = 5; i < 10; i++) {
							out.println("<div class=\"item\">");
							out.println("<button type=\"\" data-toggle=\"modal\" data-target=\"#exampleModal\"><img src=\""
							+ listaS.get(arr2[i]).getFrame() + "\"width=\"357\" height=\"198\" title=\""+listaS.get(arr2[i]).getNombre()+"\"></button></div>");
							out.println("<input type= \"hidden\" id=\""+listaS.get(arr2[i]).getNombre()+ "\" name=\"articuloId\" value=\" "+listaS.get(arr2[i]).getUrl()+"\"\">");
						}
						%>


						<a class="arrow__btn" href="#ss3">></a>
					</section>
					<section id="ss3">
						<a class="arrow__btn" href="#ss2"><</a>
						<%
							for (int i = 10; i < 15; i++) {
							out.println("<div class=\"item\">");
							out.println("<button type=\"\" data-toggle=\"modal\" data-target=\"#exampleModal\"><img src=\""
							+ listaS.get(arr2[i]).getFrame() + "\"width=\"357\" height=\"198\" title=\""+listaS.get(arr2[i]).getNombre()+"\"></button></div>");
							out.println("<input type= \"hidden\" id=\""+listaS.get(arr2[i]).getNombre()+ "\" name=\"articuloId\" value=\" "+listaS.get(arr2[i]).getUrl()+"\"\">");
						}
						%>

						<a class="arrow__btn" href="#ss1">></a>
					</section>
				</div>
			</div>

		</div>
	</div>
	</div>

	<div class="overlay"></div>

	<!-- jQuery CDN - Slim version (=without AJAX) -->
	<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
		integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
		crossorigin="anonymous"></script>
	<!-- Popper.JS -->
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.0/umd/popper.min.js"
		integrity="sha384-cs/chFZiN24E4KMATLdqdvsezGxaGsi4hLGOzlXwp5UZB1LY//20VyM2taTB4QvJ"
		crossorigin="anonymous"></script>
	<!-- Bootstrap JS -->
	<script
		src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.0/js/bootstrap.min.js"
		integrity="sha384-uefMccjFJAIv6A+rW+L4AHf99KvxDjWSu1z9VI8SKNVmz4sk7buKt/6v9KI65qnm"
		crossorigin="anonymous"></script>
	<!-- jQuery Custom Scroller CDN -->
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/malihu-custom-scrollbar-plugin/3.1.5/jquery.mCustomScrollbar.concat.min.js"></script>

	<script type="text/javascript">
        $(document).ready(function () {
            $("#sidebar").mCustomScrollbar({
                theme: "minimal"
            });

            $('#dismiss, .overlay').on('click', function () {
                $('#sidebar').removeClass('active');
                $('.overlay').removeClass('active');
            });

            $('#sidebarCollapse').on('click', function () {
                $('#sidebar').addClass('active');
                $('.overlay').addClass('active');
                $('.collapse.in').toggleClass('in');
                $('a[aria-expanded=true]').attr('aria-expanded', 'false');
            });
        });
    </script>
	<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog"
		aria-labelledby="exampleModalLabel" aria-hidden="true">
		<div class="modal-dialog modal-lg" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="exampleModalLabel"></h5>
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal-body">
					<div class="embed-responsive embed-responsive-4by3">
						<iframe id="iframeVideo" width="720px" height="1080px" src=""
							frameborder="0" encrypted-media" allowfullscreen></iframe>

					</div>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-secondary"
						data-dismiss="modal">Cerrar</button>

				</div>
			</div>
		</div>
	</div>

	<script type="text/javascript">
      //Url del video a reproducir
      var videoSrc='https://proyectofinalamm.s3.eu-west-3.amazonaws.com/sonido/Always+Somewhere+(2015+Remaster).mp4';
     //BUSCO LA CANCION A REPRODUCIR
      var brandImg = document.querySelectorAll("#brand img");
      var thisSrc;
      for (var i = 0; i < brandImg.length; i++) {
          var ckEdiloop = brandImg[i];
          ckEdiloop.addEventListener("click", function(el){
              thisSrc = this.title;
              var ckEdImg = '<p><img src="'+thisSrc+'" /></p>'; // La forma como las imágenes son envueltas en ckEditor
             
              document.getElementById("exampleModalLabel").innerHTML = thisSrc;
              videoSrc=document.getElementById(thisSrc).value;
              // CKEDITOR.instances['mi_textarea'].insertHtml(ckEdImg) // Añade img al editor
          });
      }
      console.log(thisSrc);
      //Al abrir la ventana modal, le agregué autoplay igual a 1, para que se reproduzca
      //automáticamente, en caso de que no se requiera la autoreproducción, se quita 
      //esa parte "?autoplay=1".
      $('#exampleModal').on('show.bs.modal', function () {  
        var iframe=$('#iframeVideo');
        iframe.attr("src", videoSrc+"?autoplay=1");
      });

      //Al cerrar la ventana modal, solamente reasignamos el video al atributo del iframe
      //y eso ocasiona que se detenga la reproducción del archivo,
      //aunque también podríamos haber dejado el valor src en null. :)
      $('#exampleModal').on('hidden.bs.modal', function (e) {
        src="null";
		
        var iframe=$('#iframeVideo');
        iframe.attr("src", null);

      });
      
      
      
    </script>
	<script type="text/javascript">
  /*  var brandImg = document.querySelectorAll("#brand img");

    for (var i = 0; i < brandImg.length; i++) {
        var ckEdiloop = brandImg[i];
        ckEdiloop.addEventListener("click", function(el){
            var thisSrc = this.src;
            var ckEdImg = '<p><img src="'+thisSrc+'" /></p>'; // La forma como las imágenes son envueltas en ckEditor
            alert('img src es = ' + thisSrc);
            // CKEDITOR.instances['mi_textarea'].insertHtml(ckEdImg) // Añade img al editor
        });
    }*/
    </script>

	<%}%>

</body>
</html>