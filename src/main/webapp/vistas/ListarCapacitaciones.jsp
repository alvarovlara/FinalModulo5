<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.List" %>


<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
    <title>Listar Capacitaciones</title>
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
    if (confirm("¿Estás seguro de que deseas eliminar esta capacitacion?")) {
        window.location.href = "<%= request.getContextPath() %>/EliminarCapacitacionSRVL?id=" + id;
    }
}
</script>
     
</head>
<body class="container mx-auto mt-3 bg-gray-200">

<!-- nav -->
<jsp:include page="layout/nav.jsp"></jsp:include>

<!-- Main -->
<div class="bg-gray-100 border-black shadow-md">

    <h1 class="text-3xl text-gray-400 text-center py-3">Capacitaciones</h1>
    <table class="table-auto">
        <tr>
            <th class="px-4 py-2">ID</th>
            <th class="px-4 py-2">Nombre</th>
            <th class="px-4 py-2">Relator</th>
            <th class="px-4 py-2">Valor</th>
            <th class="px-4 py-2">Cupos</th>
            <th class="px-4 py-2">Horarios</th>
            <th class="px-4 py-2">Comentarios</th>
            
<c:if test="${sessionScope.tipo eq 'Administrativo'}">	             
            <th class="px-4 py-2 text-center">Opciones</th>
</c:if>               
            
        </tr>

        <c:forEach var="capa" items="${listado}">
            <tr>
                <td class="border px-4 py-2">${capa.id}</td>
                <td class="border px-4 py-2">${capa.nombre}</td>
                <td class="border px-4 py-2">${capa.relator}</td>
                <td class="border px-4 py-2">${capa.valor}</td>
                <td class="border px-4 py-2">${capa.cupos}</td>
                <td class="border px-4 py-2">
                    <c:set var="horarioId" value="${capa.horarios}" />
                    <c:choose>
                        <c:when test="${horarioId == 1}">8:30 a 11:30</c:when>
                        <c:when test="${horarioId == 2}">13:30 a 15:30</c:when>
                        <c:when test="${horarioId == 3}">17:30 a 19:30</c:when>
                        
                        <c:otherwise>Horario no válido</c:otherwise>
                    </c:choose>
                </td>
                
                <td class="border px-4 py-2">${capa.comentarios}</td>

<c:if test="${sessionScope.tipo eq 'Administrativo'}">	                 
                <td class="border px-4 py-2 text-center">
                    <a class="rounded-lg bg-blue-400 text-white font-thin px-3 pb-1 hover:bg-blue-600" href="<%= request.getContextPath() %>/EditarCapacitacionSRVL?id=${capa.id}">Editar</a>
                    <a class="ml-3 rounded-lg bg-orange-400 text-white font-thin px-3 pb-1 hover:bg-orange-600" href="#" onclick="confirmarEliminacion(${capa.id});">Eliminar</a>
                </td>
</c:if>                
                
            </tr>
        </c:forEach>
    </table>

<!-- Scripts -->
<script src="js/app.js"></script>	

<!-- Footer -->
<jsp:include page="layout/footer.jsp"></jsp:include>

</body>
</html>
