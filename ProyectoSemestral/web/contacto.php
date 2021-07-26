
<!DOCTYPE html>
<html>
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
        <link href="css/contacto.css" rel="stylesheet" />
        <title>Fun4U</title>
    </head>
    <body>
         
        <ul id="navBar">
           <li class="active">
                <a href="home.jsp"><img src="imagenes/logo/Logo.png" ></a>
            </li>
            <li class="navli">
                <a href="login.jsp"><i class="fas fa-sign-out-alt"></i>  Salir</a>
            </li>
            <li class="navli">
                <a href="contacto.php" style="font-weight: bolder;"><i class="fas fa-file"></i>  Contáctanos</a>
            </li>
            <li class="navli">
                <a href="nosotros.jsp" style="font-weight: bolder;"><i class="fas fa-users"></i>  Nosotros</a>
            </li>
            <li class="navli">
                <a href="Perfil.jsp"><i class="fas fa-user"></i>  Perfil</a>
            </li>
            <li class="navli">
                <a href="Buscar.jsp"><i class="fas fa-search"></i>  Buscar</a>
            </li>
            <li class="navli">
                <a href="home.jsp"><i class="fas fa-home"></i>  Inicio</a>
            </li>
            <li class="navli">
                <a href="home.jsp"><i class="fas fa-upload"></i>  Subir un meme</a>
            </li>
        </ul>
    <br>
    <br>
    <br>
    <br>
        <div class="form-container" style = "margin-top:15%; margin-left: 25%">
        <form name="frmContact" id="frmContact" method="post"
            action="" enctype="multipart/form-data"
            onsubmit="return validarFormularioContacto()">

            <div class="input-row">
                <label style="padding-top: 20px;">Nombre</label> <span
                    id="userName-info" class="info"></span><br /> <input
                    type="text" class="input-field" name="userName"
                    id="userName" />
            </div>
            <div class="input-row">
                <label>Correo Electronico</label> <span id="userEmail-info"
                    class="info"></span><br /> <input type="text"
                    class="input-field" name="userEmail" id="userEmail" />
            </div>
            <div class="input-row">
                <label>Asunto</label> <span id="subject-info"
                    class="info"></span><br /> <input type="text"
                    class="input-field" name="subject" id="subject" />
            </div>
            <div class="input-row">
                <label>Mensaje</label> <span id="userMessage-info"
                    class="info"></span><br />
                <textarea name="content" id="content"
                    class="input-field" cols="60" rows="6"></textarea>
            </div>
            <div>
                <input type="submit" name="send" class="btn-submit"
                    value="Enviar" />
            </div>
            
        </form>
    </div>

    <script src="https://code.jquery.com/jquery-2.1.1.min.js" type="text/javascript"></script>
    <script type="text/javascript" src="javascript/validarFormularioContacto.js"></script>
</body>
</html>