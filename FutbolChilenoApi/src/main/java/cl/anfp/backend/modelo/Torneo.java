package cl.anfp.backend.modelo;

import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;

import com.fasterxml.jackson.annotation.JsonBackReference;

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
public class Torneo {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Integer idTorneo;
	private String liga;
	private String nombre;
	private String temporada;
	private boolean internacional;
	
	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name="campeon")
	@JsonBackReference
	private Club campeon;

}
