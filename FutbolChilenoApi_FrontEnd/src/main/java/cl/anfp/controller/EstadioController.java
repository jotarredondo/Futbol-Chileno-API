package cl.anfp.controller;


import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import cl.anfp.modelo.EstadioDto;
import cl.anfp.servicio.ClubServicio;
import cl.anfp.servicio.EstadioServicio;


@Controller
public class EstadioController {
	
	@Autowired
	EstadioServicio estadioServicio;
	
	@Autowired
	ClubServicio clubServicio;
	
	
	@GetMapping("/estadios")
	public String clubes(ModelMap modelo) {
	
		List<EstadioDto> lista = estadioServicio.findAll();
	
		modelo.addAttribute("lista", lista);
	return "estadios";
	}

}
