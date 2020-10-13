package cl.anfp.backend.controller;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseStatus;
import org.springframework.web.bind.annotation.RestController;
import cl.anfp.backend.modelo.Estadio;
import cl.anfp.backend.servicio.EstadioServicio;

@RestController
@RequestMapping("/api/v1/estadio")
public class EstadioController {
	
	
	@Autowired
	EstadioServicio estadioServicio;
	
	
	@GetMapping
	@ResponseStatus(HttpStatus.OK)
	public List<Estadio> findAll(){
		return estadioServicio.findAll();
	}
	
	@GetMapping("/{id}")
	@ResponseStatus(HttpStatus.OK)
	public Estadio findById (@PathVariable Integer id) {
		return estadioServicio.findById(id);
	}
	
	@GetMapping("/nombre/{nombre}")
	@ResponseStatus(HttpStatus.OK)
	public List<Estadio> findByName (@PathVariable String nombre) {
		return estadioServicio.findByName(nombre);
	}
	
	@PostMapping
	@ResponseStatus(HttpStatus.CREATED)
	public void create(@RequestBody Estadio estadio) {
		estadioServicio.save(estadio);
	}
	
	@PutMapping("/{id}")
	@ResponseStatus(HttpStatus.OK)
	void update(@PathVariable Integer id, @RequestBody Estadio estadio) {
		estadioServicio.update(id, estadio);
	}
	
	@DeleteMapping("/{id}")
	@ResponseStatus(HttpStatus.OK)
	void delete (@PathVariable Integer id){
		estadioServicio.delete(id);	
	}
	

}
