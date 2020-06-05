package controlador;

import java.io.IOException;
import java.lang.ProcessBuilder.Redirect;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.mysql.cj.Session;

import modelo.conexion;
import modelo.crud;
import objetos.contenidos;
import objetos.usuarios;

/**
 * Servlet implementation class controladorproyecto
 */
@WebServlet("/controladorproyecto")
public class controladorproyecto extends HttpServlet {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		doPost(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub

		int action = Integer.parseInt(request.getParameter("action"));
		String clave;
		String login;
		switch (action) {
		case 1: 
			
			
			// iniciar sesion
			login = request.getParameter("user");
			clave = request.getParameter("passwd");
			System.out.println(login + " " + clave);
			try {
				iniciases(request, response, login, clave);
			} catch (ClassNotFoundException | SQLException | ServletException | IOException e1) {
				// TODO Auto-generated catch block
				e1.printStackTrace();
			}
			break;
		case 2: // REGISTRAR
			System.out.println("Entro al controlador");
			login = request.getParameter("nombre");
			clave = request.getParameter("clave");
			usuarios u = new usuarios();

			u.setContrasena((String) (request.getParameter("clave")));
			u.setCorreo((String) request.getParameter("correo"));
			u.setNombre((String) request.getParameter("nombre"));

			System.out.println("usuario " + u.toString());
			System.out.println(login + " " + clave);
			try {
				System.out.println("inserto a " + u.getNombre());

				nuevoUsu(request, response, u);
			} catch (ClassNotFoundException f) {
				// TODO Auto-generated catch block
				f.printStackTrace();
				System.out.println("error en la 1º parte");
			}
			break;
		case 3:
			String requerido = (request.getParameter("demandado"));

			switch (requerido) {
			case "musica":

				break;

			case "peliculas":

				break;

			case "series":

				break;

			}

			request.setAttribute("requerido", requerido);
			RequestDispatcher dispatcher = request.getRequestDispatcher("/expositor.jsp");
			dispatcher.forward(request, response);
			break;

		}
	}

	private void iniciases(HttpServletRequest request, HttpServletResponse response, String login, String clave)
			throws ClassNotFoundException, SQLException, ServletException, IOException {
		ArrayList<usuarios> lista;
		ArrayList<contenidos> videos, series;
		crud ai = new crud();
		
		//Lista de series y lista del contenido
		videos = ai.listaContenido();
		series = ai.listaSeries();
		
		//Sesion del usuario
		HttpSession session = request.getSession();
		
		session.setAttribute("name", login);
		//Miro si el user esta en la db
		lista = ai.identificarP(login, clave);
		
		//Saco 15 recomendaciones aleatorias
		int[] nums = ai.listaRecomendaciones(videos);
		int[] recoserie = ai.listaRecomendaciones(series);
		
		//Envio todos los parametros para el main
		request.setAttribute("listaU", lista);
		request.setAttribute("listaC", videos);
		request.setAttribute("listaS", series);
		request.setAttribute("nums", nums);
		request.setAttribute("recoserie", recoserie);
		
		//Redirijo al main
		
		RequestDispatcher dispatcher = request.getRequestDispatcher("/main.jsp");
		dispatcher.forward(request, response);

	}

	private void nuevoUsu(HttpServletRequest request, HttpServletResponse response, usuarios u)
			throws ServletException, IOException, ClassNotFoundException {
		System.out.println("insertando el nuevo PUTO usuario");
		System.out.println(u.toString());
		int ok;

		crud ai = new crud();
		ok = ai.nuevoUsu(u);

		request.setAttribute("ok", String.valueOf(ok));
		if (ok == 0) {
			
			ArrayList<contenidos> videos, series;
			 ai = new crud();
			
			//Lista de series y lista del contenido
			videos = ai.listaContenido();
			series = ai.listaSeries();
			//Saco 15 recomendaciones aleatorias
			int[] nums = ai.listaRecomendaciones(videos);
			int[] recoserie = ai.listaRecomendaciones(series);
			
			//Envio todos los parametros para el main
		
			request.setAttribute("listaC", videos);
			request.setAttribute("listaS", series);
			request.setAttribute("nums", nums);
			request.setAttribute("recoserie", recoserie);
			request.setAttribute("user", u.getNombre());
		}
		RequestDispatcher dispatcher = request.getRequestDispatcher("/registrocompleto.jsp");
		dispatcher.forward(request, response);
	}

}
