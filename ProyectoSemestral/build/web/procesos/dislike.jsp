<%-- 
    Document   : dislike
    Created on : Jul 24, 2021, 10:36:55 AM
    Author     : raulr
--%>

<!-- Este proceso se utiliza para quitar los likes-->
<%@page import="procesos.ProcesosMemes"%>
<%
    int id_meme = Integer.parseInt(request.getParameter("id_meme"));
    int id_usuario = (int)session.getAttribute("id_usuario");
    
    ProcesosMemes meme = new ProcesosMemes();
    
    meme.QuitarLike(id_meme,id_usuario);
    
    response.sendRedirect("../home.jsp");

%>