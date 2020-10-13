package cl.anfp.servicio;

import java.util.List;
import cl.anfp.modelo.ClubDto;

public interface ClubServicio {
	
	public List<ClubDto> findAll();
	
	public ClubDto findById(Integer id);
	
	public List<ClubDto> findByName(String nombre);
	
	public void save (ClubDto club);
	
	public void update (Integer id, ClubDto club); 
	
	public void delete (Integer id);

}
