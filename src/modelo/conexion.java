package modelo;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;


public class conexion {
	

	public static Connection conectar() throws SQLException, ClassNotFoundException {
		Class.forName("com.mysql.jdbc.Driver");
		Connection con = DriverManager.getConnection("jdbc:mysql://aa1pi292guz1n3m.cb3llebfpgg6.eu-west-3.rds.amazonaws.com:3306/ebdb?"+"user=admin"+ "&password=alexundi");
	try {
		
		String connectionUrl =
                "jdbc:mysql://aa1pi292guz1n3m.cb3llebfpgg6.eu-west-3.rds.amazonaws.com:3306/ebdb?"+"user=admin"+ "&password=alexundi";
                     System.out.println(connectionUrl);
		
		
		con=DriverManager.getConnection(connectionUrl);
	
		System.out.println("conexion ejecutada");
		}catch(Exception e){ System.out.println("Error en conexion");}
	
	return con;  
	}
	
	
		
	}

