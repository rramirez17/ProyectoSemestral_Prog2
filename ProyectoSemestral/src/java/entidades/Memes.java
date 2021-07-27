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
public class Memes {
    private String nombre_usuario;
    private String titulo_meme;
    private String imagen_meme;
    private String foto_usuario;
    private String fecha;
    private int likes;
    private int liked;
    private int id_meme;

    public int getId_meme() {
        return id_meme;
    }

    public void setId_meme(int id_meme) {
        this.id_meme = id_meme;
    }
    
    
    public int getLiked() {
        return liked;
    }

    public void setLiked(int liked) {
        this.liked = liked;
    }
    
    public String getNombre_usuario() {
        return nombre_usuario;
    }

    public void setNombre_usuario(String nombre_usuario) {
        this.nombre_usuario = nombre_usuario;
    }

    public String getTitulo_meme() {
        return titulo_meme;
    }

    public void setTitulo_meme(String titulo_meme) {
        this.titulo_meme = titulo_meme;
    }

    public String getImagen_meme() {
        return imagen_meme;
    }

    public void setImagen_meme(String imagen_meme) {
        this.imagen_meme = imagen_meme;
    }

    public String getFoto_usuario() {
        return foto_usuario;
    }

    public void setFoto_usuario(String foto_usuario) {
        this.foto_usuario = foto_usuario;
    }

    public String getFecha() {
        return fecha;
    }

    public void setFecha(String fecha) {
        this.fecha = fecha;
    }

    public int getLikes() {
        return likes;
    }

    public void setLikes(int likes) {
        this.likes = likes;
    }
}
