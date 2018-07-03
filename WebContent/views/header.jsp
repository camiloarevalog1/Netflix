<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="IE=edge">

<title>Netflix</title>
<!-- Favicon -->
        <link href='https://upload.wikimedia.org/wikipedia/commons/0/0f/Logo_Netflix.png' rel='Shortcut icon'>
<!-- Bootstrap CSS CDN -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<!-- Our Custom CSS -->

<link rel="stylesheet" href="css/style4.css">
<link rel="stylesheet" href="css/stilos.css">

</head>
<body>

	<div class="wrapper">
		<!-- Sidebar Holder -->
		<nav id="sidebar">
			<div class="sidebar-header">
				<h3>Netflix Ufps</h3>
				<strong>NU</strong>
			</div>

			<ul class="list-unstyled components">
				<li class="active"><a href="#homeSubmenu"
					data-toggle="collapse" aria-expanded="false"> <i
						class="glyphicon glyphicon-home"></i> Peliculas
				</a>
					<ul class="collapse list-unstyled" id="homeSubmenu">
						
						<li><a href="ListaPeliculasVistas.jsp">Peliculas Mas vistas</a></li>

					</ul></li>

				<li><a href="#pageSubmenu" data-toggle="collapse"
					aria-expanded="false"> <i class="glyphicon glyphicon-duplicate"></i>
						Cartelera
				</a>
					<ul class="collapse list-unstyled" id="pageSubmenu">
						
						<li><a href="ListaPeliculas.jsp">Peliculas En Cartelera</a></li>

					</ul></li>

				

				
			</ul>

		</nav>

		<!-- Page Content Holder -->
		<div id="content">

			<nav class="navbar navbar-default"  >
				<div class="container-fluid">

					<div class="navbar-header">
						<button type="button" id="sidebarCollapse"
							class="btn btn-info navbar-btn">
							<i class="glyphicon glyphicon-align-left"></i> <span></span>
						</button>
					</div>
					<div class="collapse navbar-collapse"
						id="bs-example-navbar-collapse-1">
						
						<ul class="nav navbar-nav navbar-right">
						  
							<li><a href="../LoginSesionServlet?sesion">Salir</a></li>
						</ul>
					</div>
				</div>
			</nav>
            <!-- ACA VAN TODOS LOS FORMULARIOS-->
			 <!-- ACA TERMINAN TODOS LOS FORMULARIOS-->
			