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
public class GrupoDAO {
      Conectando conexion;
      
    public GrupoDAO(){
        conexion = new Conectando();
    }
    
    public String RegistrarGrupo(String nombre, String descripcion, String logo, String lider){
        String respuesta=null;
        Connection accesoDB = Conectando.obtener();
        try {
            PreparedStatement cs = accesoDB.prepareStatement("INSERT INTO asociacion(Nombre,Descripcion,Logo,Lider) VALUES (?,?,?,?)");
          
            cs.setString(1, nombre);
            cs.setString(2, descripcion);
            cs.setString(3, logo);
            cs.setString(4, lider);
            
            int rs = cs.executeUpdate();
            
            if(rs>0){
                respuesta="Registro exitoso.";
             //   accesoDB.close();
            }
        } catch (SQLException e) {
        }
        return respuesta;
    }
    
    public String ActualizarGrupo(String nombre, String descripcion, String logo, String lider){
        String respuesta=null;
        Connection accesoDB = Conectando.obtener();
        try {
            PreparedStatement cs = accesoDB.prepareStatement("UPDATE asociacion SET Nombre=?, Descripcion=?, Logo=?  WHERE Lider=?");
          
            cs.setString(1, nombre);
            cs.setString(2, descripcion);
            cs.setString(3, logo);
            cs.setString(4, lider);
            
            int rs = cs.executeUpdate();
            
            if(rs>0){
                respuesta="Actualizado exitoso.";
             //   accesoDB.close();
            }
        } catch (SQLException e) {
        }
        return respuesta;
     }

    public String EliminarGrupo(String nombre, String lider) {
           String respuesta=null;
        Connection accesoDB = Conectando.obtener();
        try {
            PreparedStatement cs = accesoDB.prepareStatement("DELETE * FROM asociacion WHERE Nombre? AND Lider=?");
          
            cs.setString(1, nombre);
            cs.setString(2, lider);
         
            
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
