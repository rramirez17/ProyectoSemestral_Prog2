/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package entidades;
import java.util.List;

/**
 *
 * @author sebar
 */
public class Productos {
    /**
     * @return the CategoriaId
     */
    public int getCategoriaId() {
        return CategoriaId;
    }

    /**
     * @param CategoriaId the CategoriaId to set
     */
    public void setCategoriaId(int CategoriaId) {
        this.CategoriaId = CategoriaId;
    }

    /**
     * @return the FechaProduccion
     */
    public String getFechaProduccion() {
        return FechaProduccion;
    }
    
    /**
     * @param FechaProduccion the FechaCaducidad to set
     */
    public void setFechaProduccion(String FechaProduccion) {
        this.FechaProduccion = FechaProduccion;
    }

    /**
     * @return the ingredientes
     */
    public List<Ingredientes> getIngredientes() {
        return ingredientes;
    }

    /**
     * @param ingredientes the ingredientes to set
     */
    public void setIngredientes(List<Ingredientes> ingredientes) {
        this.ingredientes = ingredientes;
    }

    /**
     * @return the Favorito
     */
    public int getFavorito() {
        return Favorito;
    }

    /**
     * @param Favorito the Favorito to set
     */
    public void setFavorito(int Favorito) {
        this.Favorito = Favorito;
    }

    /**
     * @return the Id
     */
    public int getId() {
        return Id;
    }

    /**
     * @param Id the Id to set
     */
    public void setId(int Id) {
        this.Id = Id;
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

    /**
     * @return the Precio
     */
    public Float getPrecio() {
        return Precio;
    }

    /**
     * @param Precio the Precio to set
     */
    public void setPrecio(Float Precio) {
        this.Precio = Precio;
    }

    /**
     * @return the Categoria
     */
    public String getCategoria() {
        return Categoria;
    }

    /**
     * @param Categoria the Categoria to set
     */
    public void setCategoria(String Categoria) {
        this.Categoria = Categoria;
    }

    /**
     * @return the Foto
     */
    public String getFoto() {
        return Foto;
    }

    /**
     * @param Foto the Foto to set
     */
    public void setFoto(String Foto) {
        this.Foto = Foto;
    }

    /**
     * @return the FechaCaducidad
     */
    public String getFechaCaducidad() {
        return FechaCaducidad;
    }

    /**
     * @param FechaCaducidad the FechaCaducidad to set
     */
    public void setFechaCaducidad(String FechaCaducidad) {
        this.FechaCaducidad = FechaCaducidad;
    }
    
    private int Id;
    private String Nombre;
    private Float Precio;
    private String Categoria;
    private int CategoriaId;
    private String Foto;
    private String FechaCaducidad;
    private String FechaProduccion;
    private int Favorito;
    
    private List<Ingredientes> ingredientes;
    
}
