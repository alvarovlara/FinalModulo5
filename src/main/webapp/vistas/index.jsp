<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Login :: Java Web</title>
  
      <script src="https://cdn.tailwindcss.com"></script>
  
</head>

<body class="bg-teal-500">

  <div class="container mx-auto">
    <div class="mx-auto bg-white shadow-2xl border-gray-300 border-x-4 rounded-lg m-10 p-10 max-w-md">
    
      <form action="<%= request.getContextPath() %>/LoginSRVL" method="POST">
        <div class="mb-4">
          <label class="block text-gray-700 text-sm font-bold mb-2" for="usuario">
            Usuario
          </label>
          <input placeholder="admin" class="shadow appearance-none border rounded w-full py-2 px-3 text-gray-700 leading-tight focus:outline-none focus:shadow-outline focus:bg-blue-100 focus:border-gray-400" name="usuario" type="text" required>
        </div>
        <div class="mb-4">
          <label class="block text-gray-700 text-sm font-bold mb-2" for="email">
            Password
          </label>
          <input placeholder="1234"  class="shadow appearance-none border rounded w-full py-2 px-3 text-gray-700 leading-tight focus:outline-none focus:shadow-outline focus:bg-blue-100 focus:border-gray-400" name="password" type="password" required>
        </div>
        
        <div class="flex justify-center pt-3 mt-5">
		  <button class="bg-blue-600 hover:bg-blue-800 text-white font-normal py-2 px-6 rounded focus:outline-none focus:shadow-outline mr-2" type="submit">
		    Ingresar
		  </button>
		  <button class="bg-gray-300 hover:bg-orange-500 hover:text-white text-gray-500 py-2 px-4 rounded focus:outline-none focus:shadow-outline ml-2" type="reset">
		    Borrar
		  </button>
		</div>

       		<div class="flex p-1 mt-2 mb-4 text-sm text-blue-800 rounded-lg bg-blue-50 dark:bg-gray-800 dark:text-blue-400" role="alert">
		  <svg class="flex-shrink-0 inline w-4 h-4 mr-3 mt-[2px]" aria-hidden="true" xmlns="http://www.w3.org/2000/svg" fill="currentColor" viewBox="0 0 20 20">
		    <path d="M10 .5a9.5 9.5 0 1 0 9.5 9.5A9.51 9.51 0 0 0 10 .5ZM9.5 4a1.5 1.5 0 1 1 0 3 1.5 1.5 0 0 1 0-3ZM12 15H8a1 1 0 0 1 0-2h1v-3H8a1 1 0 0 1 0-2h2a1 1 0 0 1 1 1v4h1a1 1 0 0 1 0 2Z"/>
		  </svg>
		  <span class="sr-only">Datos</span>
		  <div>
		    <span class="font-medium">Usuarios registrados:</span>
		      <ul class="mt-1.5 list-disc list-inside">
		        <li>Usuario: admin - Pass: 1234 - Tipo: Administrador (todas las opciones)</li>
		        <li>Usuario: Pedro - Pass: 1234 - Tipo: Profesional (limitado)</li>
		        <li>Usuario: Juan - Pass: 1234 - Tipo: Cliente (limitado)</li>
		    </ul>
		  </div>
		</div> 
        
      </form>
      
          <% String mensageError = (String) request.getAttribute("mensageError");
		       if (mensageError != null) { %>
		          <p style="color: red;"><%= mensageError %></p>
		 <% } %>
      
    </div>
  </div>
</body>
</html>
