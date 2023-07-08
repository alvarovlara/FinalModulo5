package controlador;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import modelo.Usuario;

import java.io.IOException;

import implementacion.UsuariosIMP;

/**
 * Servlet implementation class DetalleUsuarioSRVL
 */
public class DetalleUsuarioSRVL extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

    public DetalleUsuarioSRVL() {
        super();
       
    }


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			
        // Obtener el ID del usuario a editar desde la solicitud
        int idUsuario = Integer.parseInt(request.getParameter("id"));
        
        // Obtener el usuario de la base de datos utilizando el ID
        UsuariosIMP usuImp = new UsuariosIMP();
        Usuario usuario = usuImp.readOne(idUsuario);
        
        // Verificar si el usuario existe
        if (usuario != null) {
            // Asignar el usuario a los atributos de la solicitud
            request.setAttribute("el_usuario", usuario);
            
            // Reenviar a la vista de edición de usuario
            getServletContext().getRequestDispatcher("/vistas/DetalleUsuario.jsp").forward(request, response);
        } else {
            // El usuario no existe, redirigir a la página de error o mostrar un mensaje de error
            response.sendRedirect(request.getContextPath() + "/Error.jsp");
        }
		
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

}
