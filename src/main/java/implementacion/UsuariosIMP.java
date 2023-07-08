package implementacion;

	import java.sql.Connection;
	import java.sql.PreparedStatement;
	import java.sql.ResultSet;
	import java.sql.SQLException;
	import java.sql.Statement;
	import java.util.ArrayList;
	import java.util.List;

	import modelo.Administrativo;
	import modelo.Cliente;
	import modelo.Profesional;
	import modelo.Usuario;
	import modelo.Usuario.TipoUsuario;
	import conexion.Conexion;
	import interfaces.IUsuario;

	public class UsuariosIMP  implements IUsuario {
		
		private Connection cn = null;

		@Override
		public void create(Usuario u) {
			String sql = "INSERT INTO usuarios  (usuario,tipo,password,rut,nombres,apellidos,telefono,afp,salud,direccion,comuna,edad,titulo,fechaIngreso,area,experienciaPrevia) VALUES (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
			try {
				cn = Conexion.getConn();
				PreparedStatement ppStm = cn.prepareStatement(sql);
			/*	ppStm.setString(1, u.getUsuario());
				ppStm.setString(2, u.getTipo().toString());
				ppStm.setString(3, u.getPassword());
				*/
				
				if	(u.getTipo() == Usuario.TipoUsuario.Cliente) {
					Cliente cliente = (Cliente) u;
					
					ppStm.setString(1, u.getUsuario());
					ppStm.setString(2, u.getTipo().toString());
					ppStm.setString(3, u.getPassword());
					
					ppStm.setString(4, cliente.getRut());
					ppStm.setString(5, cliente.getNombres());
					ppStm.setString(6, cliente.getApellidos());
					ppStm.setInt(7, cliente.getTelefono());
					ppStm.setString(8, cliente.getAfp());
					ppStm.setInt(9, cliente.getSalud());
					ppStm.setString(10, cliente.getDireccion());
					ppStm.setString(11, cliente.getComuna());
					ppStm.setInt(12, cliente.getEdad());					
					
					ppStm.setNull(13, java.sql.Types.VARCHAR);
					ppStm.setNull(14, java.sql.Types.VARCHAR);
					ppStm.setNull(15, java.sql.Types.VARCHAR);
					ppStm.setNull(16, java.sql.Types.VARCHAR);
					
					
				} else if (u.getTipo() == Usuario.TipoUsuario.Profesional) {
					Profesional profesional = (Profesional) u;
					
					ppStm.setString(1, u.getUsuario());
					ppStm.setString(2, u.getTipo().toString());
					ppStm.setString(3, u.getPassword());
					
					ppStm.setNull(4, java.sql.Types.VARCHAR);
					ppStm.setNull(5, java.sql.Types.VARCHAR);
					ppStm.setNull(6, java.sql.Types.VARCHAR);
					ppStm.setNull(7, java.sql.Types.VARCHAR);
					ppStm.setNull(8, java.sql.Types.VARCHAR);
					ppStm.setNull(9, java.sql.Types.VARCHAR);
					ppStm.setNull(10, java.sql.Types.VARCHAR);
					ppStm.setNull(11, java.sql.Types.VARCHAR);
					ppStm.setNull(12, java.sql.Types.VARCHAR);
					
					ppStm.setString(13, profesional.getTitulo());
					ppStm.setString(14, profesional.getFechaIngreso());
					
					ppStm.setNull(15, java.sql.Types.VARCHAR);
					ppStm.setNull(16, java.sql.Types.VARCHAR);
										
				} else if (u.getTipo() == Usuario.TipoUsuario.Administrativo) {
					Administrativo administrativo = (Administrativo) u;
					
					ppStm.setString(1, u.getUsuario());
					ppStm.setString(2, u.getTipo().toString());
					ppStm.setString(3, u.getPassword());
					
					ppStm.setNull(4, java.sql.Types.VARCHAR);
					ppStm.setNull(5, java.sql.Types.VARCHAR);
					ppStm.setNull(6, java.sql.Types.VARCHAR);
					ppStm.setNull(7, java.sql.Types.VARCHAR);
					ppStm.setNull(8, java.sql.Types.VARCHAR);
					ppStm.setNull(9, java.sql.Types.VARCHAR);
					ppStm.setNull(10, java.sql.Types.VARCHAR);
					ppStm.setNull(11, java.sql.Types.VARCHAR);
					ppStm.setNull(12, java.sql.Types.VARCHAR);
					ppStm.setNull(13, java.sql.Types.VARCHAR);
					ppStm.setNull(14, java.sql.Types.VARCHAR);
					
					ppStm.setString(15, administrativo.getArea());
					ppStm.setString(16, administrativo.getExperienciaPrevia());					
					
	            } else {
	            	
	            	throw new IllegalArgumentException("Tipo de usuario no válido");
	            }

				if(!ppStm.execute()) {
					System.out.println("Registro Creado");
				}else {
					System.out.println("Registro fallo");
				}
				ppStm.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}

		@Override
		public List<Usuario> readAll() {
		    List<Usuario> usuarios = new ArrayList<>();
		    String sql = "SELECT * FROM usuarios";

		    try {
		        cn = Conexion.getConn();
		        PreparedStatement ppStm = cn.prepareStatement(sql);
		        ResultSet resultSet = ppStm.executeQuery();

		        while (resultSet.next()) {
		        	
		        	int id = resultSet.getInt("id");
		            String usuario = resultSet.getString("usuario");
		            TipoUsuario tipo = TipoUsuario.valueOf(resultSet.getString("tipo"));
		            String password = resultSet.getString("password");

		            if (tipo == Usuario.TipoUsuario.Cliente) {
		            	
		                String rut = resultSet.getString("rut");
		                String nombres = resultSet.getString("nombres");
		                String apellidos = resultSet.getString("apellidos");
		                int telefono = resultSet.getInt("telefono");
		                String afp = resultSet.getString("afp");
		                int salud = resultSet.getInt("salud");
		                String direccion = resultSet.getString("direccion");
		                String comuna = resultSet.getString("comuna");
		                int edad = resultSet.getInt("edad");

		                Cliente cliente = new Cliente(id,usuario, tipo, password, rut, nombres, apellidos, telefono, afp, salud, direccion, comuna, edad);
		                usuarios.add(cliente);
		                
		            } else if (tipo == Usuario.TipoUsuario.Profesional) {
		            	
		                String titulo = resultSet.getString("titulo");
		                String fechaIngreso = resultSet.getString("fechaIngreso");

		                Profesional profesional = new Profesional(id,usuario, tipo, password, titulo, fechaIngreso);
		                usuarios.add(profesional);
		                
		            } else if (tipo == Usuario.TipoUsuario.Administrativo) {
		            	
		                String area = resultSet.getString("area");
		                String experienciaPrevia = resultSet.getString("experienciaPrevia");

		                Administrativo administrativo = new Administrativo(id,usuario, tipo, password, area, experienciaPrevia);
		                usuarios.add(administrativo);
		            }
		        }

		        resultSet.close();
		        ppStm.close();
		    } catch (SQLException e) {
		        e.printStackTrace();
		    }

		    return usuarios;
		}

			

		@Override
		public Usuario readOne(int id) {
		    Usuario usuario = null;
		    String sql = "SELECT * FROM usuarios WHERE id = ?";

		    try {
		        cn = Conexion.getConn();
		        PreparedStatement ppStm = cn.prepareStatement(sql);
		        ppStm.setInt(1, id);
		        ResultSet resultSet = ppStm.executeQuery();

		        if (resultSet.next()) {
	
		        	TipoUsuario tipo = TipoUsuario.valueOf(resultSet.getString("tipo"));
		        	
		            if (tipo == Usuario.TipoUsuario.Cliente) {
		            	
		            	usuario = new Cliente(resultSet.getInt("id"), resultSet.getString("usuario"), Usuario.TipoUsuario.valueOf(resultSet.getString("tipo")), resultSet.getString("password"),resultSet.getString("rut"),resultSet.getString("nombres"),resultSet.getString("apellidos"),resultSet.getInt("telefono"),resultSet.getString("afp"),resultSet.getInt("salud"),resultSet.getString("direccion"),resultSet.getString("comuna"),resultSet.getInt("edad"));
		                
		            
		            } else if (tipo == Usuario.TipoUsuario.Profesional) {
		            	
	
		                usuario = new Profesional(resultSet.getInt("id"), resultSet.getString("usuario"), Usuario.TipoUsuario.valueOf(resultSet.getString("tipo")), resultSet.getString("password"),resultSet.getString("titulo"),resultSet.getString("fechaIngreso"));

		                
		            } else if (tipo == Usuario.TipoUsuario.Administrativo) {
		            	

		                usuario = new Administrativo(resultSet.getInt("id"), resultSet.getString("usuario"), Usuario.TipoUsuario.valueOf(resultSet.getString("tipo")), resultSet.getString("password"),resultSet.getString("area"),resultSet.getString("experienciaPrevia"));

		            }
		        }

		        resultSet.close();
		        ppStm.close();
		    } catch (SQLException e) {
		        e.printStackTrace();
		    }

		    return usuario;
		}



		@Override
		public void update(Usuario u) {
		    String sql = "UPDATE usuarios SET usuario = ?, tipo = ?, password = ?, rut = ?, nombres = ?, apellidos = ?, telefono = ?, afp = ?, salud = ?, direccion = ?, comuna = ?, edad = ?, titulo = ?, fechaIngreso = ?, area = ?, experienciaPrevia = ? WHERE id = ?";

		    try {
		        cn = Conexion.getConn();
		        PreparedStatement ppStm = cn.prepareStatement(sql);

		        if (u.getTipo() == Usuario.TipoUsuario.Cliente) {
		            Cliente cliente = (Cliente) u;

		            ppStm.setString(1, cliente.getUsuario());
		            ppStm.setString(2, cliente.getTipo().toString());
		            ppStm.setString(3, cliente.getPassword());

		            ppStm.setString(4, cliente.getRut());
		            ppStm.setString(5, cliente.getNombres());
		            ppStm.setString(6, cliente.getApellidos());
		            ppStm.setInt(7, cliente.getTelefono());
		            ppStm.setString(8, cliente.getAfp());
		            ppStm.setInt(9, cliente.getSalud());
		            ppStm.setString(10, cliente.getDireccion());
		            ppStm.setString(11, cliente.getComuna());
		            ppStm.setInt(12, cliente.getEdad());

		            ppStm.setNull(13, java.sql.Types.VARCHAR);
		            ppStm.setNull(14, java.sql.Types.VARCHAR);
		            ppStm.setNull(15, java.sql.Types.VARCHAR);
		            ppStm.setNull(16, java.sql.Types.VARCHAR);
		            
		            ppStm.setInt(17, u.getId());

		        } else if (u.getTipo() == Usuario.TipoUsuario.Profesional) {
		            Profesional profesional = (Profesional) u;

		            ppStm.setString(1, profesional.getUsuario());
		            ppStm.setString(2, profesional.getTipo().toString());
		            ppStm.setString(3, profesional.getPassword());

		            ppStm.setNull(4, java.sql.Types.VARCHAR);
		            ppStm.setNull(5, java.sql.Types.VARCHAR);
		            ppStm.setNull(6, java.sql.Types.VARCHAR);
		            ppStm.setNull(7, java.sql.Types.INTEGER);
		            ppStm.setNull(8, java.sql.Types.VARCHAR);
		            ppStm.setNull(9, java.sql.Types.INTEGER);
		            ppStm.setNull(10, java.sql.Types.VARCHAR);
		            ppStm.setNull(11, java.sql.Types.VARCHAR);
		            ppStm.setNull(12, java.sql.Types.INTEGER);

		            ppStm.setString(13, profesional.getTitulo());
		            ppStm.setString(14, profesional.getFechaIngreso());

		            ppStm.setNull(15, java.sql.Types.VARCHAR);
		            ppStm.setNull(16, java.sql.Types.VARCHAR);
		            
		            ppStm.setInt(17, u.getId());

		        } else if (u.getTipo() == Usuario.TipoUsuario.Administrativo) {
		            Administrativo administrativo = (Administrativo) u;

		            ppStm.setString(1, administrativo.getUsuario());
		            ppStm.setString(2, administrativo.getTipo().toString());
		            ppStm.setString(3, administrativo.getPassword());

		            ppStm.setNull(4, java.sql.Types.VARCHAR);
		            ppStm.setNull(5, java.sql.Types.VARCHAR);
		            ppStm.setNull(6, java.sql.Types.VARCHAR);
		            ppStm.setNull(7, java.sql.Types.INTEGER);
		            ppStm.setNull(8, java.sql.Types.VARCHAR);
		            ppStm.setNull(9, java.sql.Types.INTEGER);
		            ppStm.setNull(10, java.sql.Types.VARCHAR);
		            ppStm.setNull(11, java.sql.Types.VARCHAR);
		            ppStm.setNull(12, java.sql.Types.INTEGER);
		            ppStm.setNull(13, java.sql.Types.VARCHAR);
		            ppStm.setNull(14, java.sql.Types.VARCHAR);

		            ppStm.setString(15, administrativo.getArea());
		            ppStm.setString(16, administrativo.getExperienciaPrevia());
		            
		            ppStm.setInt(17, u.getId());
		        }

		        
		        ppStm.executeUpdate();
		        ppStm.close();
		       
		    } catch (SQLException e) {
		        e.printStackTrace();
		    }
		}


			
			
		@Override
		public void delete(int id) {
		    String sql = "DELETE FROM usuarios WHERE id = ?";

		    try {
		        cn = Conexion.getConn();
		        PreparedStatement ppStm = cn.prepareStatement(sql);
		        ppStm.setInt(1, id);
		        ppStm.executeUpdate();
		        ppStm.close();
		    } catch (SQLException e) {
		        e.printStackTrace();
		    }
		}

		@Override
		public void delete(Usuario u) {
		    delete(u.getId());
		}

		
		

	}

