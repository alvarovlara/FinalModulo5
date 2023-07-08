<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<%@ page import="java.util.List" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Editar Usuario</title>
    
        <script src="https://cdn.tailwindcss.com"></script>
    
</head>
<body class="container mx-auto mt-3 bg-gray-200">

<!-- nav -->
<jsp:include page="layout/nav.jsp"></jsp:include>

<!-- Main -->
<!-- Main -->
<div class="bg-gray-100 border-black shadow-md">

        <h3 class="text-3xl text-gray-400 text-center py-3">Editando al usuario <span class="text-blue-500 font-bold"><c:out value='${el_usuario.usuario}' /></span></h3>
    <div>
    
<div class="bg-blue-500 mb-5 pt-2 mx-1 mt-5 rounded"> 
    
    
 <form class="bg-white shadow-lg rounded mb-7 pb-5 px-10" action="<%= request.getContextPath() %>/EditarUsuarioSRVL" method="POST">
 
 <input type="hidden" name="id" value="<c:out value="${el_usuario.id}" />">
     
        <div class="mb-4 pt-5"> 
            <label class="block text-gray-700 text-sm font-bold mb-2"  for="usuario">Usuario:</label>
            <input class="shadow appearance-none border rounded w-full py-2 px-3 text-gray-700 leading-tight focus:outline-none focus:shadow-outline focus:bg-blue-100 focus:border-gray-400"   value="<c:out value="${el_usuario.usuario}" />" type="text" id="usuario" name="usuario" required>
        </div>
        
        <div class="mb-4">
            <label class="block text-gray-700 text-sm font-bold mb-2" for="password">
              Password
            </label>
        <input class="shadow appearance-none border rounded w-full py-2 px-3 text-gray-700 leading-tight focus:outline-none focus:shadow-outline focus:bg-blue-100 focus:border-gray-400" name="password" value="<c:out value="${el_usuario.password}" />"  type="password" required></input>
      </div>
 





<c:if test="${el_usuario.tipo.toString() eq 'Cliente'}">
<div class="mb-4 pt-5"> 
	<label for="tipo">Tipo Usuario:</label>	
	<input type="hidden" name="tipo" value="Cliente">
<input value="Cliente" class="shadow rounded w-full py-2 px-3 text-gray-700 leading-tight outline-none focus:shadow-outline bg-blue-100 border-gray-400" name="el-tipo"  readonly></input>
</div> 
    
            <div class="mb-4 pt-5"> 
                <label for="rut">RUT:</label>
                <input size="10" class="mt-3 shadow appearance-none border rounded w-full py-2 px-3 text-gray-700 leading-tight focus:outline-none focus:shadow-outline focus:bg-blue-100 focus:border-gray-400" value="<c:out value="${el_usuario.rut}" />" type="text" id="rut" name="rut" ><br>
            </div>
          
          
        <div class="mb-4 pt-5"> 
            
                <label for="nombres">Nombres:</label>
                <input class="mt-3 shadow appearance-none border rounded w-full py-2 px-3 text-gray-700 leading-tight focus:outline-none focus:shadow-outline focus:bg-blue-100 focus:border-gray-400" value="<c:out value="${el_usuario.nombres}" />" type="text" id="nombres" name="nombres" ><br>
            
        </div>
            
        <div class="mb-4 pt-5"> 
            
            <label for="apellidos">Apellidos:</label>
            <input class="mt-3 shadow appearance-none border rounded w-full py-2 px-3 text-gray-700 leading-tight focus:outline-none focus:shadow-outline focus:bg-blue-100 focus:border-gray-400" value="<c:out value="${el_usuario.apellidos}" />" type="text" id="apellidos" name="apellidos" ><br>
            
        </div>
        
        
         <div class="mb-4 pt-5"> 
            
                <label for="telefono">Teléfono:</label>
                <input class="mt-3 shadow appearance-none border rounded w-full py-2 px-3 text-gray-700 leading-tight focus:outline-none focus:shadow-outline focus:bg-blue-100 focus:border-gray-400" value="<c:out value="${el_usuario.telefono}" />" type="text" id="telefono" name="telefono" ><br>
         </div>

         <div class="mb-4 pt-5"> 
            
                <label for="telefono">AFP:</label>
                <input class="mt-3 shadow appearance-none border rounded w-full py-2 px-3 text-gray-700 leading-tight focus:outline-none focus:shadow-outline focus:bg-blue-100 focus:border-gray-400" value="<c:out value="${el_usuario.afp}" />" type="text" id="afp" name="afp" ><br>
         </div>

         <div class="mb-4 pt-5"> 
            
                <label for="telefono">Sistema de salud:</label>
                <select class="p-2" id="salud" name="salud" >

						<option value="1" <c:if test="${el_usuario.salud == 1}">selected</c:if>>Fonasa</option>
						<option value="2" <c:if test="${el_usuario.salud == 2}">selected</c:if>>Isapre</option>
						
                </select>
         </div>

          <div class="mb-4 pt-5"> 
            
                <label for="telefono">Direcci&oacute;n:</label>
                <input class="mt-3 shadow appearance-none border rounded w-full py-2 px-3 text-gray-700 leading-tight focus:outline-none focus:shadow-outline focus:bg-blue-100 focus:border-gray-400" value="<c:out value="${el_usuario.direccion}" />" type="text" id="direccion" name="direccion" ><br>
         </div>


         <div class="mb-4 pt-5"> 
            
                <label for="telefono">Comuna:</label>
                <input class="mt-3 shadow appearance-none border rounded w-full py-2 px-3 text-gray-700 leading-tight focus:outline-none focus:shadow-outline focus:bg-blue-100 focus:border-gray-400" value="<c:out value="${el_usuario.comuna}" />" type="text" id="comuna" name="comuna" ><br>
         </div>

         <div class="mb-4 pt-5"> 
            
                <label for="telefono">Edad:</label>
                <input class="mt-3 shadow appearance-none border rounded w-full py-2 px-3 text-gray-700 leading-tight focus:outline-none focus:shadow-outline focus:bg-blue-100 focus:border-gray-400" value="<c:out value="${el_usuario.edad}" />" type="number" id="edad" name="edad" ><br>
         </div>
</c:if>
     
      
      
      
        
        
<c:if test="${el_usuario.tipo.toString() eq 'Profesional'}">

<div class="mb-4 pt-5"> 
	<label for="tipo">Tipo Usuario:</label>	
	<input type="hidden" name="tipo" value="Profesional">
<input value="Profesional" class="shadow rounded w-full py-2 px-3 text-gray-700 leading-tight outline-none focus:shadow-outline bg-blue-100 border-gray-400" name="el-tipo"  readonly></input>
</div>

            <div class="mb-4 pt-5"> 
                <label for="titulo">Título:</label>
                <input class="mt-3 shadow appearance-none border rounded w-full py-2 px-3 text-gray-700 leading-tight focus:outline-none focus:shadow-outline focus:bg-blue-100 focus:border-gray-400" value="<c:out value="${el_usuario.titulo}" />" type="text" id="titulo" name="titulo" ><br>
            </div>
        
            
        <div class="mb-4 pt-5">
            
                <label for="fechaIngreso">Fecha de ingreso:</label>
                <input class="mt-3 shadow appearance-none border rounded w-full py-2 px-3 text-gray-700 leading-tight focus:outline-none focus:shadow-outline focus:bg-blue-100 focus:border-gray-400" value="<c:out value="${el_usuario.fechaIngreso}" />" type="text" id="fechaIngreso" name="fechaIngreso" >
        </div>
</c:if>   
            
    



           
<c:if test="${el_usuario.tipo.toString() eq 'Administrativo'}">

<div class="mb-4 pt-5"> 
	<label for="tipo">Tipo Usuario:</label>	
	<input type="hidden" name="tipo" value="Administrativo">
<input value="Administrativo" class="shadow rounded w-full py-2 px-3 text-gray-700 leading-tight outline-none focus:shadow-outline bg-blue-100 border-gray-400" name="el-tipo"  readonly></input>
</div> 

        <div class="mb-4 pt-5"> 
                <labelfor="area">Área:</label>
                <input class="mt-3 shadow appearance-none border rounded w-full py-2 px-3 text-gray-700 leading-tight focus:outline-none focus:shadow-outline focus:bg-blue-100 focus:border-gray-400" value="<c:out value="${el_usuario.area}" />" type="text" id="area" name="area" ><br>
            
        </div>  
         
        <div class="mb-4 pt-5">         
                <label class="" for="experiencia">Experiencia Previa:</label>
                <br>
                <textarea class="mt-3 bg-gray-100 border-2 border-gray-300" id="experiencia" name="experiencia" cols="100" rows="5" ><c:out value="${el_usuario.experienciaPrevia}" /></textarea>        
        </div>
</c:if>






        <div class="flex items-center py-1 mb-2">
        <button class="bg-blue-600 hover:bg-blue-800 hover:font-bold text-white font-normal py-2 px-6 rounded focus:outline-none focus:shadow-outline" type="submit">
          Actualizar
        </button>

        <a href="<%= request.getContextPath() %>/ListarUsuariosSRVL" class="bg-gray-300 hover:bg-orange-500 hover:text-white text-gray-500 py-2 px-4 rounded focus:outline-none focus:shadow-outline ml-5">
                    Cancelar
                </a>
      </div>         

        </form>
    </div>

</div>
         
            

<!-- Footer -->
<jsp:include page="layout/footer.jsp"></jsp:include>
    
</body>
</html>
