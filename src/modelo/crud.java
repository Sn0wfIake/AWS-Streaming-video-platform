package modelo;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import objetos.*;

public class crud {
	// Identifico al usuario que entra en el login
	public ArrayList<usuarios> identificarP(String login, String clave) throws SQLException, ClassNotFoundException {

		ArrayList<usuarios> lista = new ArrayList<usuarios>();

		try {
			Connection con = null;
			con = conexion.conectar();
			PreparedStatement sentencia;
			ResultSet rs = null;
			usuarios u = new usuarios();

			String sql = "SELECT * FROM usuarios WHERE nombre LIKE ? AND contrasena LIKE ?";
			sentencia = con.prepareStatement(sql);

			sentencia.setString(1, login);

			sentencia.setString(2, clave);

			rs = sentencia.executeQuery();

			while (rs.next()) {

				u = new usuarios();

				u.setContrasena(rs.getString("contrasena"));

				u.setNombre(rs.getString("nombre"));
				lista.add(u);

			}
			rs.close();
			sentencia.close();
			con.close();

		} catch (SQLException exc) {
			exc.getStackTrace();

		}
		return lista;

	}

	// Cuenta a todos los usuarios de la bd
	public int cuentausu() throws ClassNotFoundException {
		int numusu = 0;
		try {
			Connection con = null;
			con = conexion.conectar();
			PreparedStatement sentencia;
			ResultSet rs = null;
			String sql = "SELECT COUNT(nombre) FROM usuarios";
			sentencia = con.prepareStatement(sql);

			rs = sentencia.executeQuery();
			while (rs.next()) {
				numusu = rs.getInt(1);
			}
		} catch (SQLException exc) {
			exc.getStackTrace();
			System.out.println(exc);

		}

		return numusu;
	}

//Insercion de un nuevo usuario
	public int nuevoUsu(usuarios u) throws ClassNotFoundException {
		Connection con = null;
		Statement sentencia = null;
		int ok = 0;

		String sql = "INSERT INTO `usuarios` (`id_usuario`, `nombre`, `correo`, `contrasena`) VALUES (NULL, '";
		sql += u.getNombre() + "','";
		sql += u.getCorreo() + "','";
		sql += u.getContrasena() + "')";

		try {

			con = conexion.conectar();

			sentencia = con.createStatement();
			ok = sentencia.executeUpdate(sql);
			sentencia.close();
			con.close();
		} catch (SQLException ex) {

			ex.getStackTrace();
		}

		return ok;
	}

//Listo todos los contenidos de la bd
	public ArrayList<contenidos> listaContenido() {
		Connection con = null; // Creamos la conexion
		Statement sentencia = null; // Creamos la sentencia
		ResultSet rs = null; // Contenedor de la sentencia

		ArrayList<contenidos> listaA = new ArrayList();

		contenidos videos;
		String sql = "SELECT * FROM contenidos";

		try {
			con = conexion.conectar();
			sentencia = con.createStatement();
			rs = sentencia.executeQuery(sql);

			while (rs.next()) {
				videos = new contenidos();

				videos.setId_contenido(rs.getInt("id_contenido"));
				videos.setNombre(rs.getString("nombre"));
				videos.setUrl(rs.getString("url"));
				videos.setFrame(rs.getString("frame"));
				listaA.add(videos);

			}

			rs.close();
			sentencia.close();
			con.close();

		} catch (Exception exc) {

			exc.getStackTrace();
		}

		return listaA;

	}

// 3 Metodos, para obtener una lista de series, una de musica y otra de pelis
	public ArrayList<contenidos> listaSeries() {
		Connection con = null; // Creamos la conexion
		Statement sentencia = null; // Creamos la sentencia
		ResultSet rs = null; // Contenedor de la sentencia

		ArrayList<contenidos> listaS = new ArrayList<contenidos>();

		contenidos videos;
		String sql = "SELECT * FROM `contenidos` WHERE `tipo` = 'serie'";

		try {
			con = conexion.conectar();
			sentencia = con.createStatement();
			rs = sentencia.executeQuery(sql);

			while (rs.next()) {
				videos = new contenidos();

				videos.setId_contenido(rs.getInt("id_contenido"));
				videos.setNombre(rs.getString("nombre"));
				videos.setUrl(rs.getString("url"));
				videos.setFrame(rs.getString("frame"));
				listaS.add(videos);

			}

			rs.close();
			sentencia.close();
			con.close();

		} catch (Exception exc) {

			exc.getStackTrace();
		}

		return listaS;

	}

	public ArrayList<contenidos> listaMusica() {
		Connection con = null; // Creamos la conexion
		Statement sentencia = null; // Creamos la sentencia
		ResultSet rs = null; // Contenedor de la sentencia

		ArrayList<contenidos> listaM = new ArrayList<contenidos>();

		contenidos videos;
		String sql = "SELECT * FROM `contenidos` WHERE `tipo` = 'musica'";

		try {
			con = conexion.conectar();
			sentencia = con.createStatement();
			rs = sentencia.executeQuery(sql);

			while (rs.next()) {
				videos = new contenidos();

				videos.setId_contenido(rs.getInt("id_contenido"));
				videos.setNombre(rs.getString("nombre"));
				videos.setUrl(rs.getString("url"));
				videos.setFrame(rs.getString("frame"));
				listaM.add(videos);

			}

			rs.close();
			sentencia.close();
			con.close();

		} catch (Exception exc) {
			System.out.println(exc);
			exc.getStackTrace();
		}

		return listaM;

	}

	public ArrayList<contenidos> listaPelis() {
		Connection con = null;
		Statement sentencia = null;
		ResultSet rs = null;

		ArrayList<contenidos> listaP = new ArrayList<contenidos>();

		contenidos videos;
		String sql = "SELECT * FROM `contenidos` WHERE `tipo` = 'pelicula'";

		try {
			con = conexion.conectar();
			sentencia = con.createStatement();
			rs = sentencia.executeQuery(sql);

			while (rs.next()) {
				videos = new contenidos();
				videos.setId_contenido(rs.getInt("id_contenido"));
				videos.setNombre(rs.getString("nombre"));
				videos.setUrl(rs.getString("url"));
				videos.setFrame(rs.getString("frame"));
				listaP.add(videos);

			}

			rs.close();
			sentencia.close();
			con.close();

		} catch (Exception exc) {
			System.out.println(exc);
			exc.getStackTrace();
		}

		return listaP;

	}

//Genero 15 Aleatorios distintos, para la lista de recomendaciones del banner
	public static int[] listaRecomendaciones(ArrayList<contenidos> a) {
		int i = 0;
		int rango = a.size();
		int arr[] = new int[15];

		for (i = 0; i < arr.length; i++) {
			arr[i] = (int) (Math.random() * rango);

			for (int j = 0; j < i; j++) {
				if (arr[i] == arr[j]) {
					i--;
				}
			}
		}

		return arr;
	}

	// Saco la miniatura de los videos
	public static String devuelveVideo(String url) throws SQLException {
		Connection con = null;
		Statement sentencia = null;
		ResultSet rs = null;
		String video = null;
		String sql = "SELECT url FROM `contenidos` WHERE `frame` LIKE ? ";
		sentencia = con.prepareStatement(sql);

		((PreparedStatement) sentencia).setString(1, url);

		rs = sentencia.executeQuery(sql);

		while (rs.next()) {
			video = rs.getNString("url");

		}
		System.out.println(video);
		rs.close();
		sentencia.close();
		con.close();
		return video;
	}

	{

	}

//Identifico al usuario segun su sesion
	public ArrayList<usuarios> identificarP(String usu) throws ClassNotFoundException {

		ArrayList<usuarios> lista = new ArrayList<usuarios>();

		try {
			Connection con = null;
			con = conexion.conectar();
			PreparedStatement sentencia;
			ResultSet rs = null;

			usuarios u = new usuarios();

			String sql = "SELECT * FROM usuarios WHERE nombre LIKE ? ";
			sentencia = con.prepareStatement(sql);

			sentencia.setString(1, usu);

			rs = sentencia.executeQuery();

			while (rs.next()) {

				u = new usuarios();

				u.setId_usuario(rs.getInt("id_usuario"));
				u.setContrasena(rs.getString("contrasena"));
				u.setCorreo(rs.getString("correo"));
				u.setNombre(rs.getString("nombre"));
				lista.add(u);

			}
			rs.close();
			sentencia.close();
			con.close();

		} catch (SQLException exc) {
			exc.getStackTrace();
			System.out.println(exc);

		}
		return lista;

	}

//Para actualizar cualquiera de los campos, tengo 3 metodos, para cambiar nombre, contraseña o correo
	public int actualizaNombre(usuarios u) throws ClassNotFoundException {

		Connection con = null;
		Statement sentencia = null;
		int ok = 0;

		String sql = "UPDATE `usuarios` SET `nombre`='";
		sql += u.getNombre() + "' WHERE `id_usuario`='";
		sql += u.getId_usuario() + "'";

		try {

			con = conexion.conectar();

			sentencia = con.createStatement();
			ok = sentencia.executeUpdate(sql);
			sentencia.close();
			con.close();
		} catch (SQLException ex) {

			ex.getStackTrace();
		}

		if (ok != 0) {
			ok = 6;

		}
		return ok;

	}

	public int actualizaCorreo(usuarios u) throws ClassNotFoundException {
		Connection con = null;
		Statement sentencia = null;
		int ok = 0;

		String sql = "UPDATE `usuarios` SET `correo`='";
		sql += u.getCorreo() + "' WHERE `id_usuario`='";
		sql += u.getId_usuario() + "'";

		try {

			con = conexion.conectar();
			System.out.println(con);
			sentencia = con.createStatement();
			ok = sentencia.executeUpdate(sql);
			sentencia.close();
			con.close();
		} catch (SQLException ex) {

			ex.getStackTrace();
		}

		if (ok != 0) {
			ok = 6;

		}
		return ok;

	}

	public int actualizaContrasena(usuarios u) throws ClassNotFoundException {
		Connection con = null;
		Statement sentencia = null;
		int ok = 0;

		String sql = "UPDATE `usuarios` SET `contrasena`='";
		sql += u.getContrasena() + "' WHERE `id_usuario`='";
		sql += u.getId_usuario() + "'";
		System.out.println(sql);
		try {

			con = conexion.conectar();

			sentencia = con.createStatement();
			ok = sentencia.executeUpdate(sql);
			sentencia.close();
			con.close();
		} catch (SQLException ex) {

			ex.getStackTrace();
		}

		if (ok != 0) {
			ok = 6;

		}
		return ok;

	}
}
