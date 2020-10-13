package cl.anfp.backend.servicio;


import java.util.ArrayList;
import java.util.List;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cl.anfp.backend.modelo.Club;
import cl.anfp.backend.modelo.Torneo;
import cl.anfp.backend.repository.TorneoRepository;

@Service
public class TorneoServicioImp implements TorneoServicio {
	
	@Autowired
	TorneoRepository torneoRepository;
	
	@Autowired
	ClubServicioImp clubServicioImp;
	
	
	private List<Torneo> torneos = new ArrayList<Torneo>();
	private static Logger logger = LoggerFactory.getLogger(TorneoRepository.class);
	
	
	@Override
	public void save(Integer id ,Torneo torneo) {
		
		try {
			
			Club club = clubServicioImp.findById(id);
			torneo.setCampeon(club);
			torneoRepository.save(torneo);
		} catch (Exception e) {
			logger.error("TorneoServicioImp save()" + e);
		}	
	}
	

	@Override
	public List<Torneo> findAll() {
		
		try {
			torneos = torneoRepository.findAll();
		} catch (Exception e) {
			logger.error("TorneoServicioImp findAll()" + e);
		}
		return torneos;
	}
	
	@Override
	public void delete (Integer id) {
		
		try {	
			torneoRepository.deleteById(id);
		} catch (Exception e) {	
			logger.error("TorneoServicioImp delete()" + e);	
		}
	}
	
}
