package controlador;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import modelo.Capacitacion;
import modelo.Usuario;
import implementacion.CapacitacionIMP;
import implementacion.UsuariosIMP;


//@WebServlet("/ListarCapacitacionesSRVL")
public class ListarCapacitacionesSRVL extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public ListarCapacitacionesSRVL() {
        super();
        
    }

	
    private void listarCapacitaciones(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    	CapacitacionIMP capImp = new CapacitacionIMP();
        List<Capacitacion> listaCap = capImp.readAll();
        request.setAttribute("listado", listaCap);
        getServletContext().getRequestDispatcher("/vistas/ListarCapacitaciones.jsp").forward(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    	listarCapacitaciones(request, response);
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    	listarCapacitaciones(request, response);
    }
}
	
