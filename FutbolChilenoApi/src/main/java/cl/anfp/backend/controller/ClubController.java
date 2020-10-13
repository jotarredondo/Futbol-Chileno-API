package cl.anfp.backend.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseStatus;
import org.springframework.http.HttpStatus;
import org.springframework.web.bind.annotation.RestController;
import cl.anfp.backend.modelo.Club;
import cl.anfp.backend.servicio.ClubServicioImp;

@RestController
@RequestMapping("/api/v1/club")
public class ClubController {
	
	
	@Autowired
	ClubServicioImp clubServicio;
	
	
	@GetMapping
	@ResponseStatus(HttpStatus.OK)
	public List<Club> findAll(){
		return clubServicio.findAll();
	}
	
	
	@GetMapping("/{id}")
	@ResponseStatus(HttpStatus.OK)
	public Club findById (@PathVariable Integer id) {
		return clubServicio.findById(id);
	}
	
	@GetMapping("/nombre/{nombre}")
	@ResponseStatus(HttpStatus.OK)
	public List<Club> findByName (@PathVariable String nombre) {
		return clubServicio.findByName(nombre);
	}

	@PostMapping
	@ResponseStatus(HttpStatus.CREATED)
	public void create(@RequestBody Club club) {
		clubServicio.save(club);
	}
	
	@PutMapping("/{id}")
	@ResponseStatus(HttpStatus.OK)
	void update(@PathVariable Integer id, @RequestBody Club club) {
		clubServicio.update(id, club);
	}
	
	
	@DeleteMapping("/{id}")
	@ResponseStatus(HttpStatus.OK)
	void delete (@PathVariable Integer id){
		clubServicio.delete(id);	
	}
	
}
