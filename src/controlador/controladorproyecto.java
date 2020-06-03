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
		int action = Integer.parseInt(request.getParameter("action"));
		String clave;
		String login;
		switch (action) {
		case 1: // iniciar sesion
			login = request.getParameter("user");
			clave = request.getParameter("passwd");
			System.out.println(login+" "+clave);
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
			usuarios e = new usuarios(1000, "klk", "pepe", "juan");
			u.setContrasena((String) (request.getParameter("clave")));
			u.setCorreo((String) request.getParameter("correo"));
			u.setNombre((String) request.getParameter("nombre"));
			System.out.println(e.toString());
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
		}

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

	/*
	 * private void mostrar(HttpServletRequest request, HttpServletResponse
	 * response) throws ServletException, IOException{ ABMC ai = new ABMC();
	 * //implementamos la clase altas bajas modificaciones y consultas ArrayList
	 * <Articulo> listaArticulos = ai.mostrar(); //mostrar devuelve un arraylist de
	 * articulos que guardaremos en listaArticulos
	 * 
	 * request.setAttribute("listaA", listaArticulos); //creamos el atributo listaA
	 * para usarlo en el despliegue RequestDispatcher dispatcher =
	 * request.getRequestDispatcher("/despliegaArticulos.jsp"); //llevamos la
	 * informacion al despliegue dispatcher.forward(request, response);
	 * 
	 * }
	 */

	/*
	 * private void elimina(HttpServletRequest request, HttpServletResponse
	 * response, String nb) throws ServletException, IOException{ ABMC ai = new
	 * ABMC(); int ok=ai.eliminar(nb);
	 * request.setAttribute("ok",String.valueOf(ok)); RequestDispatcher dispatcher =
	 * request.getRequestDispatcher("/despliegaOk.jsp"); dispatcher.forward(request,
	 * response);
	 * 
	 * }
	 * 
	 * private void insertar(HttpServletRequest request, HttpServletResponse
	 * response,Articulo a)throws ServletException, IOException,SQLException { int
	 * ok; ABMC ai = new ABMC(); ok=ai.insertar(a);
	 * request.setAttribute("ok",String.valueOf(ok)); RequestDispatcher dispatcher =
	 * request.getRequestDispatcher("/despliegaOk.jsp"); dispatcher.forward(request,
	 * response); }
	 */
	private void iniciases(HttpServletRequest request,HttpServletResponse response, String login, String clave) throws ClassNotFoundException, SQLException, ServletException, IOException {
		ArrayList <usuarios> lista;
		ArrayList <contenidos> videos,series;
		crud ai = new crud();
		videos=ai.listaContenido();
		series=ai.listaSeries();
		
		lista = ai.identificarP(login, clave);
		int [] nums= ai.listaRecomendaciones(videos);
		int [] recoserie= ai.listaRecomendaciones(series);
			request.setAttribute("listaU", lista);
			request.setAttribute("listaC", videos);
			request.setAttribute("listaS", series);
			request.setAttribute("nums", nums);
			request.setAttribute("recoserie", recoserie);
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
		if (ok==0) {
			request.setAttribute("user", u.getNombre());
		}
		RequestDispatcher dispatcher = request.getRequestDispatcher("/registrocompleto.jsp");
		dispatcher.forward(request, response);
	}

}
