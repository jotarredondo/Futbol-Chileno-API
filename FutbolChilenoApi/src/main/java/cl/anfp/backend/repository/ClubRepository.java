package cl.anfp.backend.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;


import cl.anfp.backend.modelo.Club;

@Repository
public interface ClubRepository extends JpaRepository<Club, Integer> {
	
	// Querys implementadas para buscar un registro por : "un nombre parecido a" y también por "id retornando un Objeto de tipo Club"
	
	@Query (value = "SELECT id_club, nombre, nombre_oficial, fundacion, activo, estadio_local from club where nombre like %?1% ",nativeQuery = true )
	List<Club> findByNombre(String nombre);
	
	@Query (value = "SELECT id_club, nombre, nombre_oficial, fundacion, activo, estadio_local from club where id_club = ?1 ",nativeQuery = true )
	Club findByIdClub(Integer id);

	
	
}
