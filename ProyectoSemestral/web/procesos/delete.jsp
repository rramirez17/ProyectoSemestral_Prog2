<%-- 
    Document   : delete
    Created on : Jul 24, 2021, 11:07:05 AM
    Author     : raulr
--%>


<%@page import="procesos.ProcesosMemes"%>
<%
    int id_meme = request.getParameter("id_meme");
    
    
    ProcesosMemes meme = new ProcesosMemes();
    
    meme.BorrarMeme(id_meme);
    
    response.sendRedirect("../home.jsp");

%>