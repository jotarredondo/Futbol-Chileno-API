package cl.anfp.modelo;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
@ToString
public class TorneoDto {
	
	private Integer idTorneo;
	private String liga;
	private String nombre;
	private String temporada;
	private boolean internacional;

}
