<%-- 
    Document   : header
    Created on : Jul 22, 2021, 1:36:54 PM
    Author     : raulr
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<head>
    <link href="css/styles.css" rel="stylesheet" />
    <link href="css/home.css" rel="stylesheet" />
    <link href="css/style.css" rel="stylesheet" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css"
          integrity="sha512-iBBXm8fW90+nuLcSKlbmrPcLa0OT92xO1BIsZ+ywDWZCvqsWgccV3gFoRBv0z+8dLJgyAHIhR35VZc2oM/gI1w=="
          crossorigin="anonymous" />
    <link rel="icon" type="image/x-icon" href="imagenes/logo/favicon.ico" />
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
    <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
    <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Nunito+Sans:wght@400;800;900&display=swap">
    <link rel="stylesheet" href="https://unpkg.com/swiper/swiper-bundle.min.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.1/font/bootstrap-icons.css" rel="stylesheet" />
    <link rel="stylesheet" href="css/buscar.css">
    <link rel="stylesheet" href="css/perfil.css">
    <title>Fun4U</title>
</head>
<body>
    <ul id="navBar">
        <li class="active">
            <a href="home.jsp"><img src="imagenes/logo/Logo.png" ></a>
        </li>
        <li class="navli">
            <a href="login.jsp">Salir</a>
        </li>
        <li class="navli">
            <a href="contacto.jsp">Contáctanos</a>
        </li>
        <li class="navli">
            <a href="nosotros.jsp"> Nosotros</a>
        </li>
        <li class="navli">
            <a href="Perfil.jsp"> Perfil</a>
        </li>
        <li class="navli">
            <a href="home.jsp">Inicio</a>
        </li>
        <li class="navli" style="margin-right: 7%"> 
            <form action="buscar.jsp"> 
                <div class="input-group">
                    <input type="text" name="ref" class="form-control" placeholder="Buscar" style="width: 350px"/> 
                    
                </div>
            </form> 
        </li>
    </ul>