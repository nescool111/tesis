/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
util.importJS("/js/web/usuario/Loading.js");

function AutenticacionUsuario() {

    var Instance = this;

    Instance.init = function () {
        $(document).ready(function () {
            Instance.loading = new Loading();
            Instance.loading.addLoading("changePasswordDiv");
            Instance.loading.addLoading("createPasswordDiv");

            $("#linkIngresar").click(function (e) {
                e.preventDefault();
                $("#formLogin").submit();
            });
            var olvideContrasena = util.getParameter(document.URL, "olvideContrasena");
            if (olvideContrasena === "1") {
                Instance.changeForm("changePasswordDiv");
            }
        });
    };

    Instance.changePassword = function () {
        Instance.loading.displayLoading("Enviando...");
        var contrasena = $("#contrasena").val();
        var contrasenaControl = $("#contrasenaControl").val();
        if (contrasena === contrasenaControl) {
            $.ajax({
                url: $("#changePasswordForm").attr("action"),
                timeout: 60000,
                type: "POST",
                data: $("#changePasswordForm").serialize(),
                cache: false,
                dataType: "html",
                error: function (xhr, status) {
                    Instance.loading.displayAcceptMessage("Error " + xhr.status);
                },
                success: function (data, status) {
                    Instance.loading.displayAcceptMessage(data, function(){
                        location.href="/";
                    });
                }
            });
        } else {
            Instance.loading.displayAcceptMessage("Las contrase&ntilde;as no coinciden...");
            return false;
        }
    };

    Instance.resetPassword = function () {
        Instance.loading.displayLoading("Enviando...");
        var correoElectronico = $("#correoElectronico").val();
        if (correoElectronico !== "") {
            $.ajax({
                url: $("#changePasswordForm").attr("action"),
                timeout: 60000,
                type: "POST",
                data: $("#changePasswordForm").serialize(),
                cache: false,
                dataType: "html",
                error: function (xhr, status) {
                    Instance.loading.displayAcceptMessage("Error " + xhr.status);
                },
                success: function (data, status) {
                    Instance.loading.displayAcceptMessage(data);
                }
            });
        } else {
            Instance.loading.displayAcceptMessage("Ingrese un correo electr&oacute;nico");
        }
    };

    Instance.changeForm = function (idForm) {
        $("#loginDiv").hide();
        $("#changePasswordDiv").hide();
        $("#" + idForm).show();
    };

    Instance.init();
}