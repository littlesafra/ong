import java.util.List;

public class Lugares {
	
	List<Lugar> listaLugares;
	
	public Lugares() {
		cargarLugares();
	}

	private void cargarLugares() {
		//conectar a la base de datos
	}
	
	public synchronized void añadir(Lugar l) {
		listaLugares.add(l);
	}
	
	public synchronized void eliminar(Lugar l) {
		listaLugares.remove(l);
	}
}
