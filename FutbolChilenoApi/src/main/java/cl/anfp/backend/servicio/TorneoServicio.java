package cl.anfp.backend.servicio;

import java.util.List;
import cl.anfp.backend.modelo.Torneo;

public interface TorneoServicio {
	
	public List<Torneo> findAll();
	
	public void save (Integer id,Torneo torneo);
	
	public void delete (Integer id);
	

}
