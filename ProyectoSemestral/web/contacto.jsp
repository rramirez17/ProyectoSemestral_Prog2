<%-- 
    Document   : contacto
    Created on : Jul 27, 2021, 6:57:41 AM
    Author     : raulr
--%>

<!-- Este es la parte de contáctanos -->

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ include file="header.jsp"%>

<div class="container" style="margin-top: 80px">
    <div class="contact__wrapper shadow-lg mt-n9">
        <div class="row no-gutters">
            <div class="col-lg-5 contact-info__wrapper gradient-brand-color p-5 order-lg-2">
                <h3 class="color--white mb-5">Contáctanos</h3>
                <ul class="contact-info__list list-style--none position-relative z-index-101" style="background-image: -webkit-linear-gradient(0deg, #376be6 0%, #6470ef 100%);">
                    <li class="mb-4 pl-4">
                        <span class="position-absolute"><i class="fas fa-envelope"></i></span> contacto@fun4you.com
                    </li>
                    <li class="mb-4 pl-4">
                        <span class="position-absolute"><i class="fas fa-phone"></i></span> +507 000000000
                    </li>
                    <li class="mb-4 pl-4">
                        <span class="position-absolute"><i class="fas fa-map-marker-alt"></i></span> 
                        <br> Calle 2da, Av Justo Arosemena
                        <br> 3-43, Panama
    
                        <div class="mt-3">
                            <a href="https://www.google.com/maps" target="_blank" class="text-link link--right-icon text-white">Obtener direcciones <i class="link__icon fa fa-directions"></i></a>
                        </div>
                    </li>
                </ul>
                <figure class="figure position-absolute m-0 opacity-06 z-index-100" style="bottom:0; right: 10px">
                    <svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="444px" height="626px">
                        <defs>
                            <linearGradient id="PSgrad_1" x1="0%" x2="81.915%" y1="57.358%" y2="0%">
                                <stop offset="0%" stop-color="rgb(255,255,255)" stop-opacity="1"></stop>
                                <stop offset="100%" stop-color="rgb(0,54,207)" stop-opacity="0"></stop>
                            </linearGradient>
                        </defs>
                        <path fill-rule="evenodd" opacity="0.302" fill="rgb(72, 155, 248)" d="M816.210,-41.714 L968.999,111.158 L-197.210,1277.998 L-349.998,1125.127 L816.210,-41.714 Z"></path>
                        <path fill="url(#PSgrad_1)" d="M816.210,-41.714 L968.999,111.158 L-197.210,1277.998 L-349.998,1125.127 L816.210,-41.714 Z"></path>
                    </svg>
                </figure>
            </div>
            <div class="col-lg-7 contact-form__wrapper p-5 order-lg-1">
                <form   class="contact-form form-validate" action="procesos/enviarContacto.jsp" method="post">
                    <div class="row">
                        <div class="col-sm-6 mb-3">
                            <div class="form-group">
                                <label class="required-field" for="userName">Nombre</label>
                                <input type="text" class="form-control" id="userName" name="userName" placeholder="Ingresa tu nombre completo.">
                            </div>
                        </div>
                        <div class="col-sm-6 mb-3">
                            <div class="form-group">
                                <label class="required-field" for="email">Correo electrónico</label>
                                <input type="text" class="form-control" id="email" name="email" placeholder="Ingresa tu correo.">
                            </div>
                        </div>
                        <div class="col-sm-12 mb-3">
                            <div class="form-group">
                                <label class="required-field" for="message">¿Cómo te podemos ayudar?</label>
                                <textarea class="form-control" id="message" name="message" rows="4" placeholder="Cuentanos como podemos hacer que fun4you sea tu red social de memes #1."></textarea>
                            </div>
                        </div>
                        <div class="col-sm-12 mb-3">
                            <button type="submit" name="submit" class="btn btn-primary">Enviar</button>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>
</body>
</html>