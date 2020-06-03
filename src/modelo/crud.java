package modelo;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;



import objetos.*;
public class crud {
	public ArrayList<usuarios> identificarP(String login, String clave) throws SQLException, ClassNotFoundException {

		ArrayList<usuarios> lista = new ArrayList<usuarios>();

		try {
			Connection con = null;// Conexion
			con = conexion.conectar();
			PreparedStatement sentencia;// Sentencia PREPARADA
			ResultSet rs = null;// Guardar resultado

			usuarios u = new usuarios();

			String sql = "SELECT * FROM usuarios WHERE nombre LIKE ? AND contrasena LIKE ?";
			sentencia = con.prepareStatement(sql);

			// Vincula los parametros a la sentencia
			sentencia.setString(1, login);
			System.out.println(login);
			sentencia.setString(2, clave);
			System.out.println(clave);
			System.out.println(sentencia);

			rs = sentencia.executeQuery();// Guarda del resultado de la sentecia

			while (rs.next()) {

				u = new usuarios();
				// inserto datos a Usuario con los datos de la query

				u.setContrasena(rs.getString("contrasena"));
				
				u.setNombre(rs.getString("nombre"));
				lista.add(u);

			}
			rs.close();
			sentencia.close();
			con.close();

		} catch (SQLException exc) {
			exc.getStackTrace();
			System.out.println(exc);
			System.out.println("Sentencia fallida");
		}
		return lista;

	}

	
	
	public int cuentausu() throws ClassNotFoundException {
		int numusu = 0;
		try {
			Connection con = null;// Conexion
			con = conexion.conectar();
			PreparedStatement sentencia;// Sentencia PREPARADA
			ResultSet rs = null;// Guardar resultado
			String sql = "SELECT COUNT(nombre) FROM usuarios";
			sentencia = con.prepareStatement(sql);
			System.out.println(sentencia);
			rs = sentencia.executeQuery();
			while (rs.next()) {
				numusu = rs.getInt(1);
			}
		} catch (SQLException exc) {
			exc.getStackTrace();
			System.out.println(exc);
			System.out.println("Sentencia fallida");
		}

		return numusu;
	}

	public int nuevoUsu(usuarios u) throws ClassNotFoundException {
		Connection con = null;
		Statement sentencia = null;
		int ok = 0;
		System.out.println(con);
		String sql = "INSERT INTO `usuarios` (`id_usuario`, `nombre`, `correo`, `contrasena`) VALUES (NULL, '";
		sql += u.getNombre() + "','";
		sql += u.getCorreo() + "','";
		sql += u.getContrasena() + "')";
		System.out.println(sql);
		try {
			System.out.println("dentro del try nuevousu");
			con = conexion.conectar();
			System.out.println(con);
			sentencia = con.createStatement();
			ok = sentencia.executeUpdate(sql);
			sentencia.close();
			con.close();
		} catch (SQLException ex) {
			ex.getStackTrace();
		}
		System.out.println("despues de todo");
		System.out.println(con);
		return ok;
	}
	
	public ArrayList<contenidos> listaContenido(){
		Connection con = null; //Creamos la conexion
		Statement sentencia =null; //Creamos la sentencia
		ResultSet rs = null; //Contenedor de la sentencia
		
		ArrayList<contenidos> listaA = new ArrayList();
		
		contenidos videos;		
		String sql = "SELECT * FROM contenidos";
		System.out.println(sql);
		
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
			System.out.println(listaA);
			rs.close();
			sentencia.close();
			con.close();
			
		} catch (Exception exc) {
			System.out.println(exc);
			exc.getStackTrace();
		}
		
		return listaA;
		
		
	}
	public ArrayList<contenidos> listaSeries(){
		Connection con = null; //Creamos la conexion
		Statement sentencia =null; //Creamos la sentencia
		ResultSet rs = null; //Contenedor de la sentencia
		
		ArrayList<contenidos> listaS = new ArrayList<contenidos>();
		
		contenidos videos;		
		String sql = "SELECT * FROM `contenidos` WHERE `tipo` = 'serie'";
		System.out.println(sql);
		
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
			System.out.println(listaS);
			rs.close();
			sentencia.close();
			con.close();
			
		} catch (Exception exc) {
			System.out.println(exc);
			exc.getStackTrace();
		}
		System.out.println(listaS);
		return listaS;
		
		
	}
	public ArrayList<contenidos> listaMusica(){
		Connection con = null; //Creamos la conexion
		Statement sentencia =null; //Creamos la sentencia
		ResultSet rs = null; //Contenedor de la sentencia
		
		ArrayList<contenidos> listaM = new ArrayList<contenidos>();
		
		contenidos videos;		
		String sql = "SELECT * FROM `contenidos` WHERE `tipo` = 'musica'";
		System.out.println(sql);
		
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
			System.out.println(listaM);
			rs.close();
			sentencia.close();
			con.close();
			
		} catch (Exception exc) {
			System.out.println(exc);
			exc.getStackTrace();
		}
		
		return listaM;
		
		
	}
	public ArrayList<contenidos> listaPelis(){
		Connection con = null; //Creamos la conexion
		Statement sentencia =null; //Creamos la sentencia
		ResultSet rs = null; //Contenedor de la sentencia
		
		ArrayList<contenidos> listaP = new ArrayList<contenidos>();
		
		contenidos videos;		
		String sql = "SELECT * FROM `contenidos` WHERE `tipo` = 'pelicula'";
		System.out.println(sql);
		
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
			System.out.println(listaP);
			rs.close();
			sentencia.close();
			con.close();
			
		} catch (Exception exc) {
			System.out.println(exc);
			exc.getStackTrace();
		}
		
		return listaP;
		
		
	}
	public static int[] listaRecomendaciones(ArrayList<contenidos> a)  
	{  
		int i=0;
		int rango= a.size();
		int arr[] = new int[15];
		
		for (i=0; i<arr.length;i++) {
			arr[i]=(int)(Math.random()*rango);
			System.out.println(i+" " +arr[i]);
			for (int j=0; j<i; j++) {
				if (arr[i]== arr[j]) {
					i--;
				}
			}
		}
		
	return arr;  
	}  
	
	public static String devuelveVideo(String url) throws SQLException {
		Connection con = null; //Creamos la conexion
		Statement sentencia =null; 
		ResultSet rs = null;
		String video=null;
		String sql = "SELECT url FROM `contenidos` WHERE `frame` LIKE ? ";
		sentencia = con.prepareStatement(sql);

		((PreparedStatement) sentencia).setString(1, url);
		System.out.println(url);
		
		rs = sentencia.executeQuery(sql);
		
	
			while (rs.next()) {
			video= rs.getNString("url");
				
				
			}
			System.out.println(video);
			rs.close();
			sentencia.close();
			con.close();
			return video;
		} {
		
		
	
		
		
	}
}
