package cl.anfp.servicio;

import java.util.Arrays;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.client.RestTemplate;
import cl.anfp.modelo.ClubDto;

@Service
public class ClubServicioImp implements ClubServicio {
	
	@Autowired
	RestTemplate restTemplate;

	@Override
	public List<ClubDto> findAll() {
		
		ClubDto[] listaTemp =  restTemplate.getForObject("http://localhost:8080/api/v1/club", ClubDto[].class);
	    List <ClubDto> lista = Arrays.asList(listaTemp);;
		
		return lista;
	}

	@Override
	public ClubDto findById(Integer id) {
		
		return restTemplate.getForObject("http://localhost:8080/api/v1/club" + "/" + id, ClubDto.class);
	}

	@Override
	public List<ClubDto> findByName(String nombre) {
		
		ClubDto[] listaTemp =  restTemplate.getForObject("http://localhost:8080/api/v1/club" +"/nombre/" + nombre , ClubDto[].class);
	    List <ClubDto> lista = Arrays.asList(listaTemp);;
		
		return lista;
	}

	@Override
	public void save(ClubDto club) {
		
		restTemplate.postForObject("http://localhost:8080/api/v1/club", club, ClubDto.class);
		
	}

	@Override
	public void update(Integer id, ClubDto club) {
		
		restTemplate.put("http://localhost:8080/api/v1/club" + "/" + id, club);
		
		
	}

	@Override
	public void delete(Integer id) {
	
		restTemplate.delete("http://localhost:8080/api/v1/club" + "/" + id);
		
	}

}
