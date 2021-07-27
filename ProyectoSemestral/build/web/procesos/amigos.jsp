<%-- 
    Document   : amigos
    Created on : 07/26/2021, 9:49:21 p. m.
    Author     : Angela
--%>
<!-- Este proceso se utiliza para guardar amigos  -->
<%@page import="entidades.Personas"%>
<%@page import="procesos.ProcesosAmigos"%>

<%
    int idusuario = Integer.parseInt(request.getParameter("idu"));
    int idamigo = Integer.parseInt(request.getParameter("ida"));
    ProcesosAmigos amigo = new ProcesosAmigos();
    amigo.GuardarAmigo(idusuario,idamigo);
    response.sendRedirect("../verAmigos.jsp");

%>