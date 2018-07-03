<jsp:include page="header.jsp" />
<div class="row">
	<div class="col-xs-12 col-sm-1"></div>
	<div class="col-xs-12 col-sm-10">
		<h2>
			Peliculas Vistas
			<h2>
				<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
				<jsp:useBean id="eDao" class="modelo.UsuarioPeliculaDao"
					scope="request"></jsp:useBean>
				<table class="table table-striped">
					<thead>
						<tr>
							<th>Id</th>
							<th>Pelicula</th>
							<th>Usuario</th>
							<th>Fecha</th>
							
						</tr>
					</thead>
					<tbody>
						<c:forEach items="${eDao.list()}" var="item">
							<tr>
								<td><c:out value="${item.id}" /></td>
								<td><c:out value="${item.peliculaBean.nombre}" /></td>
								<td><c:out value="${item.usuarioBean.usuario}" /></td>
								<td><c:out value="${item.fecha}" /></td>
								
								<td><a class="btn btn-danger"
									href="../PartidoServlet?id=${item.id}&accion=4"><span
										class="glyphicon glyphicon-triangle-right"></span></a></td>
								

							</tr>
						</c:forEach>
					</tbody>
				</table>
			
	</div>
	<div class="col-xs-12 col-sm-1"></div>
</div>
<jsp:include page="footer.jsp" />