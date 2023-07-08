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
 * Servlet implementation class CrearCapacitacionSRVL
 */
public class CrearCapacitacionSRVL extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

    public CrearCapacitacionSRVL() {
        super();

    }


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		getServletContext().getRequestDispatcher("/vistas/CrearCapacitacion.jsp").forward(request, response);
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		// Instancia del objeto Procesa capacitacion
		CapacitacionIMP capImp = new CapacitacionIMP();
				
				//instancia objeto capacitacion
				Capacitacion cap = new Capacitacion();
				
				// obtiene y asigna atributos con GET y SET
				cap.setNombre(request.getParameter("nombre"));
				cap.setRelator(request.getParameter("relator"));
				cap.setValor(Integer.parseInt(request.getParameter("valor")));
				cap.setCupos(Integer.parseInt(request.getParameter("cupos")));
				cap.setHorarios(Integer.parseInt(request.getParameter("horarios")));
				cap.setComentarios(request.getParameter("comentarios"));
				
				//Envia el objeto cap al metodo CREATE de la clase Procesa
				capImp.create(cap);
				
				// reenviar a la lista
			    response.sendRedirect(request.getContextPath() + "/ListarCapacitacionesSRVL");
		
	}

}
