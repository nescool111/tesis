// Initialize Firebase
var config = {
    apiKey: "AIzaSyC1nP1ygHgHe-CK8ceLq7P0k4rJumrj1VU",
    authDomain: "nueva-venta.firebaseapp.com",
    databaseURL: "https://nueva-venta.firebaseio.com",
    storageBucket: "nueva-venta.appspot.com",
    messagingSenderId: "337341522122"
};
firebase.initializeApp(config);

$(document).ready(function () {
    // Metodo para validad correo
    $.validator.addMethod("email", function (email) {
        var re = /^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/;
        return re.test(email);
    });
    // Metodo para validad cadena de caracteres
    $.validator.addMethod("string", function (value, element) {
        return this.optional(element) || /^[a-z" "ñÑáé&iacute;ó&uacute;ÁÉÍÓÚ,.;]+$/i.test(value)
    });
    $("#FormNova").validate({
        rules: {
            nombreContacto: {
                required: true,
                string: true,
                minlength: 4,
                maxlength: 100
            },
            apellidosContacto: {
                required: true,
                string: true,
                minlength: 6
            },
            tipoID: {
                required: true,
                minlength: 1
            },
            numID: {
                required: true,
                digits: true,
                minlength: 7
            },
            email: {
                required: true,
                email: true
            },
            motivo: {
                required: true
            },
            acepto: "required"
        },
        messages: {
            nombreContacto: {
                required: "Por favor, ingrese sus  nombres completos",
                string: "Por favor, ingrese sólo caracteres",
                minlength: "Por favor, m&iacute;nimo 4 caracteres",
                maxlength: 'El nombre es demasiado largo'
            },
            apellidosContacto: {
                required: "Por favor, ingrese sus apellidos completos",
                string: "Por favor, solo caracteres",
                minlength: "Por favor, m&iacute;nimo 6 d&iacute;gitos "
            },
            tipoID: {
                required: "Por favor, seleccione uno",
                minlength: "Seleccione una opción"
            },
            numID: {
                required: "Por favor, ingrese el N&uacute;mero de documento",
                digits: "Por favor, escriba sólo n&uacute;meros",
                minlength: "Por favor, m&iacute;nimo 7 d&iacute;gitos"
            },
            email: {
                required: "Por favor escriba su correo",
                email: "Correo inv&aacute;lido."
            },
            motivo: {
                required: "Por favor, escriba su motivo de contacto "
            },
            acepto: {
                required: "Por favor, acepte la pol&iacute;tica",
            }
        }
    });

    $("#enviar").click(function () {

        if ($("#FormNova").valid()) {
            var date = new Date();
            var mes = parseInt(date.getMonth()) + 1;
            var fecha = date.getFullYear() + "/" + mes + "/" + date.getDate() + " " + date.getHours() + ":" + date.getMinutes() + ":" + date.getSeconds();
            var pri = $("input[name='autorizo']:checked").val();
            var datos = {
                nombre: $("#nombreContacto").val(),
                apellido: $("#apellidosContacto").val(),
                tipoIden: $("#tipoID").val(),
                documento: $("#numID").val(),
                pais: $("#departamentos").val(),
                municipio: $("#ciudad").val(),
                celular: $("#numCel").val(),
                correo: $("#email").val(),
                autoMail: pri,
                motivo: $("#motivo").val(),
                fecha: fecha
            };
            console.log(datos)
            // conDB.push(datos);
            var newPostKey = firebase.database().ref().child('Nova-Venta').push(datos);
        }
    });
});