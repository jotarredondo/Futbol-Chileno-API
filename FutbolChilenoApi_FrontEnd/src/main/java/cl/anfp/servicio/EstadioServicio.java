package cl.anfp.servicio;

import java.util.List;

import cl.anfp.modelo.EstadioDto;



public interface EstadioServicio {

	public List<EstadioDto> findAll();
	
	public EstadioDto findById(Integer id);
	
	public List<EstadioDto> findByName(String nombre);
	
	public void save (EstadioDto estadio); 
	
	public void delete (Integer id);
	
	public void update(Integer id, EstadioDto estadio);
	
	
}
