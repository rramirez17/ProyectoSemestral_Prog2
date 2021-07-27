<%-- 
    Document   : inicioSesion
    Created on : Jul 6, 2021, 4:36:37 PM
    Author     : raulr
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Fun4You-Iniciar sesión</title>
    <link href="css/login.css" rel="stylesheet" />
    
    
</head>
    <article class="S2">
        <div class="parte derecha">
            <img src="imagenes/logo/Logo.png" alt="Logo de FUN4You" id ="logo">
            <section class="centrado">
                <div class="D1">
                    <form action="procesos/inicioSesion.jsp" method="post">
                        <p class="etiqueta">Usuario</p>
                        <input type="text" name="nombre_usuario" class="texto" placeholder="Usuario">
                        <p class="etiqueta">Contraseña</p>
                        <input type="password" name="contrasena" class="texto" placeholder="Contraseña">
                        <br><br>
                        <!-- aqui va el link a inicio -->
                        <input type="submit" class="boton" value="Iniciar sesión">
                    </form>
                </div>
                <div class="D2">
                    <div>
                        <p>¿No tienes cuenta?
                            <a href="registrate.jsp">Regístrate</a>
                        </p> 
                    </div>
                </div>
            </section>
        </div>
        <div class="parte izquierda">
            <section class="centrado">
                <img src="imagenes/fotos/Inicio.png" alt="Branding de FUN4You">
            </section> 
        </div>
    </article>   
</body>
</html>