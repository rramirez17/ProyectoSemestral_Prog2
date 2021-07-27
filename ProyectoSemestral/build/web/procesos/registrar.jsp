<%-- 
    Document   : registrar
    Created on : 07/22/2021, 8:31:01 p. m.
    Author     : Angela
--%>
<!-- Este proceso se utiliza para poder registrar usuarios-->

<%@page import="entidades.Personas"%>

<%@page import="procesos.ProcesosPersonas"%>
<%
    try{
        ProcesosPersonas personas = new ProcesosPersonas();
        Personas persona = new Personas();
        persona.setNombre_persona(request.getParameter("nombre_persona"));
        persona.setCorreo_persona(request.getParameter("correo_persona"));
        persona.setNombre_usuario(request.getParameter("nombre_usuario"));
        persona.setContrasena(request.getParameter("contrasena"));
        persona.setFoto_usuario(request.getParameter("foto_usuario"));
        personas.RegistrarPersona(persona);
        
    }
    catch(Exception e){
        response.sendRedirect("../registrate.jsp");
    }
        response.sendRedirect("../login.jsp");
%>