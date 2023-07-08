<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Agregar Usuario</title>
    
        <script src="https://cdn.tailwindcss.com"></script>
    
</head>
<body class="container mx-auto mt-3 bg-gray-200">

<!-- nav -->
<jsp:include page="layout/nav.jsp"></jsp:include>

<!-- Main -->
<!-- Main -->
<div class="bg-gray-100 border-black shadow-md">

        <h3 class="text-3xl text-gray-400 text-center py-3">Crear <span class="text-blue-500 font-bold">Usuario</span></h3>
    <div>
    
<div class="bg-blue-500 mb-5 pt-2 mx-1 mt-5 rounded"> 
    
    
 <form class="bg-white shadow-lg rounded mb-7 pb-5 px-10" action="<%= request.getContextPath() %>/CrearUsuariosSRVL" method="POST">
     
        <div class="mb-4 pt-5"> 
            <label class="block text-gray-700 text-sm font-bold mb-2"  for="usuario">Usuario:</label>
            <input class="shadow appearance-none border rounded w-full py-2 px-3 text-gray-700 leading-tight focus:outline-none focus:shadow-outline focus:bg-blue-100 focus:border-gray-400"  type="text" id="usuario" name="usuario" required>
        </div>
        
        <div class="mb-4">
            <label class="block text-gray-700 text-sm font-bold mb-2" for="password">
              Password
            </label>
        <input class="shadow appearance-none border rounded w-full py-2 px-3 text-gray-700 leading-tight focus:outline-none focus:shadow-outline focus:bg-blue-100 focus:border-gray-400" name="password" placeholder="password" type="password" required></input>
      </div>
        
        <div class="mb-4 pt-5"> 
        <label  class="text-gray-700 text-sm font-bold mr-3" for="tipo">Tipo de Usuario:</label>
        <select class="p-2" id="tipo" name="tipo" onchange="mostrarCampos(this.value)" required>
            <option value="">Seleccione</option>
            <option value="Cliente">Cliente</option>
            <option value="Profesional">Profesional</option>
            <option value="Administrativo">Administrativo</option>
        </select>
        </div>
    
    

        
    
     <div id="camposCliente" style="display: none;">

            <div class="mb-4 pt-5"> 
                <label for="rut">RUT:</label>
                <input size="10" class="mt-3 shadow appearance-none border rounded w-full py-2 px-3 text-gray-700 leading-tight focus:outline-none focus:shadow-outline focus:bg-blue-100 focus:border-gray-400"  type="text" id="rut" name="rut" ><br>
            </div>
          
          
        <div class="mb-4 pt-5"> 
            
                <label for="nombres">Nombres:</label>
                <input class="mt-3 shadow appearance-none border rounded w-full py-2 px-3 text-gray-700 leading-tight focus:outline-none focus:shadow-outline focus:bg-blue-100 focus:border-gray-400"  type="text" id="nombres" name="nombres" ><br>
            
        </div>
            
        <div class="mb-4 pt-5"> 
            
            <label for="apellidos">Apellidos:</label>
            <input class="mt-3 shadow appearance-none border rounded w-full py-2 px-3 text-gray-700 leading-tight focus:outline-none focus:shadow-outline focus:bg-blue-100 focus:border-gray-400"  type="text" id="apellidos" name="apellidos" ><br>
            
        </div>
        
        
         <div class="mb-4 pt-5"> 
            
                <label for="telefono">Teléfono:</label>
                <input class="mt-3 shadow appearance-none border rounded w-full py-2 px-3 text-gray-700 leading-tight focus:outline-none focus:shadow-outline focus:bg-blue-100 focus:border-gray-400"  type="text" id="telefono" name="telefono" ><br>
         </div>

         <div class="mb-4 pt-5"> 
            
                <label for="telefono">AFP:</label>
                <input class="mt-3 shadow appearance-none border rounded w-full py-2 px-3 text-gray-700 leading-tight focus:outline-none focus:shadow-outline focus:bg-blue-100 focus:border-gray-400"  type="text" id="afp" name="afp" ><br>
         </div>

         <div class="mb-4 pt-5"> 
            
                <label for="telefono">Sistema de salud:</label>
                <select class="p-2" id="salud" name="salud" >
                    <option selected value="">Seleccionar opci&oacute;n</option>
                    <option value="1">Fonasa</option>
                    <option value="2">Isapre</option>
                </select>
         </div>

          <div class="mb-4 pt-5"> 
            
                <label for="telefono">Direcci&oacute;n:</label>
                <input class="mt-3 shadow appearance-none border rounded w-full py-2 px-3 text-gray-700 leading-tight focus:outline-none focus:shadow-outline focus:bg-blue-100 focus:border-gray-400"  type="text" id="direccion" name="direccion" ><br>
         </div>


         <div class="mb-4 pt-5"> 
            
                <label for="telefono">Comuna:</label>
                <input class="mt-3 shadow appearance-none border rounded w-full py-2 px-3 text-gray-700 leading-tight focus:outline-none focus:shadow-outline focus:bg-blue-100 focus:border-gray-400"  type="text" id="comuna" name="comuna" ><br>
         </div>

         <div class="mb-4 pt-5"> 
            
                <label for="telefono">Edad:</label>
                <input class="mt-3 shadow appearance-none border rounded w-full py-2 px-3 text-gray-700 leading-tight focus:outline-none focus:shadow-outline focus:bg-blue-100 focus:border-gray-400"  type="number" id="edad" name="edad" ><br>
         </div>

    </div>       
      
      
      
      
        
        
<div id="camposProfesional" style="display: none;">

            <div class="mb-4 pt-5"> 
                <label for="titulo">Título:</label>
                <input class="mt-3 shadow appearance-none border rounded w-full py-2 px-3 text-gray-700 leading-tight focus:outline-none focus:shadow-outline focus:bg-blue-100 focus:border-gray-400"  type="text" id="titulo" name="titulo" ><br>
            </div>
        
            
        <div class="mb-4 pt-5">
            
                <label for="fechaIngreso">Fecha de ingreso:</label>
                <input class="mt-3 shadow appearance-none border rounded w-full py-2 px-3 text-gray-700 leading-tight focus:outline-none focus:shadow-outline focus:bg-blue-100 focus:border-gray-400"  type="text" id="fechaIngreso" name="fechaIngreso" >
        </div>
</div>    
            
    



           
<div id="camposAdministrativo" style="display: none;">     

        <div class="mb-4 pt-5"> 
                <labelfor="area">Área:</label>
                <input class="mt-3 shadow appearance-none border rounded w-full py-2 px-3 text-gray-700 leading-tight focus:outline-none focus:shadow-outline focus:bg-blue-100 focus:border-gray-400"  type="text" id="area" name="area" ><br>
            
        </div>  
         
        <div class="mb-4 pt-5">         
                <label class="" for="experiencia">Experiencia Previa:</label>
                <br>
                <textarea class="mt-3 bg-gray-100 border-2 border-gray-300" id="experiencia" name="experiencia" cols="100" rows="5" ></textarea>        
        </div>
</div>






        <div class="flex items-center py-1 mb-2">
        <button class="bg-blue-600 hover:bg-blue-800 hover:font-bold text-white font-normal py-2 px-6 rounded focus:outline-none focus:shadow-outline" type="submit">
          Crear
        </button>
        <button class="bg-gray-300 hover:bg-orange-500 hover:text-white text-gray-500 py-2 px-4 rounded focus:outline-none focus:shadow-outline ml-5" type="reset">
          Borrar
        </button>
      </div>         

        </form>
    </div>

</div>
         
            
<script>
    function mostrarCampos(tipo) {
        var camposCliente = document.getElementById("camposCliente");
        var camposProfesional = document.getElementById("camposProfesional");
        var camposAdministrativo = document.getElementById("camposAdministrativo");
        
        camposCliente.style.display = "none";
        camposProfesional.style.display = "none";
        camposAdministrativo.style.display = "none";
        
        if (tipo === "Cliente") {
            camposCliente.style.display = "block";
            agregarRequired(camposCliente);
        } else if (tipo === "Profesional") {
            camposProfesional.style.display = "block";
            agregarRequired(camposProfesional);
        } else if (tipo === "Administrativo") {
            camposAdministrativo.style.display = "block";
            agregarRequired(camposAdministrativo);
        }
    }
    
    function agregarRequired(campos) {
        var inputs = campos.getElementsByTagName("input");
        for (var i = 0; i < inputs.length; i++) {
            inputs[i].setAttribute("required", "");
        }
    }
</script>
    

<!-- Footer -->
<jsp:include page="layout/footer.jsp"></jsp:include>
    
</body>
</html>
