package modelo;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import objetos.usuarios;

public class conexiontests {

    // Connect to your database.
    // Replace server name, username, and password with your credentials
    public static void main(String[] args) throws SQLException, ClassNotFoundException {
        String connectionUrl =
                "jdbc:mysql://aa1pi292guz1n3m.cb3llebfpgg6.eu-west-3.rds.amazonaws.com:3306/ebdb?"+"user=admin"+ "&password=alexundi";
                     System.out.println(connectionUrl);
                     
                 	usuarios e= new usuarios(1000,"juan2","pepe","juan");

        ResultSet resultSet = null;
//select
        String insertSql = "select * from usuarios";
		try (Connection connection = DriverManager.getConnection(connectionUrl))
               {
            		List<usuarios> userList = new ArrayList<>();
            		try {
            		Statement stmt=connection.createStatement();  
            		ResultSet rs=stmt.executeQuery("select * from usuarios");  
            		while(rs.next())  {
            			usuarios user = new usuarios();
            			user.setId_usuario(Integer.parseInt(rs.getString(1)));
            			user.setNombre(rs.getString(2));
            			user.setContrasena(rs.getString(3));
            			user.setCorreo(rs.getString(4));
            			System.out.println(user.toString());
            			userList.add(user);
            		}
            		
            // Print the ID of the inserted row.
        
        }
        // Handle any errors that may have occurred.
        catch (Exception f) {
            f.printStackTrace();
        }
            		
            			
    }
		//insert
	
			Connection con = null;
			Statement sentencia = null;
			int ok = 0;
			
			String sql = "INSERT INTO `usuarios` (`id_usuario`, `nombre`, `correo`, `contrasena`) VALUES (NULL, '";
			sql += e.getNombre() + "','";
			sql += e.getCorreo() + "','";
			sql += e.getContrasena() + "')";
			try {
				con = conexion.conectar();
				sentencia = con.createStatement();
				ok = sentencia.executeUpdate(sql);
				sentencia.close();
				con.close();
				System.out.println("insertado con exito");
			} catch (SQLException ex) {
				ex.getStackTrace();
			}
	
		}
		
}
