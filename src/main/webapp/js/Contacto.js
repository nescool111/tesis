
function Contacto() {

    var Instance = this;

    Instance.init = function () {
        Instance.minutos = 0;
        Instance.datos = 0;
        Instance.vigencia = 1;

        $(document).ready(function () {

            $("#enviar").click(function (event) {
                Instance.validateFormCon();
            });

            $("#aceptarok").click(function (event) {
                $("#loginingone").hide();
                $("#loginingtwo").hide();
                $('#FormNova').trigger("reset");
            });
        });
    };


    Instance.validateFormCon = function () {
        if (validacion.checkValidForm("FormNova")) {
            Instance.enviarRegistro();
        } else {
        }
    };




    Instance.enviarRegistro = function () {
        $("#loginingone").show();
        $("#paisval").val($("#departamentos").val());
        $("#departamentoval").val($("#ciudad").val());
        $.ajax({
            url: $("#FormNova").attr("action"),
            timeout: 60000,
            type: "POST",
            data: $("#FormNova").serialize(),
            cache: false,
            dataType: "json",
            error: function (xhr, status) {
            },
            success: function (response, status) {
                if (response.respuesta === "1") {
                    $("#loginingtwo").show();
                    $('#FormNova').trigger("reset");
                } else if (response.respuesta === "2") {
                    $("#loginingtwo").show();
                    alert("Se ha presentado un problema");
                    $('#FormNova').trigger("reset");
                }
//                Instance.loading.hideLoading();
            }
        });
    };


    Instance.init();
}
var contacto = new Contacto();
