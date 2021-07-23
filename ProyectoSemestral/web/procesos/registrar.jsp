<%-- 
    Document   : registrar
    Created on : 07/22/2021, 8:31:01 p. m.
    Author     : Angela
--%>

<%@page import="entidades.Usuarios"%>
<%@page import="entidades.Personas"%>
<%@page import="procesos.ProcesosUsuarios"%>
<%@page import="procesos.ProcesosPersonas"%>
<%
    try{
        String nombre_persona = request.getParameter("nombre_persona");
        String correo_persona = request.getParameter("correo_persona");
        String nombre_usuario = request.getParameter("nombre_usuario");
        String contrasena = request.getParameter("contrasena");

        ProcesosPersonas personasDb = new ProcesosPersonas();
        ProcesosUsuarios usuariosDb = new ProcesosUsuarios();

        Personas persona = new Personas();
        persona.setNombre_persona(nombre_persona);
        persona.setCorreo_persona(correo_persona);

        Usuarios usuario = new Usuarios();
        usuario.setNombre_usuario(nombre_usuario);
        usuario.setContrasena(contrasena);
        
        int savedPerson = personasDb.RegistrarPersona(persona);
        if (savedPerson > 0) {
            int savedUser = usuariosDb.GuardarUsuario(usuario, correo_persona);
            if (savedUser > 0) {
                    out.println("<h2>Usuario y persona Registrado correctamente</h2>");
                    response.sendRedirect("../login.jsp");
                    return;
                }
        }else{
            out.println("<h2>Algo paso, no se inserto</h2>");
        }
    }
    catch(Exception e){}
    response.sendRedirect("../registrate.jsp");
    
%>