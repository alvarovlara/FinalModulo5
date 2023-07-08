package modelo;

public class Cliente extends Usuario{
	
	private String rut;
	private String nombres;
	private String apellidos;
	private int telefono;
	private String afp;
	private int salud;
	private String direccion;
	private String comuna;
	private int edad;
	
	
	public Cliente() {
		super();
		
	}
	

	public Cliente(int id, String usuario, TipoUsuario tipo, String password, String rut, String nombres, String apellidos, int telefono, String afp, int salud, String direccion, String comuna, int edad) {
		super(id, usuario, tipo, password);
		
		this.rut = rut;
		this.nombres = nombres;
		this.apellidos = apellidos;
		this.telefono = telefono;
		this.afp = afp;
		this.salud = salud;
		this.direccion = direccion;
		this.comuna = comuna;
		this.edad = edad;
		
	}
	
	
	public Cliente(String usuario, TipoUsuario tipo, String password, String rut, String nombres, String apellidos, int telefono, String afp, int salud, String direccion, String comuna, int edad) {
		super(usuario, tipo, password);
		
		this.rut = rut;
		this.nombres = nombres;
		this.apellidos = apellidos;
		this.telefono = telefono;
		this.afp = afp;
		this.salud = salud;
		this.direccion = direccion;
		this.comuna = comuna;
		this.edad = edad;
		
	}
	
	
	public Cliente(int id) {
		super(id);
		
		
	}
	

	public String getRut() {
		return rut;
	}
	
	public void setRut(String rut) {
		this.rut = rut;
	}
	
	public String getNombres() {
		return nombres;
	}
	
	public void setNombres(String nombres) {
		this.nombres = nombres;
	}
	
	public String getApellidos() {
		return apellidos;
	}
	
	public void setApellidos(String apellidos) {
		this.apellidos = apellidos;
	}
	
	public int getTelefono() {
		return telefono;
	}
	
	public void setTelefono(int telefono) {
		this.telefono = telefono;
	}
	
	public String getAfp() {
		return afp;
	}
	
	public void setAfp(String afp) {
		this.afp = afp;
	}
	
	public int getSalud() {
		return salud;
	}
	
	public void setSalud(int salud) {
		this.salud = salud;
	}
	
	public String getDireccion() {
		return direccion;
	}
	
	public void setDireccion(String direccion) {
		this.direccion = direccion;
	}
	
	public String getComuna() {
		return comuna;
	}
	
	public void setComuna(String comuna) {
		this.comuna = comuna;
	}
	
	public int getEdad() {
		return edad;
	}
	
	public void setEdad(int edad) {
		this.edad = edad;
	}
	
	@Override
	public String toString() {
		return "Cliente [rut=" + rut + ", nombres=" + nombres + ", apellidos=" + apellidos + ", telefono=" + telefono
				+ ", afp=" + afp + ", salud=" + salud + ", direccion=" + direccion + ", comuna=" + comuna + ", edad="
				+ edad + "]";
	}
	
	

}
