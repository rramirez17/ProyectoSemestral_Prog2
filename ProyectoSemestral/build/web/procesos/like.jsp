<%-- 
    Document   : like
    Created on : Jul 24, 2021, 10:01:19 AM
    Author     : raulr
--%>

<%@page import="procesos.ProcesosMemes"%>
<%
    int id_meme = Integer.parseInt(request.getParameter("id_meme"));
    int id_usuario = (int)session.getAttribute("id_usuario");
    
    ProcesosMemes meme = new ProcesosMemes();
    
    meme.DarLike(id_meme,id_usuario);
    
    response.sendRedirect("../home.jsp");

%>