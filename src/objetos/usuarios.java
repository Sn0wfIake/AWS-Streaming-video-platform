package objetos;



public class usuarios {
	int id_usuario;
	String nombre;
	String correo;
	String contrasena;
	public usuarios() {
		
	}
public usuarios(String nombre, String correo, String contrasena) {
	this.nombre = nombre;
	this.correo = correo;
	this.contrasena = contrasena;
	}
	public usuarios(int id_usuario, String nombre, String correo, String contrasena) {
	
		this.id_usuario = id_usuario;
		this.nombre = nombre;
		this.correo = correo;
		this.contrasena = contrasena;
	}

	

	public int getId_usuario() {
		return id_usuario;
	}

	public void setId_usuario(int id_usuario) {
		this.id_usuario = id_usuario;
	}

	public String getNombre() {
		return nombre;
	}

	public void setNombre(String nombre) {
		this.nombre = nombre;
	}

	public String getCorreo() {
		return correo;
	}

	public void setCorreo(String correo) {
		this.correo = correo;
	}

	public String getContrasena() {
		return contrasena;
	}

	public void setContrasena(String contrasena) {
		this.contrasena = contrasena;
	}
	@Override
	public String toString() {
		return "usuarios [id_usuario=" + id_usuario + ", nombre=" + nombre + ", correo=" + correo + ", contrasena="
				+ contrasena + "]";
	}



}
