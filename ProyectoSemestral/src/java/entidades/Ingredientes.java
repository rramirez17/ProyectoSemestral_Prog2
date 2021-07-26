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
public class Ingredientes {
    
    /**
     * @return the Porcion
     */
    public int getPorcion() {
        return Porcion;
    }

    /**
     * @param Porcion the Porcion to set
     */
    public void setPorcion(int Porcion) {
        this.Porcion = Porcion;
    }

    /**
     * @return the Nombre
     */
    public String getNombre() {
        return Nombre;
    }

    /**
     * @param Nombre the Nombre to set
     */
    public void setNombre(String Nombre) {
        this.Nombre = Nombre;
    }
    private int Porcion;
    private String Nombre;
    
}
