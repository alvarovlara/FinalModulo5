package controlador;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;


import modelo.Capacitacion;
import implementacion.CapacitacionIMP;

/**
 * Servlet implementation class EditarCapacitacionSRVL
 */
public class EditarCapacitacionSRVL extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

    public EditarCapacitacionSRVL() {
        super();
      
    }


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String idParam = request.getParameter("id");
        int id = Integer.parseInt(idParam); // Convierte el parámetro a tipo int
        
     // Instancia del objeto Procesa capacitacion
 		CapacitacionIMP capEditar = new CapacitacionIMP();
 		
 		 Capacitacion la_capacitacion = capEditar.readOne(id);

         // Verificar si se encontró la capacitación
         if (la_capacitacion != null) {
             // Agregar la capacitación al request
             request.setAttribute("capacitacion", la_capacitacion);

             // Redireccionar al JSP de edición
             getServletContext().getRequestDispatcher("/vistas/EditarCapacitacion.jsp").forward(request, response);
         } else {
             // Capacitación no encontrada
         	getServletContext().getRequestDispatcher("/vistas/ListarCapacitaciones.jsp").forward(request, response);
         }
		
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		

		 // Obtener los parámetros del formulario
		String idParam = request.getParameter("id");
		int id = Integer.parseInt(idParam); // Convierte el parámetro a tipo int si es necesario

		String nombre = request.getParameter("nombre");
		String relator = request.getParameter("relator");
		int valor = Integer.parseInt(request.getParameter("valor")); // Convierte el parámetro a tipo int si es necesario
		int cupos = Integer.parseInt(request.getParameter("cupos")); // Convierte el parámetro a tipo int si es necesario
		int horarios = Integer.parseInt(request.getParameter("horarios")); // Convierte el parámetro a tipo int si es necesario
		String comentarios = request.getParameter("comentarios");

		Capacitacion capacitacion = new Capacitacion(id, nombre, relator, valor, cupos, horarios, comentarios);
		
		CapacitacionIMP capActualiza = new CapacitacionIMP();
		
		capActualiza.update(capacitacion);


      // Redireccionar a la página de listado de capacitaciones
		response.sendRedirect(request.getContextPath() + "/ListarCapacitacionesSRVL");
		
		
	}

}
