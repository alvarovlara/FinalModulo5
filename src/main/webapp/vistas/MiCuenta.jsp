<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<title>Nosotros :: Java Web</title>

<script src="https://cdn.tailwindcss.com"></script>

</head>

<body class="container mx-auto mt-3 bg-gray-200">

<!-- nav -->
<jsp:include page="layout/nav.jsp"></jsp:include>

<!-- Main -->
<div class="bg-gray-100 border-black shadow-md">

		<h3 class="text-3xl text-gray-400 text-center py-3">Mis <span class="text-blue-500 font-bold">Datos</span></h3>
    <div>
      




<div class=" mx-auto w-full max-w-sm bg-white border border-gray-200 rounded-lg shadow dark:bg-gray-800 dark:border-gray-700">

    <div class="flex flex-col items-center pb-10 mt-5">
        <img class="w-24 h-24 mb-3 rounded-full shadow-lg" src="<%=request.getContextPath()%>/vistas/img/user.png" alt=""/>
        <h5 class="mb-1 text-xl font-medium text-gray-900 dark:text-white">${sessionScope.usuario}</h5>
        <span class="text-sm text-gray-500 dark:text-gray-400"><p>Tipo de usuario: <label class="text-orange-500 font-bold">${sessionScope.tipo}</label></p>
</span>
        <div class="flex mt-4 space-x-3 md:mt-6">
            <a href="<%= request.getContextPath() %>/EditarUsuarioSRVL?id=${sessionScope.id}" class="inline-flex items-center px-4 py-2 text-sm font-medium text-center text-white bg-blue-700 rounded-lg hover:bg-blue-800 focus:ring-4 focus:outline-none focus:ring-blue-300 dark:bg-blue-600 dark:hover:bg-blue-700 dark:focus:ring-blue-800">Editar mis datos</a>
<a href="<%= request.getContextPath() %>/LogoutSRVL" class="inline-flex items-center px-4 py-2 text-sm font-medium text-center text-gray-900 bg-white border border-gray-300 rounded-lg hover:bg-gray-100 focus:ring-4 focus:outline-none focus:ring-gray-200 dark:bg-gray-800 dark:text-white dark:border-gray-600 dark:hover:bg-gray-700 dark:hover:border-gray-700 dark:focus:ring-gray-700">Cerrar sesión</a>        
        </div>
    </div>
</div>





<!-- Scripts -->
<script src="js/app.js"></script>	

<!-- Footer -->
<jsp:include page="layout/footer.jsp"></jsp:include>
	
</body>
</html></html>