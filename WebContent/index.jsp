<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="UTF-8">
<title>Netflix</title>
<!-- Favicon -->
        <link href='https://ww2.ufps.edu.co/assets/img/ico/favicon.ico' rel='Shortcut icon'>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<link rel="stylesheet" href="css/login.css">
<script type="text/javascript" src="js/js.js"></script>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"
	integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u"
	crossorigin="anonymous">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css"
	integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp"
	crossorigin="anonymous">
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"
	integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa"
	crossorigin="anonymous"></script>
</head>
<body>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
	<div class="container">
		<div class="row">
			<div class="col-md-6 col-md-offset-3" id="border">
				<div class="panel panel-login">
					<div class="panel-heading">
						<div class="row">
							<div class="col-xs-12">
								<a href="#" class="active" id="login-form-link">Iniciar
									sesi�n</a>
							</div>
						</div>
						<hr>
					</div>
					<div class="panel-body">
						<div class="row">
							<div class="col-lg-12">
								<form id="login-form" action="loginServlet" method="post">
									<div class="form-group">
										<label for="username">Usuario</label> <input type="text"
											name="username" id="username" tabindex="1"
											class="form-control" placeholder="Usuario" value="">
									</div>
									<div class="form-group">
										<label for="username">Contrase�a</label> <input
											type="password" name="password" id="password" tabindex="2"
											class="form-control" placeholder="Contrase�a">
									</div>

									<div class="form-group">
										<div class="row">
											<div class="col-sm-6 col-sm-offset-3 ">
												<input type="submit" name="login-submit" id="login-submit"
													tabindex="4" class="form-control btn btn-login"
													value="Iniciar sesi�n">
											</div>
										</div>
									</div>
									<c:if test="${entrar=='falso'}">
										<div
											class="form-group  col-md-10  col-xs-10 col-md-offset-1 col-xs-offset-1 alert alert-danger">
											<button type="button" class="close" data-dismiss="alert"
												aria-label="Close">
												<span aria-hidden="true">&times;</span>
											</button>
											<center><strong>�Datos invalidos!</strong></center> 
										</div>
									</c:if>
									<div class="form-group">
										<div class="row">
											<div class="col-lg-12">
												<div class="text-center">
													<a href="" tabindex="5" class="forgot-password">�Has
														olvidado tu contrase�a?</a>
														<a href="views/Registrarse.jsp" tabindex="5" class="forgot-password">Registrarse</a>
												</div>
											</div>
										</div>
									</div>
								</form>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<br>
	<br>
	<footer class="footer">
	<div class="container">
		<p class="text-muted" style="color: #212121; text-align: center;">Programaci�n
			Aplicaciones Web - 2018 � Olimpiadas UFPS-Cristian</p>
	</div>
	</script> </footer>
</body>
</html>