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
public class Usuarios {

    /**
     * @return the id_usuario
     */
    public int getId_usuario() {
        return id_usuario;
    }

    /**
     * @param id_usuario the id_usuario to set
     */
    public void setId_usuario(int id_usuario) {
        this.id_usuario = id_usuario;
    }

    /**
     * @return the nombre_usuario
     */
    public String getNombre_usuario() {
        return nombre_usuario;
    }

    /**
     * @param nombre_usuario the nombre_usuario to set
     */
    public void setNombre_usuario(String nombre_usuario) {
        this.nombre_usuario = nombre_usuario;
    }

    /**
     * @return the contrasena
     */
    public String getContrasena() {
        return contrasena;
    }

    /**
     * @param contrasena the contrasena to set
     */
    public void setContrasena(String contrasena) {
        this.contrasena = contrasena;
    }
    
    private int id_usuario;
    private String nombre_usuario;
    private String contrasena;
    
}
