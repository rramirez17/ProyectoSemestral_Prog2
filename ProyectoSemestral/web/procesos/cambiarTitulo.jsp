<%-- 
    Document   : cambiarTitulo
    Created on : 07/27/2021, 10:33:15 a. m.
    Author     : Angela
--%>
<%@page import="entidades.Memes"%>

<%@page import="procesos.ProcesosMemes"%>
<%
    try{
          
       ProcesosMemes memes = new ProcesosMemes();
       String titulo = request.getParameter("titulo_meme");
       int id = Integer.parseInt(request.getParameter("ID"));
       memes.ActualizarTituloMeme(titulo, id);
    
       response.sendRedirect("../perfil.jsp");
        
    }
    catch(Exception e){
        response.sendRedirect("../perfil.jsp");
    }
    
%>
