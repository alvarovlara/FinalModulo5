package controlador;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

import modelo.Administrativo;
import modelo.Cliente;
import modelo.Profesional;
import modelo.Usuario;
import implementacion.UsuariosIMP;

/**
 * Servlet implementation class EditarUsuarioSRVL
 */
public class EditarUsuarioSRVL extends HttpServlet {
    private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public EditarUsuarioSRVL() {
        super();
        // TODO Auto-generated constructor stub
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
            getServletContext().getRequestDispatcher("/vistas/EditarUsuario.jsp").forward(request, response);
        } else {
            // El usuario no existe, redirigir a la página de error o mostrar un mensaje de error
            response.sendRedirect(request.getContextPath() + "/Error.jsp");
        }
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int idUsuario = Integer.parseInt(request.getParameter("id"));
        String usuario = request.getParameter("usuario");
        String password = request.getParameter("password");

        String tipoString = request.getParameter("tipo");
        Usuario.TipoUsuario tipoUsuario = null;

        if (tipoString.equals("Cliente")) {
            tipoUsuario = Usuario.TipoUsuario.Cliente;
        } else if (tipoString.equals("Administrativo")) {
            tipoUsuario = Usuario.TipoUsuario.Administrativo;
        } else if (tipoString.equals("Profesional")) {
            tipoUsuario = Usuario.TipoUsuario.Profesional;
        }

        UsuariosIMP usuariosIMP = new UsuariosIMP(); // Crear una instancia única de UsuariosIMP

        if (tipoUsuario.equals(Usuario.TipoUsuario.Cliente)) {
            String rut = request.getParameter("rut");
            String nombres = request.getParameter("nombres");
            String apellidos = request.getParameter("apellidos");
            int telefono = Integer.parseInt(request.getParameter("telefono"));
            String afp = request.getParameter("afp");
            int salud = Integer.parseInt(request.getParameter("salud"));
            String direccion = request.getParameter("direccion");
            String comuna = request.getParameter("comuna");
            int edad = Integer.parseInt(request.getParameter("edad"));

            // Crear un objeto Cliente
            Cliente cliente = new Cliente(idUsuario, usuario, tipoUsuario, password, rut, nombres, apellidos, telefono, afp, salud, direccion, comuna, edad);
            usuariosIMP.update(cliente);

        } else if (tipoUsuario.equals(Usuario.TipoUsuario.Profesional)) {
            String titulo = request.getParameter("titulo");
            String fechaIngreso = request.getParameter("fechaIngreso");

            // Crear un objeto Profesional
            Profesional profesional = new Profesional(idUsuario, usuario, tipoUsuario, password, titulo, fechaIngreso);
            usuariosIMP.update(profesional);

        } else if (tipoUsuario.equals(Usuario.TipoUsuario.Administrativo)) {
            String area = request.getParameter("area");
            String experiencia = request.getParameter("experiencia");

            // Crear un objeto Administrativo
            Administrativo administrativo = new Administrativo(idUsuario, usuario, tipoUsuario, password, area, experiencia);
            usuariosIMP.update(administrativo);
        }

        // Redireccionar a la lista
        response.sendRedirect(request.getContextPath() + "/ListarUsuariosSRVL");
    }

	    
	    
    
}
