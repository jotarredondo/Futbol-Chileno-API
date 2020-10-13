package cl.anfp.backend.repository;



import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import cl.anfp.backend.modelo.Torneo;

@Repository
public interface TorneoRepository extends JpaRepository<Torneo, Integer> {
	
}
