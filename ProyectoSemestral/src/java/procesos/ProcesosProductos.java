/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package procesos;

import Entidades.Ingredientes;
import Entidades.Productos;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author sebar
 */
public class ProcesosProductos {
    
    Connection _cn;
    
    public ProcesosProductos(){
        _cn = new Conexion().OpenDb();
    }
    
    public List<Productos> GetAllProductos(int id){
        try{
            Statement stmt = _cn.createStatement();
            String query = "Call ObtenerTodosLosProductos('"+id+"')";
            
            List<Productos> productos = new ArrayList<>();
            
            ResultSet result = stmt.executeQuery(query);
            while(result.next()){
                Productos producto = new Productos();
                producto.setNombre(result.getString("nombre"));
                producto.setCategoria(result.getString("categoria"));
                producto.setFoto(result.getString("foto"));
                producto.setFechaCaducidad(result.getString("fecha_expiracion"));
                producto.setPrecio(result.getFloat("precio"));
                producto.setId(result.getInt("id"));
                producto.setFavorito(result.getInt("fav"));
                
                productos.add(producto);
            }
            
            result.close();
            stmt.close();
            
            return productos;
        }
        catch(Exception e){
            int x = 5;
        }
        return null;
    }

    public List<Productos> GetAllProductosCoincidencia(String ref){
        try{
            Statement stmt = _cn.createStatement();
            String query = "Call ObtenerProductosPorConcidencia('"+ref+"')";
            
            List<Productos> productos = new ArrayList<>();
            
            ResultSet result = stmt.executeQuery(query);
            while(result.next()){
                Productos producto = new Productos();
                producto.setNombre(result.getString("nombre"));
                producto.setCategoria(result.getString("categoria"));
                producto.setFoto(result.getString("foto"));
                producto.setFechaCaducidad(result.getString("fecha_expiracion"));
                producto.setPrecio(result.getFloat("precio"));
                producto.setId(result.getInt("id"));
                
                productos.add(producto);
            }
            
            result.close();
            stmt.close();
            
            return productos;
        }
        catch(Exception e){
            int x = 5;
        }
        return null;
    }

    public int GuardarFavorito(int pid, int uid){
        int resultado = 0;
        try{
            Statement stmt = _cn.createStatement();
            String query = "Call InsertarFavoritoProductoPersona("+pid+","+uid+")";
            
            resultado = stmt.executeUpdate(query);
            stmt.close();
            
            return resultado;
        }
        catch(Exception e){}
        
        return resultado;
    }
    
    public Productos ObtenerInformacionProductoPorId(int pid){
        try{
            Statement stmt = _cn.createStatement();
            String queryP = "Call ObtenerProductoInfo('"+pid+"')";
            String queryI = "Call ObtenerIngredientesProducto('"+pid+"')";
            
            Productos producto = new Productos();
            ResultSet resultP = stmt.executeQuery(queryP);
            while(resultP.next()){
                producto.setNombre(resultP.getString("nombre"));
                producto.setCategoria(resultP.getString("categoria"));
                producto.setFoto(resultP.getString("foto"));
                producto.setFechaCaducidad(resultP.getString("fecha_expiracion"));
                producto.setPrecio(resultP.getFloat("precio"));
            }
            resultP.close();
            
            ResultSet resultI = stmt.executeQuery(queryI);
            List<Ingredientes> ingredientes = new ArrayList<>();
            while(resultI.next()){
                Ingredientes ingrediente = new Ingredientes();
                ingrediente.setNombre(resultI.getString("nombre_ingrediente"));
                ingrediente.setPorcion(resultI.getInt("porcion"));
                ingredientes.add(ingrediente);
            }
            
            producto.setIngredientes(ingredientes);
            
            resultI.close();
            stmt.close();
            
            return producto;
            
        }
        catch(Exception e){
           int z =1;
        }
        return null;
    }
    
    public int GuardarProducto(Productos producto){
        int resultado = 0;
        try{
            Statement stmt = _cn.createStatement();
            String query = "Call InsertarProducto('"+producto.getNombre()+"','"+producto.getPrecio()+"','"+producto.getCategoriaId()+"','"+producto.getFoto()+"','"+producto.getFechaProduccion()+"','"+producto.getFechaCaducidad()+"')";
            
            resultado = stmt.executeUpdate(query);
            stmt.close();
            
            return resultado;
        }
        catch(Exception e){
            int x = 1;
        }
        
        return resultado;
    }
    
    public int ActualizarProducto(Productos producto){
        int resultado = 0;
        try{
            Statement stmt = _cn.createStatement();
            String query = "Call ActualizarProducto('"+producto.getId()+"','"+producto.getNombre()+"','"+producto.getPrecio()+"','"+producto.getCategoriaId()+"','"+producto.getFoto()+"','"+producto.getFechaProduccion()+"','"+producto.getFechaCaducidad()+"')";
            
            resultado = stmt.executeUpdate(query);
            stmt.close();
            
            return resultado;
        }
        catch(Exception e){
            int x = 1;
        }
        
        return resultado;
    }
    
    public int EliminarProducto(int pid){
        try{
            Statement stmt = _cn.createStatement();
            String query = "CALL EliminarProducto('"+pid+"')";
            
            return stmt.executeUpdate(query);
        }catch(Exception e){
            int x = 1;
        }
        return 0;
    }
    
}
