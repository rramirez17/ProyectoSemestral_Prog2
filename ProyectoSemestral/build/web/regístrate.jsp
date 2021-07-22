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
    <link rel="stylesheet" href="Regístrate.css">
</head>
<body>
    <header>
        <section class="S1">
            <img src="Logo.jpeg" alt="">
        </section>
    </header>
    <center>
    <article class="centrado">
        <div class="principal">
            <div class="D1">
                <p class="etiqueta">Nombre completo</p>
                <input type="text" name="nombre" class="texto" placeholder="Nombre completo">
                <p class="etiqueta">Correo electrónico</p>
                <input type="email" name="correo" class="texto" placeholder="Correo electrónico">
                <p class="etiqueta">Nombre de usuario</p>
                <input type="text" name="usuario" class="texto" placeholder="Nombre de usuario">
                <p class="etiqueta">Contraseña</p>
                <input type="text" name="contrasena" class="texto" placeholder="Contraseña">
                <br><br>
                <form action="Iniciar sesión.html">
                <input type="submit" class="boton" value="Regístrate">
                </form>
            </div>
            <div class="D2">
                <div class="D3">
                    <p>¿Tienes una cuenta?
                        <a href="Iniciar sesión.html">Inicia sesión</a>
                    </p> 
                </div>
            </div>
        </div>
    </article>
</center>
</body>
</html>