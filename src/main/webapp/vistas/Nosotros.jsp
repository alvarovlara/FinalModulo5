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

		<h3 class="text-3xl text-gray-400 text-center py-3">Acerca de <span class="text-blue-500 font-bold">Nosotros</span></h3>
    <div>
      


<section class="bg-white dark:bg-gray-900">
    <div class="py-8 px-4 mx-auto max-w-screen-xl lg:py-16 grid lg:grid-cols-2 gap-8 lg:gap-16">
        <div class="flex flex-col justify-center">
            <h1 class="mb-4 text-4xl font-extrabold tracking-tight leading-none text-gray-900 md:text-5xl lg:text-6xl dark:text-white">Lorem ipsum dolor sit amet, consectetur adipiscing elit.</h1>
            <p class="mb-8 text-lg font-normal text-gray-500 lg:text-xl dark:text-gray-400">Vestibulum non lorem, vehicula accumsan sit amet. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla in urna dui.</p>
            <div class="flex flex-col space-y-4 sm:flex-row sm:space-y-0 sm:space-x-4">
                  
            </div>
        </div>
        <div>
			<iframe width="560" height="315" src="https://www.youtube.com/embed/eMt3bgO-w0M" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>        </div>
    </div>
</section>



<!-- Scripts -->
<script src="js/app.js"></script>	

<!-- Footer -->
<jsp:include page="layout/footer.jsp"></jsp:include>
	
</body>
</html></html>