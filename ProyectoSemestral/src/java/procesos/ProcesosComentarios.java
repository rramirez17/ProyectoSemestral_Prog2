/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package procesos;
import entidades.Comentarios;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author sebar
 */
public class ProcesosComentarios {
    Connection _cn;
    
    public ProcesosComentarios(){
        _cn = new conexion().OpenDb();
    }
    
    public int GuardarComentario(Comentarios comentario){
        try{
            Statement stmt = _cn.createStatement();
            String query = "Call InsertarComentario('"+comentario.getComentario()+"','"+comentario.getProductoId()+"','"+comentario.getPersonaId()+"')";
            
            int res = stmt.executeUpdate(query);
            stmt.close();
            
            return res;
        }
        catch(Exception e){}
        return 0;
    }
    
    public List<Comentarios> ObtenerComentariosPorProductoId(int pid){
        try{
            Statement stmt = _cn.createStatement();
            String query ="Call ObtenerComentariosProducto('"+pid+"')";
            
            List<Comentarios> comentarios = new ArrayList<>();
            
            ResultSet result = stmt.executeQuery(query);
            while(result.next()){
                Comentarios comentario = new Comentarios();
                comentario.setComentario(result.getString("comentario"));
                comentario.setPersona(result.getString("persona"));
                comentario.setFechaCreacion(result.getString("created_at"));
                
                comentarios.add(comentario);
            }
            return comentarios;
        }
        catch(Exception e){}
        return null;
    }
    
}
