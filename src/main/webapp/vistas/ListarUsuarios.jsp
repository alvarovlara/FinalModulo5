<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="java.util.List" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>



<html>
<head>
<title>Listar Usuario</title>
<script src="https://cdn.tailwindcss.com"></script>

<style>
table {
	border-collapse: collapse;
	width: 100%;
}

th, td {
	text-align: left;
	padding: 8px;
}

tr:nth-child(even) {
	background-color: #f2f2f2
}

th {
	background-color: #4CAF50;
	color: white;
}
</style>

<script>
function confirmarEliminacion(id) {
    if (confirm("¿Estás seguro de que deseas eliminar este usuario?")) {
        window.location.href = "<%= request.getContextPath() %>/EliminarUsuarioSRVL?id=" + id;
    }
}
</script>

</head>
<body class="container mx-auto mt-3 bg-gray-200">

	<!-- nav -->
	<jsp:include page="layout/nav.jsp"></jsp:include>

	<!-- Main -->
	<div class="bg-gray-100 border-black shadow-md">

		<h1 class="text-3xl text-gray-400 text-center py-3">Usuario</h1>
		<table class="table-auto">
			<tr>
				<th class="px-4 py-2">ID</th>
				<th class="px-4 py-2">Usuario</th>
				<th class="px-4 py-2">Tipo</th>
				
<c:if test="${sessionScope.tipo eq 'Administrativo'}">						
				
				<th class="px-4 py-2">Password</th>
							
				<th class="px-4 py-2 text-center">Opciones</th>
				
</c:if>					
				
			</tr>

			<c:forEach var="usuario" items="${listado}">
				<tr>
					<td class="border px-4 py-2">${usuario.id}</td>
					<td class="border px-4 py-2">${usuario.usuario}</td>
					
					<td class="border px-4 py-2">
						
						<c:if test="${usuario.tipo == 'Cliente'}">
						    Cliente
						</c:if>
						<c:if test="${usuario.tipo == 'Administrativo'}">
						    Administrativo
						</c:if>
						<c:if test="${usuario.tipo == 'Profesional'}">
						    Profesional
						</c:if>


					</td>
		
<c:if test="${sessionScope.tipo eq 'Administrativo'}">		
					
					<td class="border px-4 py-2">${usuario.password}</td>
					
					<td class="border px-4 py-2 text-center">
			<a class="rounded-lg bg-teal-400 text-white font-thin px-3 pb-1 hover:bg-teal-600" href="<%= request.getContextPath() %>/DetalleUsuarioSRVL?id=${usuario.id}">Ver detalle</a>
					<a class="ml-3 rounded-lg bg-blue-400 text-white font-thin px-3 pb-1 hover:bg-blue-600" href="<%= request.getContextPath() %>/EditarUsuarioSRVL?id=${usuario.id}">Editar</a>
					<a class="ml-3 rounded-lg bg-orange-400 text-white font-thin px-3 pb-1 hover:bg-orange-600" href="#" onclick="confirmarEliminacion(${usuario.id});">Eliminar</a>
					</td>

					
</c:if>	
					
				</tr>
			</c:forEach>
		</table>

		<!-- Scripts -->

		<!-- Footer -->
		<jsp:include page="layout/footer.jsp"></jsp:include>
	</body>
</html>
