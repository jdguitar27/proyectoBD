/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package proyectobd;
import java.sql.*;
import java.util.Properties;

/**
 *
 * @author Ingrid
 */
public class ConexionBD 
{
    private static String url = "jdbc:postgresql://localhost:5432/soporte_reconversion";
    private static Connection bd;
    
    public static Boolean Conectar(String usuario, String contra)
    {
        Properties props = new Properties();
        props.setProperty("user", usuario);   
        props.setProperty("password", contra);
        Boolean login = false;

        try
        {
            bd = DriverManager.getConnection(url, props);
            
            System.out.print(bd.getMetaData().getUserName());
            

            login = true;
        }catch(SQLException ex)
        {
            ex.printStackTrace();
        }
        return login;
    }
    
    public static void Cerrar() throws SQLException
    {
        if(bd != null)
            bd.close();
    }
}
