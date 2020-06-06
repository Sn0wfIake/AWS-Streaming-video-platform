<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<%@ page import="java.util.*, objetos.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Galeria de contenido</title>
</head>
<body>
	<%
	String requerido= request.getAttribute("requerido").toString();
	ArrayList<contenidos> listaC = (ArrayList<contenidos>) request.getAttribute("listaC");
HttpSession miSesion = request.getSession();
String user = (String) session.getAttribute("name");
int arr= listaC.size();

%>
	<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">

    

    <!-- Bootstrap CSS CDN -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.0/css/bootstrap.min.css" integrity="sha384-9gVQ4dYFwwWSjIDZnLEWnxCjeSWFphJiwGPXr1jddIhOegiu1FwO5qRGvFXOdJZ4" crossorigin="anonymous">
    <!-- Our Custom CSS -->
    <link rel="stylesheet" href="css/galeria.css">

    <!-- Font Awesome JS -->
    <script defer src="https://use.fontawesome.com/releases/v5.0.13/js/solid.js" integrity="sha384-tzzSw1/Vo+0N5UhStP3bvwWPq+uvzCMfrN1fEFe+xBmv1C/AtVX5K0uZtmcHitFZ" crossorigin="anonymous"></script>
    <script defer src="https://use.fontawesome.com/releases/v5.0.13/js/fontawesome.js" integrity="sha384-6OIrr52G08NpOFSZdxxz1xdNSndlD4vdcf/q2myIUVO0VsqaGHJsB0RaBE01VTOY" crossorigin="anonymous"></script>

</head>

<body>

    <div class="wrapper">
        <!-- Sidebar Holder -->
        <nav id="sidebar">
            <div class="sidebar-header">
                <h3>Panel de usuario</h3>
            </div>

            <ul class="list-unstyled components">
                <p>Bienvenido <%=user%></p>
                <li class="active">
                    <a href="#homeSubmenu" data-toggle="collapse" aria-expanded="false" class="dropdown-toggle">Catalogo</a>
                    <ul class="collapse list-unstyled" id="homeSubmenu">
                    <%if(requerido.equals("musica")){
                    	%>
                    	 <li>
                            <a href="controladorproyecto?action=3&demandado=peliculas">Peliculas</a>
                        </li>
                        <li>
                            <a href="controladorproyecto?action=3&demandado=series">Series</a>
                        </li>

                    <%}else if(requerido.equals("peliculas")){
                    	%>
                    	 <li>
                            <a href="controladorproyecto?action=3&demandado=series">Series</a>
                        </li>
                        <li>
                            <a href="controladorproyecto?action=3&demandado=musica">Musica</a>
                        </li>

                    <%}else if(requerido.equals("series")){
                    	%>
                    	 <li>
                            <a href="controladorproyecto?action=3&demandado=musica">Musica</a>
                        </li>
                        <li>
                            <a href="controladorproyecto?action=3&demandado=peliculas">Peliculas</a>
                        </li>

                    <%}%>
                       
                    </ul>
                </li>
                <li>
                    <a href="#">Mi perfil</a>
                    <a href="#pageSubmenu" data-toggle="collapse" aria-expanded="false" class="dropdown-toggle">Lista de favoritos</a>
                    <ul class="collapse list-unstyled" id="pageSubmenu">
                        <li>
                            <a href="#">Page 1</a>
                        </li>
                        <li>
                            <a href="#">Page 2</a>
                        </li>
                        <li>
                            <a href="#">Page 3</a>
                        </li>
                    </ul>
                </li>
                
                
            </ul>

           
        </nav>

        <!-- Page Content Holder -->
        <div id="content">

            <nav class="navbar navbar-expand-lg navbar-light bg-light">
                <div class="container-fluid">

               
                    <button class="btn btn-dark d-inline-block d-lg-none ml-auto" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                        <i class="fas fa-align-justify"></i>
                    </button>

                  <div class="collapse navbar-collapse" id="navbarSupportedContent">
						<ul class="nav navbar-nav ml-auto">
							<li class="nav-item active"><a class="nav-link" href="controladorproyecto?action=4">Inicio</a>
							
							</li>
							<li class="nav-item"><a class="nav-link"
								href="controladorproyecto?action=3&demandado=musica">Mi
									perfil </a></li>
							<li class="nav-item"><a class="nav-link"
								href="index.jsp?cerrar=true">Cerrar sesion</a></li>

						</ul>
					</div>
                </div>
            </nav>
            
            <h2>Catalogo: <%=requerido %></h2>
            <div id="brand" class="row">
          <%
							for (int i = 0; i < arr; i++) {
							out.println("<div class=\"expositor\">");
							out.println("<button type=\"\" data-toggle=\"modal\" data-target=\"#exampleModal\"><img src=\""
							+ listaC.get(i).getFrame() + "\"width=\"357\" height=\"198\" title=\""+listaC.get(i).getNombre()+"\"></button><br>"+listaC.get(i).getNombre()+"</div>");
							out.println("<input type= \"hidden\" id=\""+listaC.get(i).getNombre()+ "\" name=\"articuloId\" value=\" "+listaC.get(i).getUrl()+"\"\">");
						}
						%>
						</div>
            <div class="line"></div>
</div>
         
    </div>
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
   <!-- 	<div class="overlay"></div> -->

	
	

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
	<script type="text/javascript">
      //Url del video a reproducir
      var videoSrc='';
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

 
      $('#exampleModal').on('hidden.bs.modal', function (e) {
        src="null";
		
        var iframe=$('#iframeVideo');
        iframe.attr("src", null);

      });
      
      
      
    </script>
	
</body>

</html>

</body>
</html>