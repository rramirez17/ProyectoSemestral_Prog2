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
    
   
    public List<Memes> GetAllMemes(){
        try{

            Statement stmt = _cn.createStatement();
            String query = "Call MostrarMemes('A','1')";

            
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

}
