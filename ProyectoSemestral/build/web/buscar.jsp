
<%@page import="entidades.Personas"%>
<%@page import="java.util.List"%>
<%@page import="procesos.ProcesosPersonas"%>
<%
    String ref = request.getParameter("ref");
    
    ProcesosPersonas personasDb = new ProcesosPersonas();    
    List<Personas> personas = personasDb.GetAllPersonasCoincidencia(ref);

%>

<%@ include file="header.jsp"  %>
  
<br>    
    <div class="row gx-lg-5"> 
        <%if(personas.size() > 0){%>
            <ul class="list-group" style="top: 63px; left: 120px; right: 120px; padding-right: 0px; width: 950px">
                <%for(Personas persona : personas){%>
                    <li class="list-group-item user-item text-left">
                        <img class="img-circle img-user img-thumbnail" src="<%= persona.getFoto_usuario()%>" alt="<%= persona.getNombre_usuario()%>"/>
                        <h3><%= persona.getNombre_usuario()%></h3>
                        <a class="btn btn-primary mt-5" href="perfil.jsp?pid=<%= persona.getId_persona()%>">
                            <span class="badge badge-outline badge-sm badge-info badge-pill">Ver perfil</span>
                        </a>
                        <a class="btn btn-warning mt-5" onClick="AgregarAlCarrito(<%= persona.getId_persona()%>)">Agregar a amigos</a>
                    </li>
                <%}%>
            </ul>
    </div>
            <%}else{%>
                <h2 style="margin-top: 100px; margin-left: 25%">No hemos encontrados coincidencia con su busqueda de "<%= ref %>"</h2>
            <%}%>

        
