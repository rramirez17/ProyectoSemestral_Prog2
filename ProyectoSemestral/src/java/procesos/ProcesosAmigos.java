/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package procesos;

import entidades.Personas;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author Angela
 */
/*En este proceso se guardan los amigos en la DB y se obtienen los amigos guardados 
de la base de datos*/

public class ProcesosAmigos {
    Connection _cn;
    
    public ProcesosAmigos(){
        _cn = new conexion().OpenDb();
    }
    
    public int GuardarAmigo(int idusuario, int idamigo){
         try{
            Statement stmt = _cn.createStatement();
            String query = "Call InsertarAmigo('"+idusuario+"', '"+idamigo+"')";
            
            int res = 0;
            stmt.executeUpdate(query);
           
            stmt.close();
        }
        catch(Exception e){
            int cx = 3;
        }
        return 0;
    }
    
    public List<Personas> ObtenerAmigos(int idamigo){
        try{
            Statement stmt = _cn.createStatement();
            String query ="Call Obteneramigo('"+idamigo+"')";
            
            List<Personas> personas = new ArrayList<>();
            
            ResultSet result = stmt.executeQuery(query);
            while(result.next()){
                Personas persona = new Personas();
                persona.setId_persona(result.getInt("id_amigo"));
                persona.setNombre_usuario(result.getString("nombre_usuario"));
                persona.setFoto_usuario(result.getString("foto"));
                
                personas.add(persona);
            }
            return personas;
        }
        catch(Exception e){}
        return null;
    }
}

