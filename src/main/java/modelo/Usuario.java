package modelo;

public class Usuario {
    private int id;
    private String usuario;
    private TipoUsuario tipo;
    private String password;

    public enum TipoUsuario {
        Cliente,
        Administrativo,
        Profesional
    }

    public Usuario() {
    }

	public Usuario(int id, String usuario, TipoUsuario tipo, String password) {

		this.id = id;
		this.usuario = usuario;
		this.tipo = tipo;
		this.password = password;
	}
	
	public Usuario(String usuario, TipoUsuario tipo, String password) {

		this.usuario = usuario;
		this.tipo = tipo;
		this.password = password;
	}
	
	public Usuario(int id) {

		this.id = id;
		
	}
	

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getUsuario() {
		return usuario;
	}

	public void setUsuario(String usuario) {
		this.usuario = usuario;
	}

	public TipoUsuario getTipo() {
		return tipo;
	}

	public void setTipo(TipoUsuario tipo) {
		this.tipo = tipo;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	@Override
	public String toString() {
		return "Usuario [id=" + id + ", usuario=" + usuario + ", tipo=" + tipo + ", password=" + password + "]";
	}

	
}
