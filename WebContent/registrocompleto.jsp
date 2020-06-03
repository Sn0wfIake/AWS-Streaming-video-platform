<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="objetos.*,java.util.* "%>
<html class="fontawesome-i2svg-active fontawesome-i2svg-complete"><head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">


<%
		String ok = (String) request.getAttribute("ok");
	if (!ok.equals("0")) {

		String user = (String) request.getAttribute("user");
	%>
  <title>Inicio Snowmedia</title>

    <!-- Bootstrap CSS CDN -->
    <style type="text/css">svg:not(:root).svg-inline--fa{overflow:visible}.svg-inline--fa{display:inline-block;font-size:inherit;height:1em;overflow:visible;vertical-align:-.125em}.svg-inline--fa.fa-lg{vertical-align:-.225em}.svg-inline--fa.fa-w-1{width:.0625em}.svg-inline--fa.fa-w-2{width:.125em}.svg-inline--fa.fa-w-3{width:.1875em}.svg-inline--fa.fa-w-4{width:.25em}.svg-inline--fa.fa-w-5{width:.3125em}.svg-inline--fa.fa-w-6{width:.375em}.svg-inline--fa.fa-w-7{width:.4375em}.svg-inline--fa.fa-w-8{width:.5em}.svg-inline--fa.fa-w-9{width:.5625em}.svg-inline--fa.fa-w-10{width:.625em}.svg-inline--fa.fa-w-11{width:.6875em}.svg-inline--fa.fa-w-12{width:.75em}.svg-inline--fa.fa-w-13{width:.8125em}.svg-inline--fa.fa-w-14{width:.875em}.svg-inline--fa.fa-w-15{width:.9375em}.svg-inline--fa.fa-w-16{width:1em}.svg-inline--fa.fa-w-17{width:1.0625em}.svg-inline--fa.fa-w-18{width:1.125em}.svg-inline--fa.fa-w-19{width:1.1875em}.svg-inline--fa.fa-w-20{width:1.25em}.svg-inline--fa.fa-pull-left{margin-right:.3em;width:auto}.svg-inline--fa.fa-pull-right{margin-left:.3em;width:auto}.svg-inline--fa.fa-border{height:1.5em}.svg-inline--fa.fa-li{width:2em}.svg-inline--fa.fa-fw{width:1.25em}.fa-layers svg.svg-inline--fa{bottom:0;left:0;margin:auto;position:absolute;right:0;top:0}.fa-layers{display:inline-block;height:1em;position:relative;text-align:center;vertical-align:-.125em;width:1em}.fa-layers svg.svg-inline--fa{-webkit-transform-origin:center center;transform-origin:center center}.fa-layers-counter,.fa-layers-text{display:inline-block;position:absolute;text-align:center}.fa-layers-text{left:50%;top:50%;-webkit-transform:translate(-50%,-50%);transform:translate(-50%,-50%);-webkit-transform-origin:center center;transform-origin:center center}.fa-layers-counter{background-color:#ff253a;border-radius:1em;-webkit-box-sizing:border-box;box-sizing:border-box;color:#fff;height:1.5em;line-height:1;max-width:5em;min-width:1.5em;overflow:hidden;padding:.25em;right:0;text-overflow:ellipsis;top:0;-webkit-transform:scale(.25);transform:scale(.25);-webkit-transform-origin:top right;transform-origin:top right}.fa-layers-bottom-right{bottom:0;right:0;top:auto;-webkit-transform:scale(.25);transform:scale(.25);-webkit-transform-origin:bottom right;transform-origin:bottom right}.fa-layers-bottom-left{bottom:0;left:0;right:auto;top:auto;-webkit-transform:scale(.25);transform:scale(.25);-webkit-transform-origin:bottom left;transform-origin:bottom left}.fa-layers-top-right{right:0;top:0;-webkit-transform:scale(.25);transform:scale(.25);-webkit-transform-origin:top right;transform-origin:top right}.fa-layers-top-left{left:0;right:auto;top:0;-webkit-transform:scale(.25);transform:scale(.25);-webkit-transform-origin:top left;transform-origin:top left}.fa-lg{font-size:1.33333em;line-height:.75em;vertical-align:-.0667em}.fa-xs{font-size:.75em}.fa-sm{font-size:.875em}.fa-1x{font-size:1em}.fa-2x{font-size:2em}.fa-3x{font-size:3em}.fa-4x{font-size:4em}.fa-5x{font-size:5em}.fa-6x{font-size:6em}.fa-7x{font-size:7em}.fa-8x{font-size:8em}.fa-9x{font-size:9em}.fa-10x{font-size:10em}.fa-fw{text-align:center;width:1.25em}.fa-ul{list-style-type:none;margin-left:2.5em;padding-left:0}.fa-ul>li{position:relative}.fa-li{left:-2em;position:absolute;text-align:center;width:2em;line-height:inherit}.fa-border{border:solid .08em #eee;border-radius:.1em;padding:.2em .25em .15em}.fa-pull-left{float:left}.fa-pull-right{float:right}.fa.fa-pull-left,.fab.fa-pull-left,.fal.fa-pull-left,.far.fa-pull-left,.fas.fa-pull-left{margin-right:.3em}.fa.fa-pull-right,.fab.fa-pull-right,.fal.fa-pull-right,.far.fa-pull-right,.fas.fa-pull-right{margin-left:.3em}.fa-spin{-webkit-animation:fa-spin 2s infinite linear;animation:fa-spin 2s infinite linear}.fa-pulse{-webkit-animation:fa-spin 1s infinite steps(8);animation:fa-spin 1s infinite steps(8)}@-webkit-keyframes fa-spin{0%{-webkit-transform:rotate(0);transform:rotate(0)}100%{-webkit-transform:rotate(360deg);transform:rotate(360deg)}}@keyframes fa-spin{0%{-webkit-transform:rotate(0);transform:rotate(0)}100%{-webkit-transform:rotate(360deg);transform:rotate(360deg)}}.fa-rotate-90{-webkit-transform:rotate(90deg);transform:rotate(90deg)}.fa-rotate-180{-webkit-transform:rotate(180deg);transform:rotate(180deg)}.fa-rotate-270{-webkit-transform:rotate(270deg);transform:rotate(270deg)}.fa-flip-horizontal{-webkit-transform:scale(-1,1);transform:scale(-1,1)}.fa-flip-vertical{-webkit-transform:scale(1,-1);transform:scale(1,-1)}.fa-flip-horizontal.fa-flip-vertical{-webkit-transform:scale(-1,-1);transform:scale(-1,-1)}:root .fa-flip-horizontal,:root .fa-flip-vertical,:root .fa-rotate-180,:root .fa-rotate-270,:root .fa-rotate-90{-webkit-filter:none;filter:none}.fa-stack{display:inline-block;height:2em;position:relative;width:2em}.fa-stack-1x,.fa-stack-2x{bottom:0;left:0;margin:auto;position:absolute;right:0;top:0}.svg-inline--fa.fa-stack-1x{height:1em;width:1em}.svg-inline--fa.fa-stack-2x{height:2em;width:2em}.fa-inverse{color:#fff}.sr-only{border:0;clip:rect(0,0,0,0);height:1px;margin:-1px;overflow:hidden;padding:0;position:absolute;width:1px}.sr-only-focusable:active,.sr-only-focusable:focus{clip:auto;height:auto;margin:0;overflow:visible;position:static;width:auto}</style><link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.0/css/bootstrap.min.css" integrity="sha384-9gVQ4dYFwwWSjIDZnLEWnxCjeSWFphJiwGPXr1jddIhOegiu1FwO5qRGvFXOdJZ4" crossorigin="anonymous">
    <!-- Our Custom CSS -->
    <link rel="stylesheet" href="style.css">
    <!-- Scrollbar Custom CSS -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/malihu-custom-scrollbar-plugin/3.1.5/jquery.mCustomScrollbar.min.css">

    <!-- Font Awesome JS -->
    <script defer="" src="https://use.fontawesome.com/releases/v5.0.13/js/solid.js" integrity="sha384-tzzSw1/Vo+0N5UhStP3bvwWPq+uvzCMfrN1fEFe+xBmv1C/AtVX5K0uZtmcHitFZ" crossorigin="anonymous"></script>
    <script defer="" src="https://use.fontawesome.com/releases/v5.0.13/js/fontawesome.js" integrity="sha384-6OIrr52G08NpOFSZdxxz1xdNSndlD4vdcf/q2myIUVO0VsqaGHJsB0RaBE01VTOY" crossorigin="anonymous"></script>

</head>

<body>

    <div class="wrapper">
        <!-- Sidebar  -->
       <nav id="sidebar" class="mCustomScrollbar _mCS_1 mCS-autoHide mCS_no_scrollbar" style="overflow: visible;"><div id="mCSB_1" class="mCustomScrollBox mCS-minimal mCSB_vertical mCSB_outside" style="max-height: none;" tabindex="0"><div id="mCSB_1_container" class="mCSB_container mCS_y_hidden mCS_no_scrollbar_y" style="position:relative; top:0; left:0;" dir="ltr">
   		<div class="sidebar-header">
   			<h3>Panel de usuario</h3>
   		</div>
   		
   		
   		<ul class="list-unstyled components">
   			<p>Bienvenido <%=user %></p>
   			<li class="active">
   				<a href="#homeSubmenu" data-toggle="collapse" aria-expanded="false" class="dropdown-toggle collapsed">Catalogo</a>
   				<ul class="list-unstyled collapse" id="homeSubmenu" style="">
   					<li>
   						<a href="#">Peliculas</a>
   					</li>
   					<li>
   						<a href="#">Series/Videos</a>
   					</li>
   					<li>
   						<a href="#">Musica</a>
   					</li>
   				</ul> 
   			</li>
   			
   			<li>
   				<a href="#">Mi perfil</a>
   			</li>
   			<li>
   				<a href="#pageSubmenu" data-toggle="collapse" aria-expanded="false" class="dropdown-toggle">Lista de favoritos</a>
   				<ul class="collapse list-unstyled" id="pageSubmenu">
   					<li>
   						<a href="#">Peliculas favoritas </a>
   					</li>
   					<li>
   						<a href="#">Series/Videos favoritos</a>
   					</li>
   					<li>
   						<a href="#">Musica favorita</a>
   					</li>
   				</ul> 
   			</li>
   		
   		</ul>
   		
   		<ul class="list-unstyled CTAs">
   			
   		</ul>
   	</div></div><div id="mCSB_1_scrollbar_vertical" class="mCSB_scrollTools mCSB_1_scrollbar mCS-minimal mCSB_scrollTools_vertical" style="display: none;"><div class="mCSB_draggerContainer"><div id="mCSB_1_dragger_vertical" class="mCSB_dragger" style="position: absolute; min-height: 50px; height: 0px; top: 0px;"><div class="mCSB_dragger_bar" style="line-height: 50px;"></div></div><div class="mCSB_draggerRail"></div></div></div></nav>

        <!-- Page Content  -->
        <div id="content">

            <nav class="navbar navbar-expand-lg navbar-light bg-light">
                <div class="container-fluid">

                    <button type="button" id="sidebarCollapse" class="btn btn-info">
                        <svg class="svg-inline--fa fa-align-left fa-w-14" aria-hidden="true" data-prefix="fas" data-icon="align-left" role="img" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 448 512" data-fa-i2svg=""><path fill="currentColor" d="M288 44v40c0 8.837-7.163 16-16 16H16c-8.837 0-16-7.163-16-16V44c0-8.837 7.163-16 16-16h256c8.837 0 16 7.163 16 16zM0 172v40c0 8.837 7.163 16 16 16h416c8.837 0 16-7.163 16-16v-40c0-8.837-7.163-16-16-16H16c-8.837 0-16 7.163-16 16zm16 312h416c8.837 0 16-7.163 16-16v-40c0-8.837-7.163-16-16-16H16c-8.837 0-16 7.163-16 16v40c0 8.837 7.163 16 16 16zm256-200H16c-8.837 0-16 7.163-16 16v40c0 8.837 7.163 16 16 16h256c8.837 0 16-7.163 16-16v-40c0-8.837-7.163-16-16-16z"></path></svg><!-- <i class="fas fa-align-left"></i> -->
                        
                    </button>
                    <button class="btn btn-dark d-inline-block d-lg-none ml-auto" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                        <svg class="svg-inline--fa fa-align-justify fa-w-14" aria-hidden="true" data-prefix="fas" data-icon="align-justify" role="img" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 448 512" data-fa-i2svg=""><path fill="currentColor" d="M0 84V44c0-8.837 7.163-16 16-16h416c8.837 0 16 7.163 16 16v40c0 8.837-7.163 16-16 16H16c-8.837 0-16-7.163-16-16zm16 144h416c8.837 0 16-7.163 16-16v-40c0-8.837-7.163-16-16-16H16c-8.837 0-16 7.163-16 16v40c0 8.837 7.163 16 16 16zm0 256h416c8.837 0 16-7.163 16-16v-40c0-8.837-7.163-16-16-16H16c-8.837 0-16 7.163-16 16v40c0 8.837 7.163 16 16 16zm0-128h416c8.837 0 16-7.163 16-16v-40c0-8.837-7.163-16-16-16H16c-8.837 0-16 7.163-16 16v40c0 8.837 7.163 16 16 16z"></path></svg><!-- <i class="fas fa-align-justify"></i> -->
                    </button>

                    <div class="collapse navbar-collapse" id="navbarSupportedContent">
                        <ul class="nav navbar-nav ml-auto">
                            <li class="nav-item active">
                                <a class="nav-link" href="#">Inicio</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="#">Mi perfil </a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="#">Catalogo completo</a>
                            </li>
                            
                        </ul>
                    </div>
                </div>
            </nav>

            <h2>Bienvenido usuiario $nombreusuario</h2>
            <p>Lista de series recomendadas, entre todas las de la bd</p>
         
            <div class="line"></div>

            <h2>Series recomendadas </h2>

 <div class="body2">

<div class="wrapper2">
  <section id="s1">
    <a class="arrow__btn" href="#s3"><</a>
    <div class="item">
    <img src="https://occ-0-1567-1123.1.nflxso.net/dnm/api/v5/rendition/412e4119fb212e3ca9f1add558e2e7fed42f8fb4/AAAABRvngexxF8H1-OzRWFSj6ddD-aB93tTBP9kMNz3cIVfuIfLEP1E_0saiNAwOtrM6xSOXvoiSCMsihWSkW0dq808-R7_lBnr6WHbjkKBX6I3sD0uCcS8kSPbRjEDdG8CeeVXEAEV6spQ.webp">
  </div>
    <div class="item">
    <img src="https://occ-0-243-299.1.nflxso.net/dnm/api/v5/rendition/412e4119fb212e3ca9f1add558e2e7fed42f8fb4/AAAABZEK-7pZ1H5FD4cTyUb9qB_KeyJGz5p-kfPhCFv4GU_3mbdm8Xfsy4IBchlG9PFNdGff8cBNPaeMra72VFnot41nt0y3e8RLgaVwwh3UvyM2H2_MkmadWbQUeGuf811K7-cxJJh7gA.jpg">
  </div>
    <div class="item">
    <img src="https://occ-0-243-299.1.nflxso.net/dnm/api/v5/rendition/412e4119fb212e3ca9f1add558e2e7fed42f8fb4/AAAABQCoK53qihwVPLRxPEDX98nyYpGbxgi5cc0ZOM4iHQu7KQvtgNyaNM5PsgI0vy5g3rLPZdjGCFr1EggrCPXpL77p2H08jV0tNEmIfs_e8KUfvBJ6Ay5nM4UM1dl-58xA6t1swmautOM.webp">
  </div>
    <div class="item">
    <img src="https://occ-0-243-299.1.nflxso.net/dnm/api/v5/rendition/412e4119fb212e3ca9f1add558e2e7fed42f8fb4/AAAABdYtAqj8CyaJTWq5taD8Ro_UgwH3nne9QpFGVps-2J3IG-leqrfqXFii4jzZn48nPYTkrlwKQEV0R7_cEKlYBPRzdKqNODc-Oz26IL3LlLgFboXibIWXwxzeYxzuqn0I9TpARjeByw.jpg">
  </div>
    <div class="item">
    <img src="https://occ-0-243-299.1.nflxso.net/dnm/api/v5/rendition/412e4119fb212e3ca9f1add558e2e7fed42f8fb4/AAAABbcCX42tsqGbBvO2y9CQv5-7QvYbCfoHtXsuc6NPCtZaKa4l4fBX3XWvUwG9F2A3CTsNpHVmulxBbdXKwK8Q6xGjejd9FoadGkZ7CnGrSl601TOQjzSHJ23NuIPC8j0QMGORL4uRIA.jpg">
  </div>
    <a class="arrow__btn" href="#s2">></a>
  </section>
  <section id="s2">
    <a class="arrow__btn" href="#s1"><</a>
    <div class="item">
    <img src="https://occ-0-243-299.1.nflxso.net/dnm/api/v5/rendition/412e4119fb212e3ca9f1add558e2e7fed42f8fb4/AAAABVopDZ5Fy9_fk_HO5WxHTXKKjKhtWFupbSjuvPwfLK_vytzon4EwRUdGgYJ34JwPxOTK_NkV3aXfkULMB0Dcct-FyfqzH-X44VXuRMp4QeBHlvKwWeZFpZlGdItPzmmg4scmwhG7SQ.jpg">
  </div>
    <div class="item">
    <img src="https://occ-0-243-299.1.nflxso.net/dnm/api/v5/rendition/412e4119fb212e3ca9f1add558e2e7fed42f8fb4/AAAABTOj1-116yVcgKWMU2dI3GFR4x0fSkiGsqtLLeLUxRR7STaksjAqBTrYlTfrB8nIGnGvXksi0ewXAhVGg6-pLxpFOIfcpjK-pf8D5xehFZo5a6vJbo4L0AGbrzglbyUoq255QBJgRQ.jpg">
  </div>
    <div class="item">
    <img src="https://occ-0-243-299.1.nflxso.net/dnm/api/v5/rendition/a76057bcfd003711a76fb3985b1f2cf74beee3b8/AAAABd3IBDpxbRcHXvRMFCZeKa2aHLU1P4SJtrACMS9om3yhLjqPlvNlmR_fypPxjtbsbnKaC4JZhPSpDG4r_kdxSHHAltWguMcCB-1Y1OShr2zWfUv7Whf_39fNH5ZJ3_0gxQrs0akmQjQz44_LT7jXH5LMZ7iMBAzac5IEj4m7Fn_5OWEGYnVsDsKG-QTommDooULMDF9bEw.jpg">
  </div>
    <div class="item">
    <img src="https://occ-0-243-299.1.nflxso.net/dnm/api/v5/rendition/a76057bcfd003711a76fb3985b1f2cf74beee3b8/AAAABXSd7bhDddcwkq9XpksoQFCHVx29Sxl_h4hb2n3F2GIt32a4XWcOnctQfgnT5qdolv8UML6_xNB5CJ89h56wueb13mYmEBr0sx5e9iLPdtVcOQAOmKXKWHHXwFvJuCUwuNnL3s8eAQwqLXPVMHMEsujM684rUGrZNF2btN2GRy5-RyEslsxZO93V2Q_H2bWs8A8oayt1h5M.webp">
  </div>
    <div class="item">
    <img src="https://occ-0-243-299.1.nflxso.net/dnm/api/v5/rendition/a76057bcfd003711a76fb3985b1f2cf74beee3b8/AAAABbXWODpAWqVXcmmjMA7K-2mPkQpvwCLfSdeyhVXzR8A3MSpdSEnnjf4HEJJTYC-TnktU6njTUGAxmzWEYCaJbk4v_ZeL-7QGzmkvYBjg_N-evr2XmcX-Fanoyvu_nimFP4iigPe4O3Vr_WcgplhwkDrJwPUJa84wRLrNAx3TufN5V7cWRP4indqu5HQahvgFEqfL9zjp4g.jpg">
  </div>
    <a class="arrow__btn" href="#s3">></a>
  </section>
  <section id="s3">
    <a class="arrow__btn" href="#s2"><</a>
    <div class="item">
    <img src="https://occ-0-243-299.1.nflxso.net/dnm/api/v5/rendition/412e4119fb212e3ca9f1add558e2e7fed42f8fb4/AAAABRr4YxdaABuAuH_3FmSQZn7BCvLp-UUPsXE9MiYpvFP3CSUHV2zOew5oVqKqqdaOd3tbFVS0Uf67uIs7_eZydlCghg4nK0nMatRpPImABwTOhnNzCLCxdKrua7pPIcPCZqBYTeAO5g.jpg">
  </div>
    <div class="item">
    <img src="https://occ-0-243-299.1.nflxso.net/dnm/api/v5/rendition/412e4119fb212e3ca9f1add558e2e7fed42f8fb4/AAAABTyWK1MKaw8GcObtz47R2Tj7wkLJ7qQu9tk6TVpcoyxpzD4B-zZ569bQ5vGrREBL-MWFkGilXUwy7tCDaj2XOGkUB4RsbbFAmp9NgSr6lygMpUGNHSlyfrFbUORsRkrxSIoh_ggOvg.jpg">
  </div>
    <div class="item">
    <img src="https://occ-0-243-299.1.nflxso.net/dnm/api/v5/rendition/a76057bcfd003711a76fb3985b1f2cf74beee3b8/AAAABY7NwkWEJIfXsn6t3Li4bGSCQ1nEErPisI5ZZtXlC-_VRBZOUrhWK5X3vt3t6SR_cpgVhCwxgQqFFDJhk62Kk8hawOnYGZMr0LKeLczMFV2zalCFjkcdLksvT4HB2LEi6LFyruyk3Uu0LmNGsHfC2A8Bly60smr_3sDbz4RruXcklPOG1qYq9wUVu3zfaiwNvqmG4b8aFA.jpg">
  </div>
    <div class="item">
    <img src="https://occ-0-243-299.1.nflxso.net/dnm/api/v5/rendition/a76057bcfd003711a76fb3985b1f2cf74beee3b8/AAAABemXHOga9feFnOux6I2YyACBD94wvM7N3vcTGIfMpQ_BcaXeoeM9XyzdVdamKtxt0SHXZfvsl6czcp3E48tXMLtHBxuQsh1BjHtPGgJDZ81je_FjItINiqzLtir0A30s_e4KR8G3d7AYAPDjZVOY97bNpzNqtkcHcGp7fGnJByVCps1uLfG9U9tK3Ma1A_3JbRt0NiT2_Q.jpg">
  </div>
    <div class="item">
    <img src="https://occ-0-243-299.1.nflxso.net/dnm/api/v5/rendition/a76057bcfd003711a76fb3985b1f2cf74beee3b8/AAAABVxuRB932hvre-XP0gh6ar5ztoR3Oe3QjKHkyvcDnRak2MKXOrx5H7mFQSvggefMFOppwEs7ZCCpiqrJ_CYGvtvYB9NpU4SWUtNO6uV2u-DTID267AcHjHcGvGBQJ1ufddDkxcGOZyi5MlOQ5QUmBun4652FbYUnib3zMYQDgcna_Pvz8y_HO5fbokxezrRR1JZAAiqFSQ.jpg">
  </div>
    <a class="arrow__btn" href="#s1">></a>
  </section>
</div>
</div>



            <div class="line"></div>

            <h2>Peliculas recomendadas</h2>
             <div class="body2">

<div class="wrapper2">
  <section id="ss1">
    <a class="arrow__btn" href="#ss3"><</a>
    <div class="item">
    <img src="https://occ-0-1567-1123.1.nflxso.net/dnm/api/v5/rendition/412e4119fb212e3ca9f1add558e2e7fed42f8fb4/AAAABRvngexxF8H1-OzRWFSj6ddD-aB93tTBP9kMNz3cIVfuIfLEP1E_0saiNAwOtrM6xSOXvoiSCMsihWSkW0dq808-R7_lBnr6WHbjkKBX6I3sD0uCcS8kSPbRjEDdG8CeeVXEAEV6spQ.webp">
  </div>
    <div class="item">
    <img src="https://occ-0-243-299.1.nflxso.net/dnm/api/v5/rendition/412e4119fb212e3ca9f1add558e2e7fed42f8fb4/AAAABZEK-7pZ1H5FD4cTyUb9qB_KeyJGz5p-kfPhCFv4GU_3mbdm8Xfsy4IBchlG9PFNdGff8cBNPaeMra72VFnot41nt0y3e8RLgaVwwh3UvyM2H2_MkmadWbQUeGuf811K7-cxJJh7gA.jpg">
  </div>
    <div class="item">
    <img src="https://occ-0-243-299.1.nflxso.net/dnm/api/v5/rendition/412e4119fb212e3ca9f1add558e2e7fed42f8fb4/AAAABQCoK53qihwVPLRxPEDX98nyYpGbxgi5cc0ZOM4iHQu7KQvtgNyaNM5PsgI0vy5g3rLPZdjGCFr1EggrCPXpL77p2H08jV0tNEmIfs_e8KUfvBJ6Ay5nM4UM1dl-58xA6t1swmautOM.webp">
  </div>
    <div class="item">
    <img src="https://occ-0-243-299.1.nflxso.net/dnm/api/v5/rendition/412e4119fb212e3ca9f1add558e2e7fed42f8fb4/AAAABdYtAqj8CyaJTWq5taD8Ro_UgwH3nne9QpFGVps-2J3IG-leqrfqXFii4jzZn48nPYTkrlwKQEV0R7_cEKlYBPRzdKqNODc-Oz26IL3LlLgFboXibIWXwxzeYxzuqn0I9TpARjeByw.jpg">
  </div>
    <div class="item">
    <img src="https://occ-0-243-299.1.nflxso.net/dnm/api/v5/rendition/412e4119fb212e3ca9f1add558e2e7fed42f8fb4/AAAABbcCX42tsqGbBvO2y9CQv5-7QvYbCfoHtXsuc6NPCtZaKa4l4fBX3XWvUwG9F2A3CTsNpHVmulxBbdXKwK8Q6xGjejd9FoadGkZ7CnGrSl601TOQjzSHJ23NuIPC8j0QMGORL4uRIA.jpg">
  </div>
    <a class="arrow__btn" href="#ss2">></a>
  </section>
  <section id="ss2">
    <a class="arrow__btn" href="#ss1"><</a>
    <div class="item">
    <img src="https://occ-0-243-299.1.nflxso.net/dnm/api/v5/rendition/412e4119fb212e3ca9f1add558e2e7fed42f8fb4/AAAABVopDZ5Fy9_fk_HO5WxHTXKKjKhtWFupbSjuvPwfLK_vytzon4EwRUdGgYJ34JwPxOTK_NkV3aXfkULMB0Dcct-FyfqzH-X44VXuRMp4QeBHlvKwWeZFpZlGdItPzmmg4scmwhG7SQ.jpg">
  </div>
    <div class="item">
    <img src="https://occ-0-243-299.1.nflxso.net/dnm/api/v5/rendition/412e4119fb212e3ca9f1add558e2e7fed42f8fb4/AAAABTOj1-116yVcgKWMU2dI3GFR4x0fSkiGsqtLLeLUxRR7STaksjAqBTrYlTfrB8nIGnGvXksi0ewXAhVGg6-pLxpFOIfcpjK-pf8D5xehFZo5a6vJbo4L0AGbrzglbyUoq255QBJgRQ.jpg">
  </div>
    <div class="item">
    <img src="https://occ-0-243-299.1.nflxso.net/dnm/api/v5/rendition/a76057bcfd003711a76fb3985b1f2cf74beee3b8/AAAABd3IBDpxbRcHXvRMFCZeKa2aHLU1P4SJtrACMS9om3yhLjqPlvNlmR_fypPxjtbsbnKaC4JZhPSpDG4r_kdxSHHAltWguMcCB-1Y1OShr2zWfUv7Whf_39fNH5ZJ3_0gxQrs0akmQjQz44_LT7jXH5LMZ7iMBAzac5IEj4m7Fn_5OWEGYnVsDsKG-QTommDooULMDF9bEw.jpg">
  </div>
    <div class="item">
    <img src="https://occ-0-243-299.1.nflxso.net/dnm/api/v5/rendition/a76057bcfd003711a76fb3985b1f2cf74beee3b8/AAAABXSd7bhDddcwkq9XpksoQFCHVx29Sxl_h4hb2n3F2GIt32a4XWcOnctQfgnT5qdolv8UML6_xNB5CJ89h56wueb13mYmEBr0sx5e9iLPdtVcOQAOmKXKWHHXwFvJuCUwuNnL3s8eAQwqLXPVMHMEsujM684rUGrZNF2btN2GRy5-RyEslsxZO93V2Q_H2bWs8A8oayt1h5M.webp">
  </div>
    <div class="item">
    <img src="https://occ-0-243-299.1.nflxso.net/dnm/api/v5/rendition/a76057bcfd003711a76fb3985b1f2cf74beee3b8/AAAABbXWODpAWqVXcmmjMA7K-2mPkQpvwCLfSdeyhVXzR8A3MSpdSEnnjf4HEJJTYC-TnktU6njTUGAxmzWEYCaJbk4v_ZeL-7QGzmkvYBjg_N-evr2XmcX-Fanoyvu_nimFP4iigPe4O3Vr_WcgplhwkDrJwPUJa84wRLrNAx3TufN5V7cWRP4indqu5HQahvgFEqfL9zjp4g.jpg">
  </div>
    <a class="arrow__btn" href="#ss3">›</a>
  </section>
  <section id="ss3">
    <a class="arrow__btn" href="#ss2">‹</a>
    <div class="item">
    <img src="https://occ-0-243-299.1.nflxso.net/dnm/api/v5/rendition/412e4119fb212e3ca9f1add558e2e7fed42f8fb4/AAAABRr4YxdaABuAuH_3FmSQZn7BCvLp-UUPsXE9MiYpvFP3CSUHV2zOew5oVqKqqdaOd3tbFVS0Uf67uIs7_eZydlCghg4nK0nMatRpPImABwTOhnNzCLCxdKrua7pPIcPCZqBYTeAO5g.jpg">
  </div>
    <div class="item">
    <img src="https://occ-0-243-299.1.nflxso.net/dnm/api/v5/rendition/412e4119fb212e3ca9f1add558e2e7fed42f8fb4/AAAABTyWK1MKaw8GcObtz47R2Tj7wkLJ7qQu9tk6TVpcoyxpzD4B-zZ569bQ5vGrREBL-MWFkGilXUwy7tCDaj2XOGkUB4RsbbFAmp9NgSr6lygMpUGNHSlyfrFbUORsRkrxSIoh_ggOvg.jpg">
  </div>
    <div class="item">
    <img src="https://occ-0-243-299.1.nflxso.net/dnm/api/v5/rendition/a76057bcfd003711a76fb3985b1f2cf74beee3b8/AAAABY7NwkWEJIfXsn6t3Li4bGSCQ1nEErPisI5ZZtXlC-_VRBZOUrhWK5X3vt3t6SR_cpgVhCwxgQqFFDJhk62Kk8hawOnYGZMr0LKeLczMFV2zalCFjkcdLksvT4HB2LEi6LFyruyk3Uu0LmNGsHfC2A8Bly60smr_3sDbz4RruXcklPOG1qYq9wUVu3zfaiwNvqmG4b8aFA.jpg">
  </div>
    <div class="item">
    <img src="https://occ-0-243-299.1.nflxso.net/dnm/api/v5/rendition/a76057bcfd003711a76fb3985b1f2cf74beee3b8/AAAABemXHOga9feFnOux6I2YyACBD94wvM7N3vcTGIfMpQ_BcaXeoeM9XyzdVdamKtxt0SHXZfvsl6czcp3E48tXMLtHBxuQsh1BjHtPGgJDZ81je_FjItINiqzLtir0A30s_e4KR8G3d7AYAPDjZVOY97bNpzNqtkcHcGp7fGnJByVCps1uLfG9U9tK3Ma1A_3JbRt0NiT2_Q.jpg">
  </div>
    <div class="item">
    <img src="https://occ-0-243-299.1.nflxso.net/dnm/api/v5/rendition/a76057bcfd003711a76fb3985b1f2cf74beee3b8/AAAABVxuRB932hvre-XP0gh6ar5ztoR3Oe3QjKHkyvcDnRak2MKXOrx5H7mFQSvggefMFOppwEs7ZCCpiqrJ_CYGvtvYB9NpU4SWUtNO6uV2u-DTID267AcHjHcGvGBQJ1ufddDkxcGOZyi5MlOQ5QUmBun4652FbYUnib3zMYQDgcna_Pvz8y_HO5fbokxezrRR1JZAAiqFSQ.jpg">
  </div>
    <a class="arrow__btn" href="#ss1">›</a>
  </section>
</div>
</div>
            
</div>  </div>
    </div>

    <div class="overlay"></div>

    <!-- jQuery CDN - Slim version (=without AJAX) -->
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <!-- Popper.JS -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.0/umd/popper.min.js" integrity="sha384-cs/chFZiN24E4KMATLdqdvsezGxaGsi4hLGOzlXwp5UZB1LY//20VyM2taTB4QvJ" crossorigin="anonymous"></script>
    <!-- Bootstrap JS -->
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.0/js/bootstrap.min.js" integrity="sha384-uefMccjFJAIv6A+rW+L4AHf99KvxDjWSu1z9VI8SKNVmz4sk7buKt/6v9KI65qnm" crossorigin="anonymous"></script>
    <!-- jQuery Custom Scroller CDN -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/malihu-custom-scrollbar-plugin/3.1.5/jquery.mCustomScrollbar.concat.min.js"></script>

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







	<%
		} else {
		out.println("<h1>Operacion fallida</h1>");
		out.println("<p>");
		out.println("<a href=\"index.html\">HOME</a>");
	}
	%>
	
</body>
</html>