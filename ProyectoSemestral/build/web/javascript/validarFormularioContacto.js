/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */


function validarFormularioContacto() {
    var valid = true;

    $(".info").html("");
    $(".input-field").css('border', '#e0dfdf 1px solid');
    var userName = $("#userName").val();
    var userEmail = $("#userEmail").val();
    var subject = $("#subject").val();
    var content = $("#content").val();

    if (userName == "") {
        $("#userName-info").html("Campo requerido.");
        $("#userName").css('border', '#e66262 1px solid');
        valid = false;
    }
    if (userEmail == "") {
        $("#userEmail-info").html("Campo requerido.");
        $("#userEmail").css('border', '#e66262 1px solid');
        valid = false;
    }
    if (!userEmail.match(/^([\w-\.]+@([\w-]+\.)+[\w-]{2,4})?$/))
    {
        $("#userEmail-info").html("Dirección de correo electrónico invalido.");
        $("#userEmail").css('border', '#e66262 1px solid');
        valid = false;
    }

    if (subject == "") {
        $("#subject-info").html("Campo requerido.");
        $("#subject").css('border', '#e66262 1px solid');
        valid = false;
    }
    if (content == "") {
        $("#userMessage-info").html("Campo requerido.");
        $("#content").css('border', '#e66262 1px solid');
        valid = false;
    }
    return valid;
}