package cl.anfp.backend.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;
import cl.anfp.backend.modelo.Estadio;

@Repository
public interface EstadioRepository extends JpaRepository<Estadio, Integer> {
	
	@Query (value = "SELECT id_estadio, nombre, capacidad, ciudad from estadio where nombre like %?1% ",nativeQuery = true )
	List<Estadio> findByNombre(String nombre);

}
