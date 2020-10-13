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
public class EstadioDto {
	
	private Integer idEstadio;
	private String nombre;
	private String capacidad;
	private String ciudad;

	
	
}
