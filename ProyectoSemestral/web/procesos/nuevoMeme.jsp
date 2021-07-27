<%-- 
    Document   : nuevoMeme
    Created on : Jul 27, 2021, 9:31:33 AM
    Author     : raulr
--%>


<%@page import="entidades.Memes"%>

<%@page import="procesos.ProcesosMemes"%>
<%
    try{
          
       ProcesosMemes memes = new ProcesosMemes();

       memes.NuevoMeme(request.getParameter("titulo_meme"),request.getParameter("foto_meme"),(int)session.getAttribute("id_usuario"));
    
       response.sendRedirect("../perfil.jsp");
        
    }
    catch(Exception e){
        response.sendRedirect("../perfil.jsp");
    }
    
%>
