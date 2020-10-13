package cl.anfp.servicio;

import java.util.List;

import cl.anfp.modelo.ClubDto;
import cl.anfp.modelo.TorneoDto;

public interface TorneoServicio {
	
	public List<TorneoDto> findAll();
	
	public List<TorneoDto> primeraDivisionM(ClubDto club);
	
	public List<TorneoDto> primeraDivisionF(ClubDto club);
	
	public List<TorneoDto> copaChileM(ClubDto club);
	
	public List<TorneoDto> copaChileF(ClubDto club);
	
	public List<TorneoDto> primeraBM(ClubDto club);
	
	public List<TorneoDto> primeraBF(ClubDto club);
	
	public List<TorneoDto> segundaDivisionM(ClubDto club);
	
	public List<TorneoDto> superCopaM(ClubDto club);
	
	public List<TorneoDto> libertadoresM(ClubDto club);
	
	public List<TorneoDto> libertadoresF(ClubDto club);
	
	public List<TorneoDto> sudamericanaM(ClubDto club);
	
	public List<TorneoDto> sudamericanaF(ClubDto club);
	
	public List<TorneoDto> recopaSudamericanaM(ClubDto club);
	
	public List<TorneoDto> recopaSudamericanaF(ClubDto club);
	
	public List<TorneoDto> copaInteramericanaM(ClubDto club);
	
	public List<TorneoDto> copaInteramericanaF(ClubDto club);
	
	public void save (Integer id,TorneoDto torneo);
	
	public void delete (Integer id);

}
