package implementacion;

	import java.sql.Connection;
	import java.sql.PreparedStatement;
	import java.sql.ResultSet;
	import java.sql.SQLException;
	import java.sql.Statement;
	import java.util.ArrayList;
	import java.util.List;

	import modelo.Capacitacion;
	import conexion.Conexion;
	import interfaces.ICapacitacion;

	public class CapacitacionIMP  implements ICapacitacion{
		
		private Connection cn = null;

		@Override
		public void create(Capacitacion c) {
			String sql = "INSERT INTO capacitacion  (nombre,  relator,  valor,  cupos,  horarios,  comentarios) VALUES (?,?,?,?,?,?)";
			try {
				cn = Conexion.getConn();
				PreparedStatement ppStm = cn.prepareStatement(sql);
				ppStm.setString(1, c.getNombre());
				ppStm.setString(2, c.getRelator());
				ppStm.setInt(3, c.getValor());
				ppStm.setInt(4, c.getCupos());
				ppStm.setInt(5, c.getHorarios());
				ppStm.setString(6, c.getComentarios());

				
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
		public List<Capacitacion> readAll() {
			String sql = "SELECT id, nombre,  relator,  valor,  cupos,  horarios,  comentarios FROM capacitacion";
			ArrayList<Capacitacion> todos = new ArrayList<Capacitacion>();
			try {
				cn = Conexion.getConn();
				Statement stm = cn.createStatement();
				ResultSet rs = stm.executeQuery(sql);
				while(rs.next()) {
					todos.add(new Capacitacion(rs.getInt("id"), rs.getString("nombre"), rs.getString("relator"),
							rs.getInt("valor"), rs.getInt("cupos"), rs.getInt("horarios"), rs.getString("comentarios")));
				}
				rs.close();
				stm.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
			return todos;
		}

		@Override
		public Capacitacion readOne(int id) {
			String sql = "SELECT id, nombre,  relator,  valor,  cupos,  horarios,  comentarios FROM capacitacion WHERE id = "+ id;
			Capacitacion c = null;
			try {
				cn = Conexion.getConn();
				Statement stm = cn.createStatement();
				ResultSet rs = stm.executeQuery(sql);
				if(rs.next()) {
					c = new Capacitacion(rs.getInt("id"), rs.getString("nombre"), rs.getString("relator"),
							rs.getInt("valor"), rs.getInt("cupos"), rs.getInt("horarios"), rs.getString("comentarios"));
				}
				
				rs.close();
				stm.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
			return c;
		}

		@Override
		public void update(Capacitacion c) {
			
			String query = "UPDATE capacitacion SET nombre = ?, relator = ?, valor = ?, cupos = ?, horarios = ?, comentarios = ? WHERE id = ?";
			try {
				cn = Conexion.getConn();
				PreparedStatement stm = cn.prepareStatement(query);
				stm.setString(1, c.getNombre());
				stm.setString(2, c.getRelator());
				stm.setInt(3, c.getValor());
				stm.setInt(4, c.getCupos());
				stm.setInt(5, c.getHorarios());
				stm.setString(6, c.getComentarios());
				stm.setInt(7, c.getId());
				int fila = stm.executeUpdate();
				if (fila > 0) {
					System.out.println("Registro Actualizado con exito");
				}else {
					System.out.println("Problema al actualizar el registro");
				}
				stm.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}

		@Override
		public void delete(int id) {
			String sql = "DELETE FROM capacitacion WHERE id =" + id;
			try {
				cn=Conexion.getConn();
				Statement stm = cn.createStatement();
				stm.execute(sql);
				stm.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}

		@Override
		public void delete(Capacitacion c) {
			delete(c.getId());
		}

	}

