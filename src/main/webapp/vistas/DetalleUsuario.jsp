<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<%@ page import="java.util.List" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Detalle Usuario</title>
    
        <script src="https://cdn.tailwindcss.com"></script>
    
</head>
<body class="container mx-auto mt-3 bg-gray-200">

<!-- nav -->
<jsp:include page="layout/nav.jsp"></jsp:include>


<!-- Main -->
<div class="bg-gray-100 border-black shadow-md">

        <h3 class="text-3xl text-gray-400 text-center py-3">Detalles  del usuario <span class="text-blue-500 font-bold"><c:out value='${el_usuario.usuario}' /></span></h3>
    <div>
    
<div class="bg-white mb-5 p-5 m-5 rounded"> 
    
    
  


        <div class="mb-4 pt-5"> 
            <label class="block text-gray-700 text-sm font-bold mb-2"  for="usuario">Usuario:</label>
            <input value="<c:out value="${el_usuario.usuario}" />" class="shadow rounded py-2 px-3 text-gray-700 bg-lime-100 border-gray-400"   id="usuario" name="usuario" readonly>
        </div>
        
        <div class="mb-4"><br>
            <label class="block text-gray-700 text-sm font-bold mb-2" for="password">
              Password
            </label>
        <input value="<c:out value="${el_usuario.password}" />" class="shadow rounded py-2 px-3 text-gray-700 bg-lime-100 border-gray-400" name="password"  readonly></input>
      </div>





        

<c:if test="${el_usuario.tipo.toString() eq 'Cliente'}">
<div class="mb-4 pt-5"> 
	<label for="tipo">Tipo Usuario:</label>	<br>
<input value="Cliente" class="shadow rounded py-2 px-3 text-gray-700 bg-lime-100 border-gray-400" name="password"  readonly></input>
</div> 

            <div class="mb-4 pt-5"> 
                <label for="rut">RUT:</label><br>
                <input value="<c:out value="${el_usuario.rut}" />" size="10" class="shadow rounded w-1/6 py-2 px-3 text-gray-700 leading-tight outline-none focus:shadow-outline bg-blue-100 border-gray-400" id="rut" name="rut" readonly>
            </div>
          
          
        <div class="mb-4 pt-5"> 
            
                <label for="nombres">Nombres:</label><br>
                <input value="<c:out value="${el_usuario.nombres}" />" class="shadow rounded w-1/3 py-2 px-3 text-gray-700 leading-tight outline-none focus:shadow-outline bg-blue-100 border-gray-400"  readonly id="nombres" name="nombres" >
            
        </div>
            
        <div class="mb-4 pt-5"> 
            
            <label for="apellidos">Apellidos:</label><br>
            <input value="<c:out value="${el_usuario.apellidos}" />" class="shadow rounded w-1/3 py-2 px-3 text-gray-700 leading-tight outline-none focus:shadow-outline bg-blue-100 border-gray-400"  readonly id="apellidos" name="apellidos" >
            
        </div>
        
        
         <div class="mb-4 pt-5"> 
            
                <label for="telefono">Teléfono:</label><br>
                <input value="<c:out value="${el_usuario.telefono}" />" class="shadow rounded w-1/3 py-2 px-3 text-gray-700 leading-tight outline-none focus:shadow-outline bg-blue-100 border-gray-400"  readonly id="telefono" name="telefono" >
         </div>

         <div class="mb-4 pt-5"> 
            
                <label for="afp">AFP:</label><br>
                <input value="<c:out value="${el_usuario.afp}" />" class="shadow rounded w-1/6 py-2 px-3 text-gray-700 leading-tight outline-none focus:shadow-outline bg-blue-100 border-gray-400"  readonly id="afp" name="afp" >
         </div>

         <div class="mb-4 pt-5"> 
            
                <label for="salud">Sistema de salud:</label><br>
                <c:if test="${el_usuario.salud == 1}">
<input value="Fonasa" class="shadow rounded w-1/6 py-2 px-3 text-gray-700 leading-tight outline-none focus:shadow-outline bg-blue-100 border-gray-400" name="salud"  readonly></input>
				</c:if>

				<c:if test="${el_usuario.salud == 2}">
<input value="Isapre" class="shadow rounded w-1/6 py-2 px-3 text-gray-700 leading-tight outline-none focus:shadow-outline bg-blue-100 border-gray-400" name="salud"  readonly></input>
				</c:if>

         </div>

          <div class="mb-4 pt-5"> 
            
                <label for="direccion">Direcci&oacute;n:</label> <br>
                <input value="<c:out value="${el_usuario.direccion}" />" class="shadow rounded w-2/3 py-2 px-3 text-gray-700 leading-tight outline-none focus:shadow-outline bg-blue-100 border-gray-400"  readonly id="direccion" name="direccion" >
         </div>


         <div class="mb-4 pt-5"> 
            
                <label for="comuna">Comuna:</label> <br>
                <input value="<c:out value="${el_usuario.comuna}" />" class="shadow rounded w-1/3 py-2 px-3 text-gray-700 leading-tight outline-none focus:shadow-outline bg-blue-100 border-gray-400"  readonly id="comuna" name="comuna" >
         </div>

         <div class="mb-4 pt-5"> 
            
                <label for="edad">Edad:</label> <br>
                <input value="<c:out value="${el_usuario.edad}" />" class="shadow rounded w-1/6 py-2 px-3 text-gray-700 leading-tight outline-none focus:shadow-outline bg-blue-100 border-gray-400"  readonly id="edad" name="edad" >
         </div>

 

</c:if>








<c:if test="${el_usuario.tipo.toString() eq 'Administrativo'}">

<div class="mb-4 pt-5"> 
	<label for="tipo">Tipo Usuario:</label>	<br>
<input value="Administrativo" class="shadow rounded py-2 px-3 text-gray-700 bg-lime-100 border-gray-400" name="password"  readonly></input>
</div> 

        <div class="mb-4 pt-5"> 
                <labelfor="area">Área:</label> <br>
                <input value="<c:out value="${el_usuario.area}" />" class="shadow rounded w-1/6 py-2 px-3 text-gray-700 leading-tight outline-none focus:shadow-outline bg-blue-100 border-gray-400"  readonly id="area" name="area" >
            
        </div>  
         
        <div class="mb-4 pt-5">         
                <label class="" for="experienciaPrevia">Experiencia Previa:</label>
                <br>
                <textarea class="mt-3 bg-gray-100 border-2 border-gray-300" id="experiencia" name="experiencia" cols="100" rows="5" readonly><c:out value="${el_usuario.experienciaPrevia}" /></textarea>        
        </div>

</c:if>







<c:if test="${el_usuario.tipo.toString() eq 'Profesional'}">

<div class="mb-4 pt-5"> 
	<label for="tipo">Tipo Usuario:</label>	<br>
<input value="Profesional" class="shadow rounded py-2 px-3 text-gray-700 bg-lime-100 border-gray-400" name="password"  readonly></input>
</div> 

            <div class="mb-4 pt-5"> 
                <label for="titulo">Título:</label><br>
                <input value="<c:out value="${el_usuario.titulo}" />" class="shadow rounded w-1/3 py-2 px-3 text-gray-700 leading-tight outline-none focus:shadow-outline bg-blue-100 border-gray-400"  readonly id="titulo" name="titulo" >
            </div>
        
            
        <div class="mb-4 pt-5">
            
                <label for="fechaIngreso">Fecha de ingreso:</label><br>
                <input value="<c:out value="${el_usuario.fechaIngreso}" />" class="shadow rounded w-1/6 py-2 px-3 text-gray-700 leading-tight outline-none focus:shadow-outline bg-blue-100 border-gray-400"  readonly id="fechaIngreso" name="fechaIngreso" >
        </div>

</c:if>

    
              
 
</div>

<!-- Footer -->
<jsp:include page="layout/footer.jsp"></jsp:include>
    
</body>
</html>
