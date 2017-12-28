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
public class EstudioDAO {
         Conectando conexion;
      
    public EstudioDAO(){
        conexion = new Conectando();
    }

        public String RegistrarUsuario(String nombre, String apellido, String correo, String usuario, String pass, String nacimiento, String imagen){
        String respuesta=null;
        Connection accesoDB = Conectando.obtener();
        try {
            PreparedStatement cs = accesoDB.prepareStatement("INSERT INTO usuario(nombre,apellido,correo,usuario,pass,nacimiento,imagen) VALUES (?,?,?,?,?,?)");
          
            cs.setString(1, nombre);
            cs.setString(2, apellido);
            cs.setString(3, correo);
            cs.setString(4, usuario);
            cs.setString(5, pass);
            cs.setString(6, nacimiento);
            cs.setString(7, imagen);
            
            int rs = cs.executeUpdate();
            
            if(rs>0){
                respuesta="Registro exitoso.";
             //   accesoDB.close();
            }
        } catch (SQLException e) {
        }
        return respuesta;
    }
    
    public String ActualizarUsuario(String nombre, String apellido, String usuario, String pass, String nacimiento, String banco, String imagen, String correo){
        String respuesta=null;
        Connection accesoDB = Conectando.obtener();
        try {
            PreparedStatement cs = accesoDB.prepareStatement("UPDATE usuario SET Nombre=?, Apellido=?, Alias=?, Pass=?, nacimiento=?,Banco=?, Imagen=?  WHERE Correo=?");
          
            cs.setString(1, nombre);
            cs.setString(2, apellido);
            cs.setString(3, usuario);
            cs.setString(4, pass);
            cs.setString(5, nacimiento);
            cs.setString(6, banco);
            cs.setString(7, imagen);
            cs.setString(8, correo);
            
            int rs = cs.executeUpdate();
            
            if(rs>0){
                respuesta="Actualizado exitoso.";
             //   accesoDB.close();
            }
        } catch (SQLException e) {
        }
        return respuesta;
     }

    public String EliminarUsuario(String Alias, String Correo) {
           String respuesta=null;
        Connection accesoDB = Conectando.obtener();
        try {
            PreparedStatement cs = accesoDB.prepareStatement("DELETE * FROM usuario WHERE Alias=? AND Correo=?");
          
            cs.setString(1, Alias);
            cs.setString(2, Correo);
         
            
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
