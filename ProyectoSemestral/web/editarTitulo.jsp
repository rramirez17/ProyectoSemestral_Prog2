<%-- 
    Document   : editarTitulo
    Created on : 07/27/2021, 9:46:23 a. m.
    Author     : Angela
--%>

<%@page import="entidades.Personas"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="entidades.Memes"%>
<%@page import="procesos.ProcesosMemes"%>
<%@ include file="header.jsp"%>

<%
    int idmeme = Integer.parseInt(request.getParameter("id_meme"));
    
    ProcesosMemes memesDb = new ProcesosMemes();       
    List<Memes> memes = memesDb.GetAllMemesUser(idmeme);
    
    memes = memesDb.MostrarMemeSeleccionado(idmeme);
%>

    <%for(Memes meme : memes){%> 
    <div class="container">
        <div class="row">
            <div class="col-10 col-lg-12 order-lg-1">
                <br>
                <section class="py-4">
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
                            <h4 class="h5"><%= meme.getTitulo_meme() %></h4>
                            <br>
                            <form action="procesos/cambiarTitulo.jsp?ID=<%= meme.getId_meme()%>" method="post">
                                <label>Nuevo título</label>
                                <br>
                                <input type="text" name="titulo_meme" class="texto" placeholder="Ingresa un nuevo título para el meme" style ="width: 500px">
                                <input type="submit" class="boton" value="Guardar cambios">
                            </form>
                        </div>
                        <br>
                        <div class="d-flex justify-content-between">
                            <a  href="procesos/borrar.jsp?Mid=<%= meme.getId_meme() %>"><i class="bi bi-trash"></i>Borrar meme</a>
                        </div>
                    </div>
    <%}%>
                </section>
            </div>
        </div>
    </div>

