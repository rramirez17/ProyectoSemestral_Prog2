<%-- 
    Document   : contacto
    Created on : Jul 22, 2021, 1:45:34 PM
    Author     : raulr
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
    <%@ include file="header.jsp"%>
    <br>
        <div class="container">
            <div class="row">
                <div class="col-md-14 col-md-offset-3">
                    <br>
                    <br>
                    <br>
                  <div class="well well-sm">
                    <form class="form-horizontal" action="mailto:raul.ramirez@utp.ac.pa?subject=Contactando a Fun4U" method="post" enctype="text/plain">
                    <fieldset>
                      <legend class="text-center">Contáctanos</legend>

                      <!-- Name input-->
                      <div class="form-group">
                        <label class="col-md-3 control-label" for="Nombre">Nombre</label>
                        <div class="col-md-9">
                          <input id="name" name="Nombre" type="text" placeholder="Ingrese su nombre completo" class="form-control">
                        </div>
                      </div>

                      <!-- Email input-->
                      <div class="form-group">
                        <label class="col-md-3 control-label" for="Correo_electronico">Correo electrónico</label>
                        <div class="col-md-9">
                          <input id="email" name="Correo_electronico" type="text" placeholder="Ingrese su correo electrónico" class="form-control">
                        </div>
                      </div>

                      <!-- Message body -->
                      <div class="form-group">
                        <label class="col-md-3 control-label" for="Mensaje">Mensaje</label>
                        <div class="col-md-9">
                          <textarea class="form-control" id="message" name="Mensaje" placeholder="Gracias por utilizar Fun4U, indiquenos en qué le podemos ayudar y uno de nuestros agentes le contestará lo más pronto posible." rows="5"></textarea>
                        </div>
                      </div>

                      <!-- Form actions -->
                      <div class="form-group">
                        <div class="col-md-12 text-right">
                          <button type="submit" class="btn btn-primary btn-lg" value="Submit">Enviar</button>

                        </div>
                      </div>
                    </fieldset>
                    </form>
                  </div>
                </div>
            </div>
        </div>
    </body>
</html>
