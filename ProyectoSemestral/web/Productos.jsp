<%-- 
    Document   : Productos
    Created on : 07/26/2021, 8:47:34 a. m.
    Author     : sebar
--%>

<%@page import="Entidades.Comentarios"%>
<%@page import="java.util.List"%>
<%@page import="Procesos.ProcesosComentarios"%>
<%@page import="Entidades.Ingredientes"%>
<%@page import="Entidades.Productos"%>
<%@page import="Procesos.ProcesosProductos"%>
<%@ include file="header.jsp"  %>

<%
    int productoId = Integer.parseInt(request.getParameter("pid"));
    ProcesosProductos productos = new ProcesosProductos();
    Productos producto = productos.ObtenerInformacionProductoPorId(productoId);
    
    ProcesosComentarios comentariosDb = new ProcesosComentarios();
    List<Comentarios> comentarios = comentarios.ObtenerComentariosPorProductoId(productoId);
%>

<section class="pt-4 mb-5">
    <div class="container px-lg-5">
        <h2>Descripcion del producto</h2>
         <div class="container px-lg-5">
            <div class="p-4 p-lg-5 bg-light rounded-3 text-center">
                <div class="m-4 m-lg-5">
                    <img class="img-fluid" src="<%= producto.getFoto() %>" alt="<%= producto.getNombre() %>"/>
                    <h1 class="display-5 fw-bold"><%= producto.getNombre() %></h1>
                    <p class="fs-4"><%= producto.getCategoria() %> - Caduca: <%= producto.getFechaCaducidad() %></p>
                    <a class="btn btn-primary btn-lg" href="#!">Anadir al carrito y disfrutarlo!</a>
                    
                    <%if(producto.getIngredientes().size() > 0){%>
                    <div class="card mt-5">
                        <div class="card-header">
                          El <%= producto.getNombre() %> esta confeccionado con ingrediente como:
                        </div>
                        <ul class="list-group list-group-flush">
                          <%for(Ingredientes ingrediente : producto.getIngredientes()){%>
                            <li class="list-group-item"><%= ingrediente.getNombre() %> porcion: <%= ingrediente.getPorcion() %></li>
                          <%}%>
                        </ul>
                    </div>
                    <%}%>
                </div>
            </div>
        </div>
    </div>
</section>
<div class="container mt-5 mb-5">
    <div class="d-flex justify-content-center row">
        <div class="d-flex flex-column col-md-8">
            <div class="d-flex flex-row align-items-center text-left comment-top p-2 bg-white border-bottom px-4">
                <div class="profile-image"><img class="rounded-circle" src="https://i.imgur.com/t9toMAQ.jpg" width="70"></div>
                <div class="d-flex flex-column-reverse flex-grow-0 align-items-center votings ml-1"></div>
                <div class="d-flex flex-column ml-3">
                    <div class="d-flex flex-row post-title">
                        <h5>Comentarios acerca del <%= producto.getNombre() %>?</h5>
                    </div>                    <div class="d-flex flex-row align-items-center align-content-center post-title"><span class="bdge mr-1">video</span><span class="mr-2 comments">13 comments&nbsp;</span><span class="mr-2 dot"></span><span>6 hours ago</span></div>
                </div>
            </div>
            <div class="coment-bottom bg-white p-2 px-4">
                <div class="d-flex flex-row add-comment-section mt-4 mb-4">
                    <img class="img-fluid img-responsive rounded-circle mr-2" src="https://i.imgur.com/qdiP4DB.jpg" width="38">
                    <form action="procesos/coment.jsp" class="form-control">
                        <input type="hidden" name="pid" value="<%= productoId %>"/>
                        <input type="text" name="coment" class="form-control mr-3" placeholder="Dinos, que xopa con tu producto?" required="true">
                        <button type="submit" class="btn btn-primary" type="button">Comentar</button>
                    </form>
                </div>
                 <%for(Comentarios comentario : comentarios){%>    
                    <div class="commented-section mt-2">
                        <div class="d-flex flex-row align-items-center commented-user">
                            <h5 class="mr-2"><%= comentario.getPersona() %></h5><span class="dot mb-1"></span><span class="mb-1 ml-2"><%= comentario.getFechaCreacion() %></span>
                        </div>
                        <div class="comment-text-sm"><span><%= comentario.getComentario() %></span></div>
                    </div>
                <%}%>
            </div>
        </div>
    </div>
</div>
<%@ include file="footer.jsp"  %>
