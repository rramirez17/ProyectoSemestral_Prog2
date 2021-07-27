<%-- 
    Document   : perfil
    Created on : Jul 6, 2021, 4:37:09 PM
    Author     : raulr
--%>
<!-- Este es la página de perfil de uduario -->

<%@page import="entidades.Personas"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="entidades.Memes"%>
<%@page import="procesos.ProcesosMemes"%>
<%@ include file="header.jsp"%>
<!DOCTYPE html>

<%
    int iduser = (int)session.getAttribute("id_usuario");
    
    ProcesosMemes memesDb = new ProcesosMemes();    
    List<Memes> memes = memesDb.GetAllMemesUser(iduser);
    
    
    Personas persona = new Personas();
%>

<link rel="stylesheet" href="//cdn.materialdesignicons.com/3.7.95/css/materialdesignicons.min.css">
<div class="container" style="margin-top:80px" >
      <div class="row">
        <div class="col-12">
          <div class="card">
              <br>
            <div class="card-body" >
                
              <div class="row" >
                <div class="col-lg-4">
                    <br><br>
                  <div class="border-bottom text-center pb-4" >
                    <img src="<%=(String)session.getAttribute("foto_usuario")%>" alt="<%=(String)session.getAttribute("nombre_usuario")%>"  class="img-lg rounded-circle mb-3" style="width:300px;height:300px">
                    <div class="mb-3">
                        <h3><%=(String)session.getAttribute("nombre_usuario")%> <a href="#" class="text-info" data-toggle="tooltip" title="" data-original-title="Edit"><i class="fas fa-pencil-alt"></i></a></h3>
                        <br>
                        <a class="btn btn-warning btn-cons" href="verAmigos.jsp">Ver amigos</a> 
                    </div>
                  </div>
                    
                </div>
                <div class="col-lg-8">
                    <br><br>
                    <div class="profile-feed" style="margin-left:20%">
                        <form action="procesos/nuevoMeme.jsp" method="post">
                            <h1>Cargar contenido</h1>
                            <br>
                            <input type="text" name="titulo_meme" class="texto" placeholder="Ingresa un título para el meme" style ="width: 500px">
                            <br><br>
                            <input type="text" name="foto_meme" class="texto" placeholder="Ingresa un url para tu foto de perfil debe terminar en .jpg o .png" style ="width: 500px">
                            <br>
                            <br>
                            <input type="submit" class="boton" value="Subir meme">
                        </form>
                    <br>
                    <br>
                    <%if(memes.size() > 0){%>
                       <%for(Memes meme : memes){%> 
                  <div class="mb-4 py-4">
                     
                    <div class="d-flex justify-content-between align-items-center">
                        
                      <div class="d-flex flex-row align-items-center">
                        <div class="avatar mr-3"><img class="avatar-img" src="<%= meme.getFoto_usuario()%>" alt="<%= meme.getNombre_usuario() %>"></div>
                        <div>
                          <h2 class="h6 mb-0"><%= meme.getNombre_usuario() %></h2>
                          <p class="small text-muted mb-0"><%= meme.getFecha() %></p>
                        </div>
                      </div>
                    </div>
                    <img  class="rounded w-100 mt-3" src="<%= meme.getImagen_meme() %>" alt="<%= meme.getTitulo_meme() %>">
                    <div class="mt-3">
                      <h4 class="h5"><%= meme.getTitulo_meme() %> <a href="editarTitulo.jsp?id_meme=<%= meme.getId_meme()%>" class="text-info" data-toggle="tooltip" title="" data-original-title="Edit"><i class="fas fa-pencil-alt"></i></a></h4>
                    </div>
                    <%int existe = memesDb.MemeLiked(meme.getId_meme(),(int)session.getAttribute("id_usuario"));%>
                    </div>
                    <div class="d-flex justify-content-between">
                        <%if (existe == 1){%>
                                <a class="btn btn-default bg-transparent" href="procesos/dislike.jsp?id_meme=<%= meme.getId_meme()%>" ><i class="bi bi-heart-fill text-danger"></i></a><p><%= meme.getLikes()%> likes<p>
                            <%} else {%>
                                <a class="btn btn-default bg-transparent" href="procesos/like.jsp?id_meme=<%= meme.getId_meme()%>"><i class="bi bi-heart text-danger"></i></a><p><%= meme.getLikes() %> likes</p>
                                
                            <%}%>

                              <a  href="procesos/borrar.jsp?Mid=<%= meme.getId_meme() %>"><i class="bi bi-trash"></i>Borrar meme</a>
                           
                    </div>
                  </div>
                     <%}%>
                   <%}else{%>
                         <h2>Anímate a compartir un meme!</h2>
                     <%}%>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
</html>