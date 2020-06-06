package objetos;

public class contenidos {
	int id_contenido;
	String nombre;
	String url;
	String frame;

	public contenidos(int id_contenido, String nombre, String url, String frame) {

		this.id_contenido = id_contenido;
		this.nombre = nombre;
		this.url = url;
		this.frame = frame;
	}

	public contenidos() {
		// TODO Auto-generated constructor stub
	}

	public int getId_contenido() {
		return id_contenido;
	}

	public void setId_contenido(int id_contenido) {
		this.id_contenido = id_contenido;
	}

	public String getNombre() {
		return nombre;
	}

	public void setNombre(String nombre) {
		this.nombre = nombre;
	}

	public String getUrl() {
		return url;
	}

	public void setUrl(String url) {
		this.url = url;
	}

	public String getFrame() {
		return frame;
	}

	public void setFrame(String frame) {
		this.frame = frame;
	}

}
