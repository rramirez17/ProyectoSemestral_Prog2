/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package entidades;

/**
 *
 * @author sebar
 */
public class Comentarios {
    
    /**
     * @return the FechaCreacion
     */
    public String getFechaCreacion() {
        return FechaCreacion;
    }

    /**
     * @param FechaCreacion the FechaCreacion to set
     */
    public void setFechaCreacion(String FechaCreacion) {
        this.FechaCreacion = FechaCreacion;
    }

    /**
     * @return the Persona
     */
    public String getPersona() {
        return Persona;
    }

    /**
     * @param Persona the Persona to set
     */
    public void setPersona(String Persona) {
        this.Persona = Persona;
    }

    /**
     * @return the Comentario
     */
    public String getComentario() {
        return Comentario;
    }

    /**
     * @param Comentario the Comentario to set
     */
    public void setComentario(String Comentario) {
        this.Comentario = Comentario;
    }

    /**
     * @return the PersonaId
     */
    public int getPersonaId() {
        return PersonaId;
    }

    /**
     * @param PersonaId the PersonaId to set
     */
    public void setPersonaId(int PersonaId) {
        this.PersonaId = PersonaId;
    }

    /**
     * @return the ProductoId
     */
    public int getProductoId() {
        return ProductoId;
    }

    /**
     * @param ProductoId the ProductoId to set
     */
    public void setProductoId(int ProductoId) {
        this.ProductoId = ProductoId;
    }
    private String Comentario;
    private int PersonaId;
    private int ProductoId;
    
    private String FechaCreacion;
    private String Persona;
    
}
