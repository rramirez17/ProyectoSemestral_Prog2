/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package entidades;

/**
 *
 * @author Angela
 */
public class Personas {

    /**
     * @return the nombre_persona
     */
    public String getNombre_persona() {
        return nombre_persona;
    }

    /**
     * @param nombre_persona the nombre_persona to set
     */
    public void setNombre_persona(String nombre_persona) {
        this.nombre_persona = nombre_persona;
    }

    /**
     * @return the correo_persona
     */
    public String getCorreo_persona() {
        return correo_persona;
    }

    /**
     * @param correo_persona the correo_persona to set
     */
    public void setCorreo_persona(String correo_persona) {
        this.correo_persona = correo_persona;
    }

    /**
     * @return the id_persona
     */
    public int getId_persona() {
        return id_persona;
    }

    /**
     * @param id_persona the id_persona to set
     */
    public void setId_persona(int id_persona) {
        this.id_persona = id_persona;
    }

    private String nombre_persona;
    private String correo_persona;
    private int id_persona;
}
