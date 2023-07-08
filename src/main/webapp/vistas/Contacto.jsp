<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<title>Contacto :: Java Web</title>

<script src="https://cdn.tailwindcss.com"></script>

</head>

<body class="container mx-auto mt-3 bg-gray-200">

<!-- nav -->
<jsp:include page="layout/nav.jsp"></jsp:include>

<!-- Main -->
<div class="bg-gray-100 border-black shadow-md">

		<h3 class="text-3xl text-gray-400 text-center py-3">P&aacute;gina de <span class="text-blue-500 font-bold">Contacto</span></h3>
    <div>
      
   <div class="bg-blue-500 mb-5 pt-2 mx-1 mt-5 rounded"> 

    <!-- Form  -->
    <form class="bg-white shadow-lg rounded mb-7 pb-5 px-10" action="<%= request.getContextPath() %>/ContactoConsolaSRVL"  method="POST">
      <div class="mb-4 pt-5"> 
        <label class="block text-gray-700 text-sm font-bold mb-2" for="nombre">
          Nombre
        </label>
        <input class="shadow appearance-none border rounded w-full py-2 px-3 text-gray-700 leading-tight focus:outline-none focus:shadow-outline focus:bg-blue-100 focus:border-gray-400" name="nombre" type="text" required>
      </div>
      <div class="mb-4">
        <label class="block text-gray-700 text-sm font-bold mb-2" for="apellidos">
          Apellidos
        </label>
        <input class="shadow appearance-none border rounded w-full py-2 px-3 text-gray-700 leading-tight focus:outline-none focus:shadow-outline focus:bg-blue-100 focus:border-gray-400" name="apellidos" type="text" required>
      </div>
      <div class="mb-4">
        <label class="block text-gray-700 text-sm font-bold mb-2" for="correo">
          Correo
        </label>
        <input class="shadow appearance-none border rounded w-full py-2 px-3 text-gray-700 leading-tight focus:outline-none focus:shadow-outline focus:bg-blue-100 focus:border-gray-400" name="correo" type="email" required>
      </div>
      <div class="mb-4">
        <label class="block text-gray-700 text-sm font-bold mb-2" for="telefono">
          Teléfono
        </label>
        <input class="shadow appearance-none border rounded w-full py-2 px-3 text-gray-700 leading-tight focus:outline-none focus:shadow-outline focus:bg-blue-100 focus:border-gray-400" name="telefono" type="tel" required>
      </div>
      <div class="mb-4">
        <label class="block text-gray-700 text-sm font-bold mb-2" for="comentarios">
          Comentarios
        </label>
        <textarea class="shadow appearance-none border rounded w-full py-2 px-3 text-gray-700 leading-tight focus:outline-none focus:shadow-outline focus:bg-blue-100 focus:border-gray-400" name="comentarios" placeholder="Escribe tus comentarios aquí"></textarea>
      </div>

      <div class="flex items-center py-3 mb-5">
        <button class="bg-blue-600 hover:bg-blue-800 hover:font-bold text-white font-normal py-2 px-6 rounded focus:outline-none focus:shadow-outline" type="submit">
          Enviar
        </button>
        <button class="bg-gray-300 hover:bg-orange-500 hover:text-white text-gray-500 py-2 px-4 rounded focus:outline-none focus:shadow-outline ml-5" type="reset">
          Borrar
        </button>
      </div>
    </form>
</div>

</div>
	

<!-- Scripts -->
<script src="js/app.js"></script>	

<!-- Footer -->
<jsp:include page="layout/footer.jsp"></jsp:include>
	
</body>
</html></html>