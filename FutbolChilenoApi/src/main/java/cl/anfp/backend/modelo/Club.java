package cl.anfp.backend.modelo;

import java.util.List;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;

import com.fasterxml.jackson.annotation.JsonManagedReference;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;


@Entity
@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
public class Club {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Integer idClub;
	private String nombre;
	private String nombreOficial;
	private String fundacion;
	private String activo;
	private Integer estadioLocal;
	
	
	@OneToMany(mappedBy = "campeon" , fetch = FetchType.LAZY)
	@JsonManagedReference
	private List<Torneo> torneos;
	

	@Override
	public String toString() {
		return "Club [idClub=" + idClub + ", nombre=" + nombre + ", nombreOficial=" + nombreOficial + ", fundacion="
				+ fundacion + ", activo=" + activo + ", estadioLocal=" + estadioLocal + "]";
	}
	
	
}
