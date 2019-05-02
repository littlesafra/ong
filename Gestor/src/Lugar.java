import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class Lugar {
	
	int habitantes;
	int necesidad;
	String nombre;
	Map <String,List<Recurso>> historico;
	
	public Lugar(int habitantes, int necesidad, String nombre) {
		this.habitantes = habitantes;
		this.necesidad = necesidad;
		this.nombre = nombre;
		historico = new HashMap<>();
	}
	
	
	
	
	
}
