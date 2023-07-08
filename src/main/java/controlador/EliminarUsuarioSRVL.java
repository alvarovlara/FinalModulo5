package controlador;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

import modelo.Usuario;
import implementacion.UsuariosIMP;

/**
 * Servlet implementation class EliminarUsuarioSRVL
 */
public class EliminarUsuarioSRVL extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public EliminarUsuarioSRVL() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		
		String idParam = request.getParameter("id");
        int id = Integer.parseInt(idParam); // Convierte el parámetro a tipo int

        UsuariosIMP usuBorrar = new UsuariosIMP();
        
        usuBorrar.delete(id);
        
        response.sendRedirect(request.getContextPath() + "/ListarUsuariosSRVL");
		
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

}
