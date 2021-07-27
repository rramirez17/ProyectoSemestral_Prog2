/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package procesos;

import entidades.Personas;
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

/*En este proceso se tienen todos los procesos referentes a las personas: 
    registar persona, validar login de usuario y obtener a todas las personas por coincidencia.*/

public class ProcesosPersonas {
    Connection _cn; /*Se le coloca el gion bajo para saber que es una variable global*/
    
    public ProcesosPersonas(){
        _cn = new conexion().OpenDb();
    }
    
    public void RegistrarPersona(Personas persona){
        try{
            /*Prepara la DB y las tablas para una consulta*/
            Statement smtm = _cn.createStatement();
            String nombre = persona.getNombre_persona();
            String correo = persona.getCorreo_persona();
            String username = persona.getNombre_usuario();
            String contra = persona.getContrasena();
            String fotoP = persona.getFoto_usuario();
            
            String query = "Call Registro ('"+nombre+"','"+correo+"','"+username+"','"+contra+"','"+fotoP+"');";
           
            smtm.executeQuery(query); /*Se usa el excuteUdate porque la acción a ejecutar es de insersión*/
            smtm.close(); /*Todo lo que se abre en DB se cierra*/
       
        }
        catch(SQLException e){
        }  
    }
    
    public Personas ValidarLoginUsuario(Personas personain){
        try{
            Statement stmt = _cn.createStatement();
            String query = "CALL ValidarUsuario('"+personain.getNombre_usuario()+"','"+personain.getContrasena()+"')";
           
            ResultSet result = stmt.executeQuery(query);
            while(result.next()){
                Personas personaout = new Personas();
                personaout.setId_persona(result.getInt("id_usuario"));
                String permisos = result.getString("permisos_usuario");
                personaout.setFoto_usuario(result.getString("foto_usuario"));
                personaout.setNombre_usuario(result.getString("nombre_usuario"));
                personaout.setPermisos_usuario(permisos.charAt(0));
               
                return personaout;
            }
        }
        catch(Exception e){}
        return null;
    
    }
    
    public List<Personas> GetAllPersonasCoincidencia(String ref){
        try{
            Statement stmt = _cn.createStatement();
            String query = "Call ObtenerUsuariosPorCoincidencia('"+ref+"')";
            
            List<Personas> personas = new ArrayList<>();
            
            ResultSet result = stmt.executeQuery(query);
            while(result.next()){
                Personas persona = new Personas();
                persona.setNombre_usuario(result.getString("nombre_usuario"));
                persona.setFoto_usuario(result.getString("foto"));
                persona.setId_persona(result.getInt("id_usuario"));
                
                personas.add(persona);
            }
            
            result.close();
            stmt.close();
            
            return personas;
        }
        catch(Exception e){
        }
        return null;
    }
}

