package controlador;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

import modelo.Usuario;
import modelo.Profesional;
import modelo.Cliente;
import modelo.Administrativo;
import modelo.Capacitacion;
import modelo.Usuario.TipoUsuario;

import implementacion.UsuariosIMP;

public class CrearUsuariosSRVL extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    	
        // Obtener los parámetros del formulario
        String usuario = request.getParameter("usuario");
        String password = request.getParameter("password");
        
        String tipoString = request.getParameter("tipo"); // Obtener el valor seleccionado del elemento select
		Usuario.TipoUsuario tipoUsuario = null;
        
		// Verificar el valor seleccionado y asignar el tipo adecuado
		if (tipoString.equals("Cliente")) {
		    tipoUsuario = Usuario.TipoUsuario.Cliente;
		    
		} else if (tipoString.equals("Administrativo")) {
		    tipoUsuario = Usuario.TipoUsuario.Administrativo;
		    
		} else if (tipoString.equals("Profesional")) {
		    tipoUsuario = Usuario.TipoUsuario.Profesional;
		}
		
    
        
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
            
            UsuariosIMP nuevoCliente = new UsuariosIMP();
            // Crear un objeto Cliente
            Cliente cli = new Cliente(usuario,tipoUsuario,password,rut, nombres, apellidos, telefono,afp,salud,direccion,comuna,edad);
            
            // Obtener los demás campos adicionales para Cliente y establecerlos en el objeto
            cli.setUsuario(request.getParameter("usuario"));
            cli.setPassword(request.getParameter("password"));
            cli.setTipo(tipoUsuario);
            cli.setRut(request.getParameter("rut"));
            cli.setNombres(request.getParameter("nombres"));
            cli.setApellidos(request.getParameter("apellidos"));
            cli.setTelefono(Integer.parseInt(request.getParameter("telefono")));
            cli.setAfp(request.getParameter("afp"));
            cli.setSalud(Integer.parseInt(request.getParameter("salud")));
            cli.setDireccion(request.getParameter("direccion"));
            cli.setComuna(request.getParameter("comuna"));
            cli.setEdad(Integer.parseInt(request.getParameter("edad")));
            
            nuevoCliente.create(cli);
            
            
        } else if (tipoUsuario.equals(Usuario.TipoUsuario.Profesional)) {

         
            // Crear un objeto Profesional
        	String titulo = request.getParameter("titulo");
            String fechaIngreso = request.getParameter("fechaIngreso");
        	
        	UsuariosIMP nuevoProfesional = new UsuariosIMP();
        	Profesional pro = new Profesional(usuario, tipoUsuario, password, titulo, fechaIngreso);
            
        	pro.setUsuario(request.getParameter("usuario"));
        	pro.setPassword(request.getParameter("password"));
        	pro.setTipo(tipoUsuario);
        	pro.setTitulo(request.getParameter("titulo"));
        	pro.setFechaIngreso(request.getParameter("fechaIngreso"));
            
        	nuevoProfesional.create(pro);
            
        } else if (tipoUsuario.equals(Usuario.TipoUsuario.Administrativo)) {
        	
        	String area = request.getParameter("area");
            String experiencia = request.getParameter("experiencia");
        	
            UsuariosIMP nuevoAdministrativo = new UsuariosIMP();
            Administrativo adm = new Administrativo(usuario, tipoUsuario, password, area, experiencia);
        	
            adm.setUsuario(request.getParameter("usuario"));
            adm.setPassword(request.getParameter("password"));
            adm.setTipo(tipoUsuario);
            adm.setArea(request.getParameter("area"));
            adm.setExperienciaPrevia(request.getParameter("experiencia"));
            
            nuevoAdministrativo.create(adm);

        }
        
    	// reenviar a la lista
	    response.sendRedirect(request.getContextPath() + "/ListarUsuariosSRVL");


    }
}
