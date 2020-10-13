package cl.anfp.backend.servicio;

import java.util.ArrayList;
import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cl.anfp.backend.modelo.Estadio;
import cl.anfp.backend.repository.EstadioRepository;

@Service
public class EstadioServicioImp implements EstadioServicio {
	
	@Autowired
	EstadioRepository estadioRepository;
	
	private Estadio estadioTemp = new Estadio();
	private List<Estadio> estadios = new ArrayList<Estadio>();
	private static Logger logger = LoggerFactory.getLogger(EstadioRepository.class);

	@Override
	public List<Estadio> findAll() {
		
		try {
			estadios = estadioRepository.findAll();
		} catch (Exception e) {
			logger.error("EstadioServicioImp findAll()" + e);
		}
		return estadios;
	}

	
	@Override
	public Estadio findById(Integer id) {
		
		try {
			estadioTemp = estadioRepository.findById(id).get();
		} catch (Exception e) {
			logger.error("EstadioServicioImp findById()" + e);	
		}
		return estadioTemp;
	}

	
	@Override
	public List<Estadio> findByName(String nombre) {
		
		try {
			estadios = estadioRepository.findByNombre(nombre);
		} catch (Exception e) {
			logger.error("EstadioServicioImp findByName()" + e);
		}
		return estadios;
	}

	
	@Override
	public void save(Estadio estadio) {
		
		try {
			estadioRepository.save(estadio);
		} catch (Exception e) {
			logger.error("EstadioServicioImp save()" + e);
		}
		
	}

	@Override
	public void update(Integer id, Estadio estadio) {
		
		if (estadioRepository.findById(id)!= null) {
			
			estadioTemp = estadioRepository.findById(id).get();
			estadioTemp.setNombre(estadio.getNombre());
			estadioTemp.setCapacidad(estadio.getCapacidad());
			estadioTemp.setCiudad(estadio.getCiudad()); 
			
			try {
				
				estadioRepository.save(estadioTemp);
			} catch (Exception e) {
				logger.error("EstadioRepositoryImp update()" + e);	
			}	
		}
		
	}

	
	
	@Override
	public void delete(Integer id) {
		
		try {	
			estadioRepository.deleteById(id);
		} catch (Exception e) {	
			logger.error("EstadioRepositoryImp delete()" + e);	
		}
		
	}



}
