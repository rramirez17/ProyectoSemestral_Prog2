<%-- 
    Document   : inicioSesion
    Created on : 07/22/2021, 8:24:36 p. m.
    Author     : Angela
--%>

<%@page import="entidades.Personas"%>
<%@page import="procesos.ProcesosPersonas"%>

<%
    try{
        
        
        ProcesosPersonas personas = new ProcesosPersonas();
        
        Personas persona = new Personas();
        persona.setNombre_usuario(request.getParameter("nombre_usuario"));
        persona.setContrasena(request.getParameter("contrasena"));
        Personas persona2 = new Personas();
        persona2 = personas.ValidarLoginUsuario(persona);
        
        if (persona != null) {
            session.setAttribute("id_usuario", persona2.getId_persona());
            session.setAttribute("permiso_usuario", persona2.getPermisos_usuario());
            session.setAttribute("foto_usuario",persona2.getFoto_usuario());
            session.setAttribute("nombre_usuario",persona2.getNombre_usuario());
            
            session.setAttribute("error", 0);
            response.sendRedirect("../home.jsp");
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