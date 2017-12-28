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
public class ConocimientoDAO {
         Conectando conexion;
      
    public ConocimientoDAO(){
        conexion = new Conectando();
    }

    public String RegistrarConocimiento(String nombre, String usuario){
        String respuesta=null;
        Connection accesoDB = Conectando.obtener();
        try {
            PreparedStatement cs = accesoDB.prepareStatement("INSERT INTO Conocimiento(Nombre,Usuario) VALUES (?,?)");
          
            cs.setString(1, nombre);
            cs.setString(2, usuario);
            
            int rs = cs.executeUpdate();
            
            if(rs>0){
                respuesta="Registro exitoso.";
             //   accesoDB.close();
            }
        } catch (SQLException e) {
        }
        return respuesta;
    }
    
    public String ActualizarConocimiento(String nombre, String usuario){
        String respuesta=null;
        Connection accesoDB = Conectando.obtener();
        try {
            PreparedStatement cs = accesoDB.prepareStatement("UPDATE conocimiento SET Nombre=?, Usuario=?  WHERE usuario=?");
          
            cs.setString(1, nombre);
            cs.setString(2, usuario);
            
            int rs = cs.executeUpdate();
            
            if(rs>0){
                respuesta="Actualizado exitoso.";
             //   accesoDB.close();
            }
        } catch (SQLException e) {
        }
        return respuesta;
     }

    public String EliminarConocimiento(String nombre, String responsable) {
           String respuesta=null;
        Connection accesoDB = Conectando.obtener();
        try {
            PreparedStatement cs = accesoDB.prepareStatement("DELETE * FROM conocimiento WHERE Nombre=? AND Responsable=?");
          
            cs.setString(1, nombre);
            cs.setString(2, responsable);
         
            
            int rs = cs.executeUpdate();
            
            if(rs>0){
                respuesta="Eliminado exitoso.";
             //   accesoDB.close();
            }
        } catch (SQLException e) {
        }
        return respuesta;
    }
}
