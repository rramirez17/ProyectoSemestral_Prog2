<%-- 
    Document   : enviarContacto
    Created on : Jul 27, 2021, 7:39:58 AM
    Author     : raulr
--%>


<%@page import="entidades.Contacto"%>

<%@page import="procesos.ProcesosContacto"%>
<%
    try{
        ProcesosContacto contacto = new ProcesosContacto();
        
        contacto.RegistrarContacto(request.getParameter("userName"),request.getParameter("email"),request.getParameter("message"),(int)session.getAttribute("id_usuario"));
        
    }
    catch(Exception e){
        response.sendRedirect("../contacto.jsp");
    }
        response.sendRedirect("../contacto.jsp");
%>
