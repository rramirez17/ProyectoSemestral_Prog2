/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package procesos;

import entidades.Personas;
import entidades.Usuarios;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;

/**
 *
 * @author Angela
 */
public class ProcesosUsuarios {
    Connection _cn;
    
    public ProcesosUsuarios(){
        _cn = new conexion().OpenDb();
    }
    
    public int GuardarUsuario(Usuarios usuario,String correo){
        int resultado =0;
        try{
            Statement smtm = _cn.createStatement();
            String queryId = "SELECT id_persona FROM persona WHERE correo='"+correo+"'";
            int personaId = 0;
            
            ResultSet result = smtm.executeQuery(queryId);
            while(result.next()){
                personaId = result.getInt("id_persona");
            }
            
            String query = "INSERT INTO usuario(nombre_usuario,contrasena,id_persona)";
            query += "VALUES ('"+usuario.getNombre_usuario()+"','"+usuario.getContrasena()+"',"+personaId+")";
            
            resultado = smtm.executeUpdate(query);
            smtm.close();
            
            return resultado;
        }
        catch(Exception e){
            int x = 1;
        }
        return resultado;
    }
    
    public Personas ValidarLoginUsuario(Usuarios usuario){
        try{
            Statement stmt = _cn.createStatement();
            String query = "CALL ValidarUsuario('"+usuario.getNombre_usuario()+"','"+usuario.getContrasena()+"')";
            
            ResultSet result = stmt.executeQuery(query);
            while(result.next()){
                Personas persona = new Personas();
                persona.setNombre_persona(result.getString("nombre_persona"));
                persona.setCorreo_persona(result.getString("correo_persona"));
                persona.setId_persona(result.getInt("id_persona"));
                
                return persona;
            }
        }
        catch(Exception e){}
        return null;
    }
}