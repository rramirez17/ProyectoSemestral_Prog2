/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package procesos;
import entidades.Memes;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author raulr
 */
public class ProcesosMemes {
    Connection _cn;
    
    public ProcesosMemes(){
        _cn = new Conexion().OpenDb();
    }
    
    public int MemeLiked(int id_meme, int id_usuario){
        int resultado = 0;
        try{

            Statement stmt = _cn.createStatement();
            String query = "Call MemeLiked('"+id_meme+"','"+id_usuario+"')";
            
            ResultSet result = stmt.executeQuery(query);
            resultado = result.getInt("existe");
            
            
            result.close();
            stmt.close();
           
        }
        catch(SQLException e){
            int x = 5;
        }
        return resultado;
    }
   
    public List<Memes> GetAllMemes(int idUsuario,String permiso){
        try{

            Statement stmt = _cn.createStatement();
            String query = "Call MostrarMemes('"+permiso+"','"+idUsuario+"')";

            
            List<Memes> memes = new ArrayList<>();
            
            ResultSet result = stmt.executeQuery(query);
            while(result.next()){
                Memes meme = new Memes();
                meme.setNombre_usuario(result.getString("nombre_usuario"));
                meme.setTitulo_meme(result.getString("titulo_meme"));
                meme.setImagen_meme(result.getString("imagen_meme"));
                meme.setFoto_usuario(result.getString("foto_usuario"));
                meme.setFecha(result.getString("fecha")); 
                meme.setLikes(result.getInt("likes"));
                meme.setId_meme(result.getInt("id_meme"));
                meme.setLiked(MemeLiked(meme.getId_meme(),idUsuario));
                memes.add(meme);
            }
            
            result.close();
            stmt.close();
            
            return memes;
        }
        catch(SQLException e){
            int x = 5;
        }
        return null;
    }
    
    public int DarLike(int id_meme, int id_usuario){
        int resultado = 0;
        try{
            Statement stmt = _cn.createStatement();
            String query = "Call DarLike("+id_meme+","+id_usuario+")";
            
            resultado = stmt.executeUpdate(query);
            stmt.close();
            
            return resultado;
        }
        catch(Exception e){}
        
        return resultado;
    }
    
    public int QuitarLike(int id_meme, int id_usuario){
        int resultado = 0;
        try{
            Statement stmt = _cn.createStatement();
            String query = "Call QuitarLike("+id_meme+","+id_usuario+")";
            
            resultado = stmt.executeUpdate(query);
            stmt.close();
            
            return resultado;
        }
        catch(Exception e){}
        
        return resultado;
    }
    
    public void BorrarMeme(int id_meme){

        try{
            Statement stmt = _cn.createStatement();
            String query = "Call BorrarMeme("+id_meme+")";
            
            stmt.executeQuery(query);
            stmt.close();

        }
        catch(Exception e){}

    }
    
}
