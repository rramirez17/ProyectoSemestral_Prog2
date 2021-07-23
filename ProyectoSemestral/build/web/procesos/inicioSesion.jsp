<%-- 
    Document   : inicioSesion
    Created on : 07/22/2021, 8:24:36 p. m.
    Author     : Angela
--%>

<%@page import="entidades.Personas"%>
<%@page import="procesos.ProcesosUsuarios"%>
<%@page import="entidades.Usuarios"%>
<%
    try{
        String nombre_usuario = request.getParameter("nombre_usuario");
        String contrasena = request.getParameter("contrasena");
        
        Usuarios usuario = new Usuarios();
        usuario.setNombre_usuario(nombre_usuario);
        usuario.setContrasena(contrasena);
        
        ProcesosUsuarios usuarioDb = new ProcesosUsuarios();
        
        Personas persona = usuarioDb.ValidarLoginUsuario(usuario);
        
        if (persona != null) {
            session.setAttribute("ui", persona.getId_persona());
            session.setAttribute("n", persona.getNombre_persona());
            session.setAttribute("c", persona.getCorreo_persona());
            
            session.setAttribute("error", 0);
            response.sendRedirect("../index.jsp");
        }else{
            session.setAttribute("error", 1);
            response.sendRedirect("../login.jsp");
        }

    }
    catch(Exception e){
        session.setAttribute("error", 1);
        response.sendRedirect("../login.jsp");
    }
    
%>