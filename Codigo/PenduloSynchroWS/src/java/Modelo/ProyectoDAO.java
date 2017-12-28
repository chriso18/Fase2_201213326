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
public class ProyectoDAO {
        Conectando conexion;
      
    public ProyectoDAO(){
        conexion = new Conectando();
    }
   
    public String RegistrarProyecto(String nombre, String responsable, String estado, String monto, String visibilidad, String logo){
        String respuesta=null;
        Connection accesoDB = Conectando.obtener();
        try {
            PreparedStatement cs = accesoDB.prepareStatement("INSERT INTO proyecto(Nombre,Responsable,estado,monto,visibilidad,Logo) VALUES (?,?,?,?,?,?)");
          
            cs.setString(1, nombre);
            cs.setString(2, responsable);
            cs.setString(3, estado);
            cs.setDouble(4, Double.parseDouble(monto));
            cs.setString(5, visibilidad);
            cs.setString(6, logo);
            
            int rs = cs.executeUpdate();
            
            if(rs>0){
                respuesta="Registro exitoso.";
             //   accesoDB.close();
            }
        } catch (SQLException e) {
        }
        return respuesta;
    }
    
    public String ActualizarProyecto(String nombre, String estado, String monto, String visibilidad, String logo, String responsable){
        String respuesta=null;
        Connection accesoDB = Conectando.obtener();
        try {
            PreparedStatement cs = accesoDB.prepareStatement("UPDATE proyecto SET Nombre=?, Estado=?, Monto=?, Visibilidad=?, Logo=?,Responsable=?, Imagen=?  WHERE Responsable=?");
          
            cs.setString(1, nombre);
            cs.setString(2, estado);
            cs.setDouble(4, Double.parseDouble(monto));
            cs.setString(4, visibilidad);
            cs.setString(5, logo);
            cs.setString(6, responsable);
            
            int rs = cs.executeUpdate();
            
            if(rs>0){
                respuesta="Actualizado exitoso.";
             //   accesoDB.close();
            }
        } catch (SQLException e) {
        }
        return respuesta;
     }

    public String EliminarProyecto(String nombre, String responsable) {
           String respuesta=null;
        Connection accesoDB = Conectando.obtener();
        try {
            PreparedStatement cs = accesoDB.prepareStatement("DELETE * FROM proyecto WHERE Nombre=? AND Responsable=?");
          
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
