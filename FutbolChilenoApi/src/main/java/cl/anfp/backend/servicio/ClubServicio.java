package cl.anfp.backend.servicio;

import java.util.List;
import cl.anfp.backend.modelo.Club;

public interface ClubServicio {
	
	public List<Club> findAll();
	
	public Club findById(Integer id);
	
	public List<Club> findByName(String nombre);
	
	public void save (Club club);
	
	public void update (Integer id, Club club); 
	
	public void delete (Integer id);
	

	
	

}
