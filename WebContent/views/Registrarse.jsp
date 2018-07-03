<jsp:include page="header2.jsp" />
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<div class="row">
	<div class="col-xs-12 col-sm-2"></div>
	<div class="col-xs-12 col-sm-8 " id="border">
		<h2>Registrarse</h2>
		<form action="../RegistrarServlet" method="post">
			<input type="hidden" name="accion" value="1">
			
			<div class="form-group col-xs-12 col-sm-6">
				<label for="1nombre">Usuario:</label> <input type="text"
					class="form-control" id="nombre" placeholder="Nombre Deporte"
					name="nombre">
					<label for="email">Email:</label> <input type="text"
					class="form-control" id="correo" placeholder="email"
					name="correo">
					
					<label for="clave">Clave:</label> <input type="text"
					class="form-control" id="clave" placeholder="clave"
					name="clave">
					<label for="fecha">Fecha </label> <input
					class="form-control" type="date" name="fecha" id="fecha">
			</div>
			
			
			<div class="form-group col-xs-12 col-sm-12">
				<button type="submit" class="btn btn-success" id="button">Registrar</button>
			</div>
		</form>
	</div>
	<div class="col-xs-12 col-sm-2"></div>
</div>
	<jsp:include page="footer.jsp" />