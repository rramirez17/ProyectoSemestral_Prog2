<%-- 
    Document   : regístrate
    Created on : Jul 6, 2021, 4:36:56 PM
    Author     : raulr
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Fun4You-regístrate</title>
    <link rel="stylesheet" href="css/Regístrate.css">
</head>
<body>
    <header>
        <section class="S1">
            <img src="imagenes/logo/Logo.png" alt="Logo de FUN4You" id ="logo">
        </section>
    </header>
    <center>
    <article class="centrado">
        <form action="procesos/registrar.jsp" method="post">
            <div class="principal">
                <div class="D1">
                    <p class="etiqueta">Nombre completo</p>
                    <input type="text" name="nombre_persona" class="texto" placeholder="Nombre completo">
                    <p class="etiqueta">Correo electrónico</p>
                    <input type="email" name="correo_persona" class="texto" placeholder="Correo electrónico">
                    <p class="etiqueta">Nombre de usuario</p>
                    <input type="text" name="nombre_usuario" class="texto" placeholder="Nombre de usuario">
                    <p class="etiqueta">Contraseña</p>
                    <input type="text" name="contrasena" class="texto" placeholder="Contraseña">
                    <p class="etiqueta">Foto de perfil</p>
                    <input type="text" name="foto_usuario" class="texto" placeholder="Ingresa un url para tu foto de perfil debe terminar en .jpg o .png">
                    <br><br><br><br><br><br>
                    <input type="submit" class="boton" value="Regístrate">
                    
                </div>
                <div class="D2">
                    <div class="D3">
                        <p>¿Tienes una cuenta?
                            <a href="login.jsp">Inicia sesión</a>
                        </p> 
                    </div>
                </div>
            </div> 
        </form>
    </article>
</center>
</body>
</html>