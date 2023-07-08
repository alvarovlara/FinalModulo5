package modelo;

public class Capacitacion {
	private int id;
	private String nombre;
	private String relator;
	private int valor;
	private int cupos;
	private int horarios;
	private String comentarios;
	

    public Capacitacion() {
    	
    }
    
    public Capacitacion(int id) {
    	this.id = id;
    }

	public Capacitacion(int id, String nombre, String relator, int valor, int cupos, int horarios, String comentarios) {
		super();
		this.id = id;
		this.nombre = nombre;
		this.relator = relator;
		this.valor = valor;
		this.cupos = cupos;
		this.horarios = horarios;
		this.comentarios = comentarios;
	}
    
	public Capacitacion(String nombre, String relator, int valor, int cupos, int horarios, String comentarios) {
		super();
		
		this.nombre = nombre;
		this.relator = relator;
		this.valor = valor;
		this.cupos = cupos;
		this.horarios = horarios;
		this.comentarios = comentarios;
	}

	public String getHorario(int valor) {
	    switch (valor) {
	        case 1:
	            return "8:30 a 11:30";
	        case 2:
	            return "13:30 a 15:30";
	        case 3:
	            return "17:30 a 19:30";
	        default:
	            return "";
	    }
	}


	@Override
	public String toString() {
		return "Capacitacion [id=" + id + ", nombre=" + nombre + ", relator=" + relator + ", valor=" + valor
				+ ", cupos=" + cupos + ", horarios=" + horarios + ", comentarios=" + comentarios + "]";
	}


	public int getId() {
		return id;
	}


	public void setId(int id) {
		this.id = id;
	}


	public String getNombre() {
		return nombre;
	}


	public void setNombre(String nombre) {
		this.nombre = nombre;
	}


	public String getRelator() {
		return relator;
	}


	public void setRelator(String relator) {
		this.relator = relator;
	}


	public int getValor() {
		return valor;
	}


	public void setValor(int valor) {
		this.valor = valor;
	}


	public int getCupos() {
		return cupos;
	}


	public void setCupos(int cupos) {
		this.cupos = cupos;
	}


	public int getHorarios() {
		return horarios;
	}


	public void setHorarios(int horarios) {
		this.horarios = horarios;
	}


	public String getComentarios() {
		return comentarios;
	}


	public void setComentarios(String comentarios) {
		this.comentarios = comentarios;
	}
	
	
}
