package cl.anfp.backend.modelo;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@Entity
@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
@ToString
public class Estadio {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Integer idEstadio;
	private String nombre;
	private String capacidad;
	private String ciudad;
	

	

}
