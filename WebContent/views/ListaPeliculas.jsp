<jsp:include page="header.jsp" />
<div class="row">
	<div class="col-xs-12 col-sm-1"></div>
	<div class="col-xs-12 col-sm-10">
		<h2>
			Cartelera
			<h2>
				<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
				<jsp:useBean id="eDao" class="modelo.PeliculaDao"
					scope="request"></jsp:useBean>
				<table class="table table-striped">
					<thead>
						<tr>
							<th>Id</th>
							<th>Nombre</th>
							<th>Resumen</th>
							<th>Genero</th>
							<th>Idioma</th>
							<th>año</th>
							<th>duracion</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach items="${eDao.list()}" var="item">
							<tr>
								<td><c:out value="${item.id}" /></td>
								<td><c:out value="${item.nombre}" /></td>
								<td><c:out value="${item.resumen}" /></td>
								<td><c:out value="${item.generoBean.descripcion}" /></td>
								<td><c:out value="${item.idioma}" /></td>
								<td><c:out value="${item.ano}" /></td>
                                <td><c:out value="${item.duracionmin}" /></td>
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