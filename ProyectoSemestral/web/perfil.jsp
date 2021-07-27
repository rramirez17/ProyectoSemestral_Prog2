<%-- 
    Document   : perfil
    Created on : Jul 6, 2021, 4:37:09 PM
    Author     : raulr
--%>

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

%>

<link rel="stylesheet" href="//cdn.materialdesignicons.com/3.7.95/css/materialdesignicons.min.css">
<div class="container"style ="margin-left:15%">
      <div class="row">
        <div class="col-12">
          <div class="card">
            <div class="card-body" >
                
              <div class="row">
                  
                <div class="col-lg-4">
                    <br><br>
                  <div class="border-bottom text-center pb-4" >
                    <img src="<%=(String)session.getAttribute("foto_usuario")%>" alt="<%=(String)session.getAttribute("nombre_usuario")%>"  class="img-lg rounded-circle mb-3" style="width:300px;height:300px">
                    
                    <div class="mb-3">
                      <h3><%=(String)session.getAttribute("nombre_usuario")%></h3>
                      
                    </div>
                    
                  </div>
 
                </div>
                <div class="col-lg-8">
                    <br><br>
                
                  
                  <div class="profile-feed" style="margin-left:20%">
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
                      
                    </div><img  class="rounded w-100 mt-3" src="<%= meme.getImagen_meme() %>" alt="<%= meme.getTitulo_meme() %>">
                    <div class="mt-3">
                      <h4 class="h5"><%= meme.getTitulo_meme() %></h4>
                      
                    </div>
                    <div class="d-flex justify-content-between">
                        <%if(meme.getLiked() == 0){%>
                            <a class="btn btn-default bg-transparent" onclick="<%memesDb.DarLike(meme.getId_meme(),(int)session.getAttribute("id_usuario"));%>window.location.reload();"><i class="bi bi-heart text-danger"></i></a><p><%= meme.getLikes() %> likes</p>
                            <%}if(meme.getLiked() == 1){%>
                                <a class="btn btn-default bg-transparent" onclick="<%memesDb.QuitarLike(meme.getId_meme(),(int)session.getAttribute("id_usuario"));%>window.location.reload();"><i class="bi bi-heart-fill text-danger"></i></a><p><%= meme.getLikes()%><p>
                            <%}%>
                         
                                <button onclick=""><i class="fas fa-trash">Borrar meme</i>  </button>
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
    </div>

