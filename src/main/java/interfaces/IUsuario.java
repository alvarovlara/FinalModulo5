package interfaces;

import java.util.List;

import modelo.Usuario;

public interface IUsuario {
	
	public void create(Usuario c);
	public List<Usuario> readAll();
	public Usuario readOne(int id);
	public void update(Usuario c);
	public void delete(int id);
	public void delete(Usuario c);

}
