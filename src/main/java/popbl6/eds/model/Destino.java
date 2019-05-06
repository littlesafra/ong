package popbl6.eds.model;

import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;

@Entity
@Table(name = "destino")
public class Destino {
	
	@Id
	@Column(name = "cp")
	private int cp;

	@Column(name = "poblacion")
	private String poblacion;
	
	@Column(name = "direccion")
	private String direccion;
	
	@OneToMany(mappedBy = "destino", cascade = CascadeType.ALL, fetch = FetchType.EAGER)
	private List<Envio> envios;

	public int getCp() {
		return cp;
	}

	public void setCp(int cp) {
		this.cp = cp;
	}

	public String getPoblacion() {
		return poblacion;
	}

	public void setPoblacion(String poblacion) {
		this.poblacion = poblacion;
	}

	public String getDireccion() {
		return direccion;
	}

	public void setDireccion(String direccion) {
		this.direccion = direccion;
	}

	public List<Envio> getEnvios() {
		return envios;
	}

	public void setEnvios(List<Envio> envios) {
		this.envios = envios;
	}
	
	
}
