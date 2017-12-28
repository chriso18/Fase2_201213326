/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Modelo;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.*;
import javax.swing.JOptionPane;

/**
 *
 * @author Christian
 */
public class UsuarioDAO {
     Conectando conexion;
      
    public UsuarioDAO(){
        conexion = new Conectando();
    }

 
    public Boolean ValidarUsuario(String usuario, String password) {
        boolean respuesta=false;
        Usuario empleado=null;
        Connection accesoDB = Conectando.obtener();
        try {
            
            PreparedStatement ps = accesoDB.prepareStatement("SELECT * FROM Usuario where Alias=? and Pass=?");
            ps.setString(1, usuario);
            ps.setString(2, password);
            
            ResultSet rs = ps.executeQuery();
            if(rs.next()){
               respuesta=true;
            }else{respuesta=false;}
        } catch (SQLException e) { 
         System.out.println(e);}
        return respuesta;
    }
    
    public Usuario ObtenerPass(String usuario, String password){
        Usuario empleado=null;
        Connection accesoDB = conexion.obtener();
        try {
            
            PreparedStatement ps = accesoDB.prepareStatement("SELECT Pass FROM usuario where Alias=? and Pass=?");
            ps.setString(1, usuario);
            ps.setString(2, password);
            
            ResultSet rs = ps.executeQuery();
            if(rs.next()){
               empleado = new Usuario();
               empleado.setPassword(rs.getString(1));
               return empleado;
            }
        } catch (SQLException e) {
             System.out.println(e);
        }
        return empleado;
    }
  
    public String ObtenerPass2(String usuario, String password){
        Usuario empleado=null;
        String respuesta = null;
        Connection accesoDB = conexion.obtener();
        try {
            
            PreparedStatement ps = accesoDB.prepareStatement("SELECT Pass FROM usuario where Alias=? and Pass=?");
            ps.setString(1, usuario);
            ps.setString(2, password);
            
            ResultSet rs = ps.executeQuery();
            if(rs.next()){
               empleado = new Usuario();
               empleado.setPassword(rs.getString(1));
               String pass=empleado.getPassword();
               respuesta=pass;
               return respuesta;
            }
        } catch (SQLException e) {
             System.out.println(e);
        }
        return respuesta;
    }
  
    public String ObtenerUsuario2(String usuario, String password){
        Usuario empleado=null;
        String respuesta = null;
        Connection accesoDB = conexion.obtener();
        try {
            
            PreparedStatement ps = accesoDB.prepareStatement("SELECT Alias FROM usuario where Alias=? and Pass=?");
            ps.setString(1, usuario);
            ps.setString(2, password);
            
            ResultSet rs = ps.executeQuery();
            if(rs.next()){
               empleado = new Usuario();
               empleado.setUsuario(rs.getString(1));
               String usu=empleado.getUsuario();
               respuesta=usu;
               return respuesta;
            }
        } catch (SQLException e) {
             System.out.println(e);
        }
        return respuesta;
    }
  
    public String ObtenerImagen(String usuario, String password){
        Usuario empleado=null;
        String respuesta = null;
        Connection accesoDB = conexion.obtener();
        try {
            
            PreparedStatement ps = accesoDB.prepareStatement("SELECT Imagen FROM usuario where Alias=? and Pass=?");
            ps.setString(1, usuario);
            ps.setString(2, password);
            
            ResultSet rs = ps.executeQuery();
            if(rs.next()){
               empleado = new Usuario();
               empleado.setImagen(rs.getString(1));
               String usu=empleado.getImagen();
               respuesta=usu;
               return respuesta;
            }
        } catch (SQLException e) {
             System.out.println(e);
        }
        return respuesta;
    }
  
    
    public Usuario ObtenerUsuario(String usuario, String password){
        Usuario empleado=null;
        Connection accesoDB = conexion.obtener();
        try {
            
            PreparedStatement ps = accesoDB.prepareStatement("SELECT Alias FROM usuario where Alias=? and Pass=?");
            ps.setString(1, usuario);
            ps.setString(2, password);
            
            ResultSet rs = ps.executeQuery();
            if(rs.next()){
               empleado = new Usuario();
               empleado.setUsuario(rs.getString(1));
               return empleado;
            }
        } catch (SQLException e) {
             System.out.println(e);
        }
        return empleado;
    }
    
    public String RegistrarUsuario(String nombre, String apellido, String correo, String usuario, String pass, String nacimiento, String imagen){
        String respuesta=null;
        Connection accesoDB = Conectando.obtener();
        try {
            PreparedStatement cs = accesoDB.prepareStatement("INSERT INTO usuario(Nombre,Apellido,Correo,Alias,Pass,Nacimiento,Imagen) VALUES (?,?,?,?,?,?,?)");
          
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
                Conectando.cerrar();
            }
        } catch (SQLException e) {
            System.out.println(e);
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
