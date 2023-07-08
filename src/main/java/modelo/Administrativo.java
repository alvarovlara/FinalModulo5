package modelo;

public class Administrativo extends Usuario{
	
	private String area;
	private String experienciaPrevia;
	
	
	public Administrativo() {
		super();
		
		
	}
	
	public Administrativo(int id, String usuario, TipoUsuario tipo, String password, String area, String experienciaPrevia ) {
		super(id, usuario, tipo, password);
		
		this.area = area;
		this.experienciaPrevia = experienciaPrevia;
		
	}
	
	
	public Administrativo(String usuario, TipoUsuario tipo, String password, String area, String experienciaPrevia ) {
		super(usuario, tipo, password);
		
		this.area = area;
		this.experienciaPrevia = experienciaPrevia;
		
	}
	
	public Administrativo(int id ) {
		super(id);
				
	}
	
	
	public String getArea() {
		return area;
	}
	
	public void setArea(String area) {
		this.area = area;
	}
	
	public String getExperienciaPrevia() {
		return experienciaPrevia;
	}
	
	public void setExperienciaPrevia(String experienciaPrevia) {
		this.experienciaPrevia = experienciaPrevia;
	}
	
	@Override
	public String toString() {
		return "Administrativo [area=" + area + ", experienciaPrevia=" + experienciaPrevia + "]";
	}
	
	
	
	
}
