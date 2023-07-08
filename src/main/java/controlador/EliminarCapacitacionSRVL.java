package controlador;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

import implementacion.CapacitacionIMP;


public class EliminarCapacitacionSRVL extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public EliminarCapacitacionSRVL() {
        super();
        
    }


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String idParam = request.getParameter("id");
        int id = Integer.parseInt(idParam); // Convierte el parámetro a tipo int
        
     // Instancia del objeto Procesa capacitacion
     		CapacitacionIMP capBorrar = new CapacitacionIMP();
     		
     		capBorrar.delete(id);
            
            response.sendRedirect(request.getContextPath() + "/ListarCapacitacionesSRVL");
		
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		}

}
