/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package entidades;

/**
 *
 * @author raulr
 */
public class Contacto {

    public String getNombre_usuario() {
        return nombre_usuario;
    }

    public void setNombre_usuario(String nombre_usuario) {
        this.nombre_usuario = nombre_usuario;
    }

    public String getCorreo_persona() {
        return correo_persona;
    }

    public void setCorreo_persona(String correo_persona) {
        this.correo_persona = correo_persona;
    }

    public String getMensaje() {
        return mensaje;
    }

    public void setMensaje(String mensaje) {
        this.mensaje = mensaje;
    }
    private String nombre_usuario;
    private String correo_persona;
    private String mensaje;
}
