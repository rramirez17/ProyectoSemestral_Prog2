
<!-- Este es la parte de la búsqueda por usuario -->

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
                        <h3>
                            <a href="perfilBúsqueda.jsp?iduser=<%= persona.getId_persona()%>?foto=<%= persona.getFoto_usuario()%>" style="color: black; background-color: white"><%= persona.getNombre_usuario()%></a>
                        </h3>
                        <%session.setAttribute("iduserbuscar", persona.getId_persona());%>
                        <%session.setAttribute("nombreub", persona.getNombre_usuario());%>
                        <%session.setAttribute("fotoub", persona.getFoto_usuario());%>
                    </li>
                <%}%>
            </ul>
    </div>
        <%}else{%>
            <h2 style="margin-top: 100px; margin-left: 25%">No hemos encontrados coincidencia con su busqueda de "<%= ref %>"</h2>
        <%}%>

        
