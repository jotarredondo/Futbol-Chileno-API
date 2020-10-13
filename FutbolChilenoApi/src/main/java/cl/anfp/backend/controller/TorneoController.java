package cl.anfp.backend.controller;


import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseStatus;
import org.springframework.web.bind.annotation.RestController;
import cl.anfp.backend.modelo.Torneo;
import cl.anfp.backend.servicio.TorneoServicioImp;

@RestController
@RequestMapping("/api/v1/torneo")
public class TorneoController {
	
	@Autowired
	TorneoServicioImp torneoServicio;

	
	@GetMapping
	@ResponseStatus(HttpStatus.OK)
	public List<Torneo> findAll(){
		return torneoServicio.findAll();
	}
	
	
	@PostMapping("/{id}")
	@ResponseStatus(HttpStatus.CREATED)
	public void create(@PathVariable Integer id, @RequestBody Torneo torneo) {
		torneoServicio.save(id,torneo);
	}
	
	
	@DeleteMapping("/{id}")
	@ResponseStatus(HttpStatus.OK)
	void delete (@PathVariable Integer id){
		torneoServicio.delete(id);	
	}
	
}
