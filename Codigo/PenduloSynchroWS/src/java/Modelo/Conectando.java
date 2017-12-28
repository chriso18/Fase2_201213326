/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Modelo;
import java.sql.*;

/**
 *
 * @author Christian
 */
public class Conectando {
  private static Connection cnx = null;
   public static Connection obtener(){
      if (cnx == null) {
         try {
            Class.forName("org.mariadb.jdbc.Driver");
            cnx = DriverManager.getConnection("jdbc:mariadb://localhost:3306/synchrobd", "root", "usac");
         }catch(SQLException ex){
             ex.printStackTrace();
        }catch(Exception e){   
        }
      }
      return cnx;
   }
   public static void cerrar() throws SQLException {
      if (cnx != null) {
         cnx.close();
      }
   }    
}
