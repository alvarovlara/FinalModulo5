package controlador;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * Servlet implementation class ContactoConsolaSRVL
 */
public class ContactoConsolaSRVL extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

    public ContactoConsolaSRVL() {
        super();
        // TODO Auto-generated constructor stub
    }


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		//Recuperar datos POST
		String nombre = request.getParameter("nombre");
        String apellidos = request.getParameter("apellidos");
        String correo = request.getParameter("correo");
        Integer telefono = Integer.parseInt(request.getParameter("telefono"));
        String comentarios = request.getParameter("comentarios");
        
        //Mostrar en consola los datos
        System.out.println("Nombre: "+nombre);
        System.out.println("Apellidos: "+apellidos);
        System.out.println("Correo: "+correo);
        System.out.println("Telefono: "+telefono);
        System.out.println("Comentarios: "+comentarios);
		
        //mensaje a mostrar
        request.setAttribute("mensaje", "Su contacto fue enviado exitosamente (a la consola eclipse), regresando al inicio...");
        
        //redir a el jsp del mensaje
        request.getRequestDispatcher("/vistas/mensaje.jsp").forward(request, response);
        
		
	}

}
