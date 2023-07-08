package controlador;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import conexion.Conexion;

/**
 * Servlet implementation class LoginSRVL
 */
public class LoginSRVL extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public LoginSRVL() {
        super();
      
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

	

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String el_usuario = request.getParameter("usuario");
        String la_password = request.getParameter("password");
        
        try {
        	
        	Connection con = Conexion.getConn();
        	
        	PreparedStatement stm = con.prepareStatement("SELECT * FROM usuarios WHERE usuario = ? AND password = ?");
        	stm.setString(1, el_usuario);
			stm.setString(2, la_password);
			
			ResultSet rs = stm.executeQuery();
			
			if(rs.next()) {
				
				String tipo = rs.getString("tipo");
				int id = rs.getInt("id");

				HttpSession session = request.getSession();
	            session.setAttribute("usuario", el_usuario);
	            
	            session.setAttribute("tipo", tipo);
	            session.setAttribute("id", id);

	            request.getRequestDispatcher("/vistas/inicio.jsp").forward(request, response);
				
			} else {
	            // Inicio de sesión incorrecto
	            request.setAttribute("mensageError", "Credenciales incorrectas");
	            request.getRequestDispatcher("/vistas/index.jsp").forward(request, response);
	        }
			rs.close();
			stm.close();
	
		} catch (Exception e) {
			e.printStackTrace();
		}
		
	}
		
	}

