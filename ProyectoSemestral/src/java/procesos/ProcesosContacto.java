/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package procesos;
import java.sql.Connection;
import java.sql.SQLException;
import java.sql.Statement;

/**
 *
 * @author raulr
 */
public class ProcesosContacto {
    Connection _cn; /*Se le coloca el gion bajo para saber que es una variable global*/
    
    public ProcesosContacto(){
        _cn = new conexion().OpenDb();
    }
    
    public void RegistrarContacto(String Nombre, String Correo, String Mensaje,int ID){
        try{
            /*Prepara la DB y las tablas para una consulta*/
            Statement smtm = _cn.createStatement();
            
            String query = "Call EnviarContacto ('"+Nombre+"','"+Correo+"','"+Mensaje+"','"+ID+"');";
           
            smtm.executeQuery(query); /*Se usa el excuteUdate porque la acción a ejecutar es de insersión*/
            smtm.close(); /*Todo lo que se abre en DB se cierra*/
       
        }
        catch(SQLException e){
            int x=2;
        }  
    }
}
