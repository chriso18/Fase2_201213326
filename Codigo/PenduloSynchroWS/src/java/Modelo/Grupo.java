/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Modelo;

/**
 *
 * @author Christian
 */
public class Grupo {
     String nombre;
     String descripcion;
     String logo;
     String lider;
     
    public Grupo(){
        nombre = "";
        descripcion = "";
        logo = "";
        lider = "";
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }
    
     public String getDescripcion() {
        return descripcion;
    }

    public void setDescripcion(String descripcion) {
        this.descripcion = descripcion;
    }
    
      public String getLogo() {
        return logo;
    }

    public void setLogo(String logo) {
        this.logo = logo;
    }   
    
     public String getLider() {
        return lider;
    }

    public void setLider(String lider) {
        this.lider = lider;
    }
}
