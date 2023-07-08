<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
          
    
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<title>Principal :: Java Web</title>

	<script src="https://cdn.tailwindcss.com"></script>

</head>

<body class="container mx-auto mt-1 bg-gray-200">

<!-- nav -->
<jsp:include page="layout/nav.jsp"></jsp:include>

<!-- Main -->
<div class="bg-white border-black rounded shadow-md">


<section class="bg-gray-900 mt-2">
    <div class="py-8 px-4 mx-auto max-w-screen-xl text-center lg:py-16">
        <h1 class="mb-4 text-4xl font-extrabold tracking-tight leading-none  md:text-5xl lg:text-6xl text-white">Principal</h1>
        <p class="mb-8 text-lg font-normal text-gray-500 lg:text-xl sm:px-16 lg:px-48 dark:text-gray-400">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla in urna dui.Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla in urna dui.</p>
        <div class="flex flex-col space-y-4 sm:flex-row sm:justify-center sm:space-y-0 sm:space-x-4">
            <a href="#" class="inline-flex justify-center items-center py-3 px-5 text-base font-medium text-center text-white rounded-lg bg-blue-700 hover:bg-blue-800 focus:ring-4 focus:ring-blue-300 dark:focus:ring-blue-900">
                Comenzar
                <svg aria-hidden="true" class="ml-2 -mr-1 w-5 h-5" fill="currentColor" viewBox="0 0 20 20" xmlns="http://www.w3.org/2000/svg"><path fill-rule="evenodd" d="M10.293 3.293a1 1 0 011.414 0l6 6a1 1 0 010 1.414l-6 6a1 1 0 01-1.414-1.414L14.586 11H3a1 1 0 110-2h11.586l-4.293-4.293a1 1 0 010-1.414z" clip-rule="evenodd"></path></svg>
            </a>
            <a href="#" class="inline-flex justify-center items-center py-3 px-5 text-base font-medium text-center rounded-lg border  focus:ring-4 focus:ring-gray-100 text-white border-gray-700 hover:bg-gray-700 focus:ring-gray-800">
                Descubre
            </a>  
        </div>
    </div>
</section>

	
	
	
<div class="bg-white shadow-md rounded-lg grid grid-cols-3 divide-x mt-5 p-3 mb-5 pb-5"  id="cards">

<div class="mx-5 w-3/3 max-w-sm bg-slate-300 border border-gray-200 rounded-lg shadow dark:bg-gray-800 dark:border-gray-700 columns-1">
    <a href="#">
        <img class="p-3 rounded" src="<%=request.getContextPath()%>/vistas/img/SeguritoExpress.jpg" alt="" />
    </a>
    <div class="p-5">
        <a href="#">
            <h5 class="mb-2 text-2xl font-bold tracking-tight text-gray-900 dark:text-white">Maecenas metus leo, feugiat vehicula accumsan sit amet, vestibulum non lorem.</h5>
        </a>
        <p class="mb-3 font-normal text-gray-700 dark:text-gray-400">Maecenas metus leo, feugiat vehicula accumsan sit amet, vestibulum non lorem, vehicula accumsan sit amet.</p>
        <a href="#" class="inline-flex items-center px-3 py-2 text-sm font-medium text-center text-white bg-blue-700 rounded-lg hover:bg-blue-800 focus:ring-4 focus:outline-none focus:ring-blue-300 dark:bg-blue-600 dark:hover:bg-blue-700 dark:focus:ring-blue-800">
            Ver m&aacute;s
            <svg aria-hidden="true" class="w-4 h-4 ml-2 -mr-1" fill="currentColor" viewBox="0 0 20 20" xmlns="http://www.w3.org/2000/svg"><path fill-rule="evenodd" d="M10.293 3.293a1 1 0 011.414 0l6 6a1 1 0 010 1.414l-6 6a1 1 0 01-1.414-1.414L14.586 11H3a1 1 0 110-2h11.586l-4.293-4.293a1 1 0 010-1.414z" clip-rule="evenodd"></path></svg>
        </a>
    </div>
</div>

	
<div class="mx-5 w-3/3 max-w-sm bg-slate-300 border border-gray-200 rounded-lg shadow dark:bg-gray-800 dark:border-gray-700 columns-1">
    <a href="#">
        <img class="p-3 rounded" src="<%=request.getContextPath()%>/vistas/img/capacitacion2.jpg"alt="" />
    </a>
    <div class="p-5">
        <a href="#">
            <h5 class="mb-2 text-2xl font-bold tracking-tight text-gray-900 dark:text-white">Maecenas metus leo, feugiat vehicula accumsan sit amet, vestibulum non lorem.</h5>
        </a>
        <p class="mb-3 font-normal text-gray-700 dark:text-gray-400">Maecenas metus leo, feugiat vehicula accumsan sit amet, vestibulum non lorem, vehicula accumsan sit amet.</p>
        <a href="#" class="inline-flex items-center px-3 py-2 text-sm font-medium text-center text-white bg-blue-700 rounded-lg hover:bg-blue-800 focus:ring-4 focus:outline-none focus:ring-blue-300 dark:bg-blue-600 dark:hover:bg-blue-700 dark:focus:ring-blue-800">
            Ver m&aacute;s
            <svg aria-hidden="true" class="w-4 h-4 ml-2 -mr-1" fill="currentColor" viewBox="0 0 20 20" xmlns="http://www.w3.org/2000/svg"><path fill-rule="evenodd" d="M10.293 3.293a1 1 0 011.414 0l6 6a1 1 0 010 1.414l-6 6a1 1 0 01-1.414-1.414L14.586 11H3a1 1 0 110-2h11.586l-4.293-4.293a1 1 0 010-1.414z" clip-rule="evenodd"></path></svg>
        </a>
    </div>
</div>

<div class="mx-5 w-3/3 max-w-sm bg-slate-300 border border-gray-200 rounded-lg shadow dark:bg-gray-800 dark:border-gray-700 columns-1">
    <a href="#">
        <img class="p-3 rounded" src="<%=request.getContextPath()%>/vistas/img/SeguritoExpress.jpg" alt="" />
    </a>
    <div class="p-5">
        <a href="#">
            <h5 class="mb-2 text-2xl font-bold tracking-tight text-gray-900 dark:text-white">Maecenas metus leo, feugiat vehicula accumsan sit amet, vestibulum non lorem.</h5>
        </a>
        <p class="mb-3 font-normal text-gray-700 dark:text-gray-400">Maecenas metus leo, feugiat vehicula accumsan sit amet, vestibulum non lorem, vehicula accumsan sit amet.</p>
        <a href="#" class="inline-flex items-center px-3 py-2 text-sm font-medium text-center text-white bg-blue-700 rounded-lg hover:bg-blue-800 focus:ring-4 focus:outline-none focus:ring-blue-300 dark:bg-blue-600 dark:hover:bg-blue-700 dark:focus:ring-blue-800">
            Ver m&aacute;s
            <svg aria-hidden="true" class="w-4 h-4 ml-2 -mr-1" fill="currentColor" viewBox="0 0 20 20" xmlns="http://www.w3.org/2000/svg"><path fill-rule="evenodd" d="M10.293 3.293a1 1 0 011.414 0l6 6a1 1 0 010 1.414l-6 6a1 1 0 01-1.414-1.414L14.586 11H3a1 1 0 110-2h11.586l-4.293-4.293a1 1 0 010-1.414z" clip-rule="evenodd"></path></svg>
        </a>
    </div>
</div>
	
</div>	

	
  <div class="bg-white shadow-md rounded-lg justify-center  pb-10 mb-5 mt-10 flex" id="images">
	
  	<div class="mx-5 max-w-sm bg-white border border-gray-200 rounded-lg shadow-lg dark:bg-gray-800 dark:border-gray-700" >
  		<img class="rounded-lg hover:scale-150" src="<%=request.getContextPath()%>/vistas/img/terreno1.jpg"  />
  	</div>
  	
  	<div class="mx-5 max-w-sm bg-white border border-gray-200 rounded-lg shadow-lg dark:bg-gray-800 dark:border-gray-700" >
  		<img class="rounded-lg hover:scale-150" src="<%=request.getContextPath()%>/vistas/img/terreno6.jpg"  />
  	</div>
  	
  	<div class="mx-5 max-w-sm bg-white border border-gray-200 rounded-lg shadow-lg dark:bg-gray-800 dark:border-gray-700" >
  		<img class="rounded-lg hover:scale-150" src="<%=request.getContextPath()%>/vistas/img/terreno3.jpg"  />
  	</div>
  	
  	<div class="mx-5 max-w-sm bg-white border border-gray-200 rounded-lg shadow-lg dark:bg-gray-800 dark:border-gray-700" >
  		<img class="rounded-lg hover:scale-150" src="<%=request.getContextPath()%>/vistas/img/terreno4.jpg"  />
  	</div>
  	
  	<div class="mx-5 max-w-sm bg-white border border-gray-200 rounded-lg shadow-lg dark:bg-gray-800 dark:border-gray-700" >
  		<img class="rounded-lg hover:scale-150" src="<%=request.getContextPath()%>/vistas/img/terreno5.jpg"  />
  	</div>
	
		
		
</div>
	

<!-- Scripts -->


<!-- Footer -->
<jsp:include page="layout/footer.jsp"></jsp:include>

</div>

</body>
</html>