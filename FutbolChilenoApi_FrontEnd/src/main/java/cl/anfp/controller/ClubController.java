package cl.anfp.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import cl.anfp.modelo.ClubDto;
import cl.anfp.modelo.EstadioDto;
import cl.anfp.servicio.ClubServicio;
import cl.anfp.servicio.EstadioServicio;
import cl.anfp.servicio.TorneoServicio;

@Controller
@RequestMapping
public class ClubController {
	
	@Autowired
	ClubServicio clubServicio;
	
	@Autowired
	EstadioServicio estadioServicio;
	
	@Autowired
	TorneoServicio torneoServicio;
	
	
	@GetMapping("/")
	public String inicio () {
		return "index";
	}
	
	@PostMapping("/buscarClub")
	public String crearAlumno(ModelMap modelo, @RequestParam String nombre) {
		List<ClubDto> lista = clubServicio.findByName(nombre);
		modelo.addAttribute("lista",lista);
		return "index";
	}
	
	@GetMapping("/club")
	public String club (ModelMap modelo, @RequestParam Integer idClub ) {
		
		ClubDto club = clubServicio.findById(idClub);
		EstadioDto estadio = estadioServicio.findById(club.getEstadioLocal());
		
		modelo.addAttribute("club", club);	
		modelo.addAttribute("estadio", estadio);
		modelo.addAttribute("primeraM", torneoServicio.primeraDivisionM(club));
		modelo.addAttribute("primeraF", torneoServicio.primeraDivisionF(club));
		modelo.addAttribute("copaChileM", torneoServicio.copaChileM(club));
		modelo.addAttribute("copaChileF", torneoServicio.copaChileF(club));
		modelo.addAttribute("primeraBM", torneoServicio.primeraBM(club));
		modelo.addAttribute("primeraBF", torneoServicio.primeraBF(club));
		modelo.addAttribute("segundaM", torneoServicio.segundaDivisionM(club));
		modelo.addAttribute("libertadoresM", torneoServicio.libertadoresM(club));
		modelo.addAttribute("libertadoresF", torneoServicio.libertadoresF(club));
		modelo.addAttribute("sudamericanaM", torneoServicio.sudamericanaM(club));
		modelo.addAttribute("recopaM", torneoServicio.recopaSudamericanaM(club));
		modelo.addAttribute("interM", torneoServicio.copaInteramericanaM(club));
		
		return "infoClub";
	}
	
	@GetMapping("/clubes")
	public String clubes(ModelMap modelo) {
	
		List<ClubDto> lista = clubServicio.findAll();
		
		modelo.addAttribute("lista", lista);
	return "clubes";
	}
}
