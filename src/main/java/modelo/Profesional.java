package modelo;


public class Profesional extends Usuario{
	
	private String titulo;
	private String fechaIngreso;
	
	
	public Profesional() {
		super();
	}


	public Profesional(int id, String usuario, TipoUsuario tipo, String password, String titulo, String fechaIngreso) {
		
		super(id, usuario, tipo, password);
		
		this.titulo = titulo;
		this.fechaIngreso = fechaIngreso;
		
	}

	
	public Profesional(String usuario, TipoUsuario tipo, String password, String titulo, String fechaIngreso) {
		
		super(usuario, tipo, password);
		
		this.titulo = titulo;
		this.fechaIngreso = fechaIngreso;
		
	}
	
	
	public Profesional(int id) {
		
		super(id);

		
	}
	

	public String getTitulo() {
		return titulo;
	}


	public void setTitulo(String titulo) {
		this.titulo = titulo;
	}


	public String getFechaIngreso() {
		return fechaIngreso;
	}


	public void setFechaIngreso(String fechaIngreso) {
		this.fechaIngreso = fechaIngreso;
	}


	@Override
	public String toString() {
		return "Profesional [titulo=" + titulo + ", fechaIngreso=" + fechaIngreso + "]";
	}
	
	
}
