<%-- 
    Document   : borrar
    Created on : Jul 26, 2021, 10:07:32 PM
    Author     : raulr
--%>
<!-- Este proceso se utiliza para borrar los memes creados -->
<%@page import="procesos.ProcesosMemes"%>
<%
    int meme_id = Integer.parseInt(request.getParameter("Mid"));
    
    ProcesosMemes memes = new ProcesosMemes();
    
    memes.BorrarMeme(meme_id);
    
    response.sendRedirect("../home.jsp");
%>