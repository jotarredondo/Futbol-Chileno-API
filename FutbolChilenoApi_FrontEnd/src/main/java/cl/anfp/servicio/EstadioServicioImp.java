package cl.anfp.servicio;

import java.util.Arrays;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.client.RestTemplate;
import cl.anfp.modelo.EstadioDto;

@Service
public class EstadioServicioImp implements EstadioServicio{
	
	@Autowired
	RestTemplate restTemplate;
	
	@Autowired
	ClubServicioImp clubServicio;

	@Override
	public List<EstadioDto> findAll() {
		
		EstadioDto[] listaTemp =  restTemplate.getForObject("http://localhost:8080/api/v1/estadio", EstadioDto[].class);
	    List <EstadioDto> lista = Arrays.asList(listaTemp);;
		
		return lista;
	}

	@Override
	public EstadioDto findById(Integer id) {
		
		return restTemplate.getForObject("http://localhost:8080/api/v1/estadio" + "/" + id, EstadioDto.class);
	}

	@Override
	public List<EstadioDto> findByName(String nombre) {
	
		EstadioDto[] listaTemp =  restTemplate.getForObject("http://localhost:8080/api/v1/estadio" +"/nombre/" + nombre , EstadioDto[].class);
	    List <EstadioDto> lista = Arrays.asList(listaTemp);;
		
		return lista;
	}

	@Override
	public void save(EstadioDto estadio) {
		restTemplate.postForObject("http://localhost:8080/api/v1/estadio", estadio, EstadioDto.class);
		
	}

	@Override
	public void delete(Integer id) {
		
		restTemplate.delete("http://localhost:8080/api/v1/estadio" + "/" + id);
		
	}

	@Override
	public void update(Integer id, EstadioDto estadio) {
		
		restTemplate.put("http://localhost:8080/api/v1/estadio" + "/" + id, estadio);
		
	}

}
