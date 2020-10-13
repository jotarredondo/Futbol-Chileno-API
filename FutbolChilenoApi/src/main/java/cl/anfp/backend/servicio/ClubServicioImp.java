	package cl.anfp.backend.servicio;

import java.util.ArrayList;
import java.util.List;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import cl.anfp.backend.modelo.Club;
import cl.anfp.backend.repository.ClubRepository;

@Service
public class ClubServicioImp implements ClubServicio {
	
	// Se hace la Inyección de repositorio y declaración de variables implementadas en cada método
	// Se utiliza recurso try-catch, para la ejecución de los métodos que implican conexión directa a la base de datos
	// Se adjunta logger para capturar errores que estén implicados de manera externa a la aplicación
	// Método update hace actualización de atributos específicos que se podrían modificar en una situación real
	
	
	@Autowired
	ClubRepository clubRepository;
	
	@Autowired
	TorneoServicioImp torneoServicio;
	 
	private Club clubTemp = new Club();
	private List<Club> clubes = new ArrayList<Club>();
	private static Logger logger = LoggerFactory.getLogger(ClubRepository.class);

	@Override
	@Transactional(readOnly = true)
	public List<Club> findAll() {
		
		try {
			clubes = clubRepository.findAll();
		} catch (Exception e) {
			logger.error("ClubServicioImp findAll()" + e);
		}
		return clubes;
	}

	
	@Override
	public Club findById(Integer id) {
		
		try {
			clubTemp = clubRepository.findByIdClub(id);
			
		} catch (Exception e) {
			logger.error("ClubServicioImp findById()" + e);
		}
		return clubTemp;
	}

	
	@Override
	public List<Club> findByName(String nombre) {
		
		try {	
			clubes = clubRepository.findByNombre(nombre);
		} catch (Exception e) {	
			logger.error("ClubServicioImp findByName()" + e);	
		}
		return clubes;
	}

	@Override
	public void save(Club club) {
		
		try {
			clubRepository.save(club);
		} catch (Exception e) {
			logger.error("ClubServicioImp save()" + e);	
		}
	}	
	
	@Override
	public void delete (Integer id) {
		
		try {	
			clubRepository.deleteById(id);
		} catch (Exception e) {	
			logger.error("ClubServicioImp findByName()" + e);	
		}
	}


	// Implemetanción del método update recibe como parametros, el id del registro que se va actualizar y registro actualizado
	@Override
	public void update(Integer id, Club club) {
		
		if (clubRepository.findByIdClub(id)!= null) {
			
			clubTemp = clubRepository.findByIdClub(id);
			clubTemp.setNombre(club.getNombre());
			clubTemp.setNombreOficial(club.getNombreOficial());
			clubTemp.setFundacion(club.getFundacion());
			clubTemp.setActivo(club.getActivo());
			clubTemp.setEstadioLocal(club.getEstadioLocal());
			
			try {
				
				clubRepository.save(clubTemp);
			} catch (Exception e) {
				logger.error("ClubServicioImp update()" + e);	
			}	
		}
		
		
	}
}
