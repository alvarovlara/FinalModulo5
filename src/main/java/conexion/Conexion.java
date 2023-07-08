package conexion;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class Conexion {
	
	// Declaración de variable de conexión
	private static Connection cnx = null;
	
	// Constructor privado de la clase
	private Conexion() {
		try {
			
			// Carga del driver
			Class.forName("com.mysql.cj.jdbc.Driver");
			
			// Creamos la conexión
			cnx = DriverManager.getConnection("jdbc:mysql://localhost:3306/prevencion_riesgos","root","");
			
			// Verificamos que conn se establezca
			if(cnx!=null) {
				System.out.println("Conexion establecida");
			}else {
				System.out.println("Fallo la conexion");
			}
		}
		catch (SQLException e){
			System.out.println(e.getMessage());
		}
		catch(ClassNotFoundException e) {
			System.out.println(e.getMessage());
		}
	}

	// Metodo que instancia al constructor y crea la conexión
	public static Connection getConn() {
		if (cnx == null) {
			new Conexion();
		}
		return cnx;
	}
	
}
