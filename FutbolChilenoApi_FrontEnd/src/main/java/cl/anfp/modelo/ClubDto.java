package cl.anfp.modelo;

import java.util.List;

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
public class ClubDto {
	
	private Integer idClub;
	private String nombre;
	private String nombreOficial;
	private String fundacion;
	private String activo;
	private Integer estadioLocal;
	private List<TorneoDto> torneos;
	
}

	
	

