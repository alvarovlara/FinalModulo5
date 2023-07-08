package interfaces;

import java.util.List;

import modelo.Capacitacion;


public interface ICapacitacion {
	
	public void create(Capacitacion c);
	public List<Capacitacion> readAll();
	public Capacitacion readOne(int id);
	public void update(Capacitacion c);
	public void delete(int id);
	public void delete(Capacitacion c);

}
