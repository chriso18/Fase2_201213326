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
public class HabilidadDAO {
         Conectando conexion;
      
    public HabilidadDAO(){
        conexion = new Conectando();
    }
 public String RegistrarHabilidad(String nombre){
        String respuesta=null;
        Connection accesoDB = Conectando.obtener();
        try {
            PreparedStatement cs = accesoDB.prepareStatement("INSERT INTO habilidad(Nombre) VALUES (?)");
          
            cs.setString(1, nombre);
            
            int rs = cs.executeUpdate();
            
            if(rs>0){
                respuesta="Registro exitoso.";
             //   accesoDB.close();
            }
        } catch (SQLException e) {
        }
        return respuesta;
    }
    
 public String ActualizarHabilidad(String nombre, String nuevo){
        String respuesta=null;
        Connection accesoDB = Conectando.obtener();
        try {
            PreparedStatement cs = accesoDB.prepareStatement("UPDATE habilidad SET Nombre=?  WHERE Nombre=?");
          
            cs.setString(1, nuevo);
            cs.setString(2, nombre);
            
            int rs = cs.executeUpdate();
            
            if(rs>0){
                respuesta="Actualizado exitoso.";
             //   accesoDB.close();
            }
        } catch (SQLException e) {
        }
        return respuesta;
     }

 public String EliminarHabilidad(String nombre) {
           String respuesta=null;
        Connection accesoDB = Conectando.obtener();
        try {
            PreparedStatement cs = accesoDB.prepareStatement("DELETE * FROM habilidad WHERE Nombre=?");
          
            cs.setString(1, nombre);
         
            
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
