import java.util.List;

public class Recursos {
	
	List<Recurso> listaRecursos;
	
	public Recursos() {
		cargarRecursos();
	}
	public void cargarRecursos() {
		//conectar con la base de datos
	}
	
	public synchronized void añadirRecurso(Recurso e) {
		listaRecursos.add(e);
	}
	public synchronized void eliminarRecurso(Recurso e) {
		listaRecursos.remove(e);
	}
}
