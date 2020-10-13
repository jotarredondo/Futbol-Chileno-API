package cl.anfp.servicio;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.client.RestTemplate;

import cl.anfp.modelo.ClubDto;
import cl.anfp.modelo.TorneoDto;

@Service
public class TorneoServicioImp implements TorneoServicio {
	
	@Autowired
	RestTemplate restTemplate;
	
	private List<TorneoDto> lista = new ArrayList<TorneoDto>();

	@Override
	public List<TorneoDto> findAll() {
		
		TorneoDto[] listaTemp =  restTemplate.getForObject("http://localhost:8080/api/v1/torneo", TorneoDto[].class);
	    List <TorneoDto> lista = Arrays.asList(listaTemp);;
		
		return lista;
	}


	@Override
	public void save(Integer id, TorneoDto torneo) {
		
		restTemplate.postForObject("http://localhost:8080/api/v1/torneo/" + id , torneo, TorneoDto.class);
		
	}


	@Override
	public void delete(Integer id) {
		
		restTemplate.delete("http://localhost:8080/api/v1/torneo" + "/" + id);
		
	}


	@Override
	public List<TorneoDto> primeraDivisionM(ClubDto club) {
		
		List<TorneoDto> primeraM = new ArrayList<TorneoDto>();
		lista = club.getTorneos();
		for (TorneoDto torneo : lista) {
			if(torneo.getLiga().equals("Masculina") && torneo.getNombre().equals("Primera División de Chile")) {
				
				primeraM.add(torneo);	
			}
		}
		return primeraM;
	}


	@Override
	public List<TorneoDto> primeraDivisionF(ClubDto club) {
		
		List<TorneoDto> primeraF = new ArrayList<TorneoDto>();
		lista = club.getTorneos();
		for (TorneoDto torneo : lista) {
			if(torneo.getLiga().equals("Femenina") && torneo.getNombre().equals("Primera División Femenina de Chile")) {
				primeraF.add(torneo);
			}
		}
		return primeraF;
	}

	@Override
	public List<TorneoDto> copaChileM(ClubDto club) {
		
		List<TorneoDto> copaChileM = new ArrayList<TorneoDto>();
		lista = club.getTorneos();
		for (TorneoDto torneo : lista) {
			if(torneo.getLiga().equals("Masculina") && torneo.getNombre().equals("Copa Chile")) {
				copaChileM.add(torneo);
			}
		}
		return copaChileM;
	}


	@Override
	public List<TorneoDto> copaChileF(ClubDto club) {
		
		List<TorneoDto> copaChileF = new ArrayList<TorneoDto>();
		lista = club.getTorneos();
		for (TorneoDto torneo : lista) {
			if(torneo.getLiga().equals("Femenina") && torneo.getNombre().equals("Copa Chile")) {
				copaChileF.add(torneo);
			}
		}
		return copaChileF;
	}


	@Override
	public List<TorneoDto> primeraBM(ClubDto club) {
		
		List<TorneoDto> primeraBM = new ArrayList<TorneoDto>();
		lista = club.getTorneos();
		for (TorneoDto torneo : lista) {
			if(torneo.getLiga().equals("Masculina") && torneo.getNombre().equals("Primera B de Chile")) {
				primeraBM.add(torneo);
			}
		}
		return primeraBM;
	}

	@Override
	public List<TorneoDto> primeraBF(ClubDto club) {
		
		List<TorneoDto> primeraBF = new ArrayList<TorneoDto>();
		lista = club.getTorneos();
		for (TorneoDto torneo : lista) {
			if(torneo.getLiga().equals("Femenina") && torneo.getNombre().equals("Primera B Femenina de Chile")) {
				primeraBF.add(torneo);
			}
		}
		return primeraBF;
	}



	@Override
	public List<TorneoDto> segundaDivisionM(ClubDto club) {
		
		List<TorneoDto> segundaM = new ArrayList<TorneoDto>();
		lista = club.getTorneos();
		for (TorneoDto torneo : lista) {
			if(torneo.getLiga().equals("Masculina") && torneo.getNombre().equals("Segunda División Profesional de Chile")) {
				segundaM.add(torneo);
			}
		}
		return segundaM;
	}

	@Override
	public List<TorneoDto> superCopaM(ClubDto club) {
		
		List<TorneoDto> superCopaF = new ArrayList<TorneoDto>();
		lista = club.getTorneos();
		for (TorneoDto torneo : lista) {
			if(torneo.getLiga().equals("Masculina") && torneo.getNombre().equals("Super Copa")) {
				superCopaF.add(torneo);
			}
		}
		return superCopaF;
	}


	@Override
	public List<TorneoDto> libertadoresM(ClubDto club) {
		
		List<TorneoDto> libertadoresM = new ArrayList<TorneoDto>();
		lista = club.getTorneos();
		for (TorneoDto torneo : lista) {
			if(torneo.getLiga().equals("Masculina") && torneo.getNombre().equals("Copa Libertadores de América")) {
				libertadoresM.add(torneo);
			}
		}
		return libertadoresM;
	}


	@Override
	public List<TorneoDto> libertadoresF(ClubDto club) {
		
		List<TorneoDto> libertadoresF = new ArrayList<TorneoDto>();
		lista = club.getTorneos();
		for (TorneoDto torneo : lista) {
			if(torneo.getLiga().equals("Femenina") && torneo.getNombre().equals("Copa Libertadores de América Femenina")) {
				libertadoresF.add(torneo);
			}
		}
		return libertadoresF;
	}


	@Override
	public List<TorneoDto> sudamericanaM(ClubDto club) {
		
		List<TorneoDto> sudamericanaM = new ArrayList<TorneoDto>();
		lista = club.getTorneos();
		for (TorneoDto torneo : lista) {
			if(torneo.getLiga().equals("Masculina") && torneo.getNombre().equals("Copa Sudamericana")) {
				sudamericanaM.add(torneo);
			}
		}
		return sudamericanaM;
	}


	@Override
	public List<TorneoDto> sudamericanaF(ClubDto club) {
		
		List<TorneoDto> sudamericanaF = new ArrayList<TorneoDto>();
		lista = club.getTorneos();
		for (TorneoDto torneo : lista) {
			if(torneo.getLiga().equals("Femenina") && torneo.getNombre().equals("Copa Sudamericana")) {
				sudamericanaF.add(torneo);
			}
		}
		return sudamericanaF;
	}


	@Override
	public List<TorneoDto> recopaSudamericanaM(ClubDto club) {
		
		List<TorneoDto> recopaM = new ArrayList<TorneoDto>();
		lista = club.getTorneos();
		for (TorneoDto torneo : lista) {
			if(torneo.getLiga().equals("Masculina") && torneo.getNombre().equals("Recopa Sudamericana")) {
				recopaM.add(torneo);
			}
		}
		return recopaM;
	}


	@Override
	public List<TorneoDto> recopaSudamericanaF(ClubDto club) {

		List<TorneoDto> recopaF = new ArrayList<TorneoDto>();
		lista = club.getTorneos();
		for (TorneoDto torneo : lista) {
			if(torneo.getLiga().equals("Femenina") && torneo.getNombre().equals("Recopa Sudamericana")) {
				recopaF.add(torneo);
			}
		}
		return recopaF;
	}


	@Override
	public List<TorneoDto> copaInteramericanaM(ClubDto club) {
		
		List<TorneoDto> copaInterM = new ArrayList<TorneoDto>();
		lista = club.getTorneos();
		for (TorneoDto torneo : lista) {
			if(torneo.getLiga().equals("Masculina") && torneo.getNombre().equals("Copa Interamericana")) {
				copaInterM.add(torneo);
			}
		}
		return copaInterM;
	}


	@Override
	public List<TorneoDto> copaInteramericanaF(ClubDto club) {

		List<TorneoDto> copaInterF = new ArrayList<TorneoDto>();
		lista = club.getTorneos();
		for (TorneoDto torneo : lista) {
			if(torneo.getLiga().equals("Masculina") && torneo.getNombre().equals("Copa Interamericana")) {
				copaInterF.add(torneo);
			}
		}
		return copaInterF;
	}

}
