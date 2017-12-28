/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package SynchroWeb;

import javax.jws.WebService;
import javax.jws.WebMethod;
import javax.jws.WebParam;
import Modelo.*;

/**
 *
 * @author Christian
 */
@WebService(serviceName = "PenduloWS")
public class PenduloWS {

    /**
     * This is a sample web service operation
     */
    @WebMethod(operationName = "hello")
    public String hello(@WebParam(name = "name") String txt) {
        return "Hello " + txt + " !";
    }



    /**
     * Web service operation
     * @param nombre
     * @param apellido
     * @param correo
     * @param usuario
     * @param pass
     * @param nacimiento
     * @param imagen
     * @return 
     */
    @WebMethod(operationName = "AgregarUsuario")
    public String AgregarUsuario(@WebParam(name = "nombre") String nombre, @WebParam(name = "apellido") String apellido, @WebParam(name = "correo") String correo, @WebParam(name = "usuario") String usuario, @WebParam(name = "pass") String pass, @WebParam(name = "nacimiento") String nacimiento, @WebParam(name = "imagen") String imagen) {
       UsuarioDAO emp = new UsuarioDAO();
       String respuesta = emp.RegistrarUsuario(nombre, apellido, correo, usuario, pass, nacimiento, imagen);
       return respuesta;
    }

    /**
     * Web service operation
     */
    @WebMethod(operationName = "ModificarUsuario")
    public String ModificarUsuario(@WebParam(name = "nombre") String nombre, @WebParam(name = "apellido") String apellido, @WebParam(name = "usuario") String usuario, @WebParam(name = "pass") String pass, @WebParam(name = "nacimiento") String nacimiento, @WebParam(name = "banco") String banco, @WebParam(name = "imagen") String imagen, @WebParam(name = "correo") String correo) {
       UsuarioDAO emp = new UsuarioDAO();
       String respuesta = emp.ActualizarUsuario(nombre, apellido, usuario, pass, nacimiento, banco, imagen, correo);
       return respuesta;
    }

    /**
     * Web service operation
     */
    @WebMethod(operationName = "EliminarUsuario")
    public String EliminarUsuario(@WebParam(name = "Alias") String Alias, @WebParam(name = "Correo") String Correo) {
       UsuarioDAO emp = new UsuarioDAO();
       String respuesta = emp.EliminarUsuario(Alias, Correo);
       return respuesta;
    }

    /**
     * Web service operation
     */
    @WebMethod(operationName = "ObtenerContra")
    public Usuario ObtenerContra(@WebParam(name = "usuario") String usuario, @WebParam(name = "pass") String pass) {
       UsuarioDAO emp = new UsuarioDAO();
       Usuario respuesta = emp.ObtenerPass(usuario, pass);
       return respuesta;
    }

    /**
     * Web service operation
     */
    @WebMethod(operationName = "ObtenerUsuario")
    public Usuario ObtenerUsuario(@WebParam(name = "usuario") String usuario, @WebParam(name = "pass") String pass) {
       UsuarioDAO emp = new UsuarioDAO();
       Usuario respuesta = emp.ObtenerUsuario(usuario, pass);
       return respuesta;
    }

    /**
     * Web service operation
     */
    @WebMethod(operationName = "VerificarUsuario")
    public boolean VerificarUsuario(@WebParam(name = "usuario") String usuario, @WebParam(name = "pass") String pass) {
       UsuarioDAO emp = new UsuarioDAO();
       boolean respuesta = emp.ValidarUsuario(usuario, pass);
       return respuesta;
    }

    /**
     * Web service operation
     */
    @WebMethod(operationName = "ObtenerPass2")
    public String ObtenerPass2(@WebParam(name = "usuario") String usuario, @WebParam(name = "pass") String pass) {
       UsuarioDAO emp = new UsuarioDAO();
       String respuesta = emp.ObtenerPass2(usuario, pass);
       return respuesta;
    }

    /**
     * Web service operation
     */
    @WebMethod(operationName = "ObtenerUsu2")
    public String ObtenerUsu2(@WebParam(name = "usuario") String usuario, @WebParam(name = "pass") String pass) {
       UsuarioDAO emp = new UsuarioDAO();
       String respuesta = emp.ObtenerUsuario2(usuario, pass);
       return respuesta;
    }

    /**
     * Web service operation
     */
    @WebMethod(operationName = "ObtenerImagen")
    public String ObtenerImagen(@WebParam(name = "usuario") String usuario, @WebParam(name = "pass") String pass) {
       UsuarioDAO emp = new UsuarioDAO();
       String respuesta = emp.ObtenerImagen(usuario, pass);
       return respuesta;
    }

    /**
     * Web service operation
     */
    @WebMethod(operationName = "AgregarProyecto")
    public String AgregarProyecto(@WebParam(name = "nombre") String nombre, @WebParam(name = "responsable") String responsable, @WebParam(name = "estado") String estado, @WebParam(name = "costo") String costo, @WebParam(name = "visibilidad") String visibilidad, @WebParam(name = "logo") String logo) {
       ProyectoDAO emp = new ProyectoDAO();
       String respuesta = emp.RegistrarProyecto(nombre, responsable, estado, costo, visibilidad, logo);
       return respuesta;
    }

    /**
     * Web service operation
     */
    @WebMethod(operationName = "ActualizarProyecto")
    public String ActualizarProyecto(@WebParam(name = "nombre") String nombre, @WebParam(name = "estado") String estado, @WebParam(name = "monto") String monto, @WebParam(name = "visibilidad") String visibilidad, @WebParam(name = "logo") String logo, @WebParam(name = "responsable") String responsable) {
       ProyectoDAO emp = new ProyectoDAO();
       String respuesta = emp.ActualizarProyecto(nombre, estado, monto, visibilidad, logo, responsable);
       return respuesta;
    }

    /**
     * Web service operation
     */
    @WebMethod(operationName = "EliminsrProyecto")
    public String EliminsrProyecto(@WebParam(name = "nombre") String nombre, @WebParam(name = "responsable") String responsable) {
       ProyectoDAO emp = new ProyectoDAO();
       String respuesta = emp.EliminarProyecto(nombre, responsable);
       return respuesta;
    }

    /**
     * Web service operation
     */
    @WebMethod(operationName = "AgregarGrupo")
    public String AgregarGrupo(@WebParam(name = "nombre") String nombre, @WebParam(name = "descripcion") String descripcion, @WebParam(name = "logo") String logo, @WebParam(name = "lider") String lider) {
       GrupoDAO emp = new GrupoDAO();
       String respuesta = emp.RegistrarGrupo(nombre, descripcion, logo, lider);
       return respuesta;
    }

    /**
     * Web service operation
     */
    @WebMethod(operationName = "AgregarTarea")
    public String AgregarTarea(@WebParam(name = "nombre") String nombre, @WebParam(name = "estado") String estado, @WebParam(name = "participantes") String participantes, @WebParam(name = "monto") String monto, @WebParam(name = "pertenece") String pertenece, @WebParam(name = "visibilidad") String visibilidad) {
       TareaDAO emp = new TareaDAO();
       String respuesta = emp.RegistrarTarea(nombre, estado, participantes, monto, pertenece, visibilidad);
       return respuesta;
    }

    /**
     * Web service operation
     */
    @WebMethod(operationName = "AgregarHabilidad")
    public String AgregarHabilidad(@WebParam(name = "nombre") String nombre) {
       HabilidadDAO emp = new HabilidadDAO();
       String respuesta = emp.RegistrarHabilidad(nombre);
       return respuesta;
    }

    /**
     * Web service operation
     */
    @WebMethod(operationName = "AgregarConocimiento")
    public String AgregarConocimiento(@WebParam(name = "nombre") String nombre, @WebParam(name = "usuario") String usuario) {
       ConocimientoDAO emp = new ConocimientoDAO();
       String respuesta = emp.RegistrarConocimiento(nombre, usuario);
       return respuesta;
    }

   

}
