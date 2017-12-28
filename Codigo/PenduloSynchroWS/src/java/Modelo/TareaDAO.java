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
public class TareaDAO {
        Conectando conexion;
      
    public TareaDAO(){
        conexion = new Conectando();
    }
    
    public String RegistrarTarea(String nombre, String estado, String participantes, String monto, String pertenece, String visibilidad){
        String respuesta=null;
        Connection accesoDB = Conectando.obtener();
        try {
            PreparedStatement cs = accesoDB.prepareStatement("INSERT INTO tarea(Nombre,Estado,Participantes,Monto,Pertenece,Visibilidad) VALUES (?,?,?,?,?,?)");
          
            cs.setString(1, nombre);
            cs.setString(2, estado);
            cs.setString(3, participantes);
            cs.setDouble(4, Double.parseDouble(monto));
            cs.setString(5, pertenece);
            cs.setString(6, visibilidad);
            
            int rs = cs.executeUpdate();
            
            if(rs>0){
                respuesta="Registro exitoso.";
             //   accesoDB.close();
            }
        } catch (SQLException e) {
        }
        return respuesta;
    }
    
    public String ActualizarTarea(String nombre, String estado, String participantes, String monto, String visibilidad, String pertenece){
        String respuesta=null;
        Connection accesoDB = Conectando.obtener();
        try {
            PreparedStatement cs = accesoDB.prepareStatement("UPDATE tarea SET Nombre=?, Estado=?, Participantes=?, Monto=?, Visibilidad=?  WHERE Pertenece=?");
          
            cs.setString(1, nombre);
            cs.setString(2, estado);
            cs.setString(3, participantes);
            cs.setDouble(4, Double.parseDouble(monto));
            cs.setString(5, visibilidad);
            cs.setString(6, pertenece);
            
            int rs = cs.executeUpdate();
            
            if(rs>0){
                respuesta="Actualizado exitoso.";
             //   accesoDB.close();
            }
        } catch (SQLException e) {
        }
        return respuesta;
     }

    public String EliminarTarea(String nombre, String pertenece) {
           String respuesta=null;
        Connection accesoDB = Conectando.obtener();
        try {
            PreparedStatement cs = accesoDB.prepareStatement("DELETE * FROM tarea WHERE Nombre=? AND Pertenece=?");
          
            cs.setString(1, nombre);
            cs.setString(2, pertenece);
         
            
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
