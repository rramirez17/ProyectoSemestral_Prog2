<%-- 
    Document   : amigos
    Created on : 07/26/2021, 9:49:21 p. m.
    Author     : Angela
--%>

<%@page import="entidades.Personas"%>
<%@page import="procesos.ProcesosAmigos"%>
<%
    int producto_id = Integer.parseInt(request.getParameter("pid"));
    //int cantidad = Integer.parseInt(request.getParameter("cant"));
    int id_persona= (int)session.getAttribute("id_persona");
    
    Personas persona = new Personas();
    persona.setId_persona(id_persona);
    persona.setNombre_usuario(nombre_usuario);
    persona.setFoto_usuario(foto_usuario);
        
    ProcesosCarrito carritoDb = new ProcesosCarrito();
    
    int totalProductos = carritoDb.GuardarProductoCarrito(persona);
    
    out.print(totalProductos);
%>