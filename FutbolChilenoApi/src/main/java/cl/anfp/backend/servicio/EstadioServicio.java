package cl.anfp.backend.servicio;

import java.util.List;
import cl.anfp.backend.modelo.Estadio;

public interface EstadioServicio {
	
	public List<Estadio> findAll();
	
	public Estadio findById(Integer id);
	
	public List<Estadio> findByName(String nombre);
	
	public void save (Estadio estadio); 
	
	public void delete (Integer id);
	
	public void update(Integer id, Estadio estadio);

}
