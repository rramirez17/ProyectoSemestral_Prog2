/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package procesos;
import entidades.Personas;
import java.sql.Connection;
import java.sql.Statement;

/**
 *
 * @author Angela
 */
public class ProcesosPersonas {
    Connection _cn; /*Se le coloca el gion bajo para saber que es una variable global*/
    
    public ProcesosPersonas(){
        _cn = new conexion().OpenDb();
    }
    
    public int RegistrarPersona(Personas persona){
        int resultado = 0;
        try{
            /*Prepara la DB y las tablas para una consulta*/
            Statement smtm = _cn.createStatement();
            String query = "INSERT INTO persona(nombre_persona, correo_persona)";
            /*El valor que tiene query se le concatena lo que esta en comillas*/
            query += "VALUES('"+persona.getNombre_persona()+"','"+persona.getCorreo_persona()+"')";
        
            resultado = smtm.executeUpdate(query); /*Se usa el excuteUdate porque la acción a ejecutar es de insersión*/
            smtm.close(); /*Todo lo que se abre en DB se cierra*/
            
            return resultado;
        }
        catch(Exception e){}
        
        return resultado;
    }    
}
