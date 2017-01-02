<%-- 
    Document   : form
    Created on : 20/12/2016, 04:44:32 PM
    Author     : grupodot
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <title>Formulario</title>
        <meta name="description" content="description">
        <meta name="keywords" content="keywords">
        <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
        <link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
        <link rel="stylesheet" type="text/css" href="css/custom.css">
        <link rel="stylesheet" type="text/css" href="css/fonts.css">
        <link rel="stylesheet" type="text/css" href="css/font-awesome.css">
    </head>
    <body>
        <div class="container-select">
            <div class="tu_maquina selec-form" id="select_form" >
                <div class="cont_tu_maquina">
                    <h3>¿ES PARA M&Iacute;?</h3>
                    <div class="container-fluid cont_form">
                        <div class="row field_dates">
                            <div class="col-sm-6">
                                <p><em>Seg&uacute;n las preguntas que te hicimos, estas son tus respuestas:
                                    </em></p>
                                <ul>
                                    <li>
                                        <i class="fa fa-check-circle"></i>
                                        <span>0 a 20 usuarios</span>
                                    </li>
                                    <li>
                                        <i class="fa fa-check-circle"></i>
                                        <span>Pasillo</span>
                                    </li>
                                    <li>
                                        <i class="fa fa-check-circle"></i>
                                        <span>Gobierno</span>
                                    </li>
                                    <li>
                                        <i class="fa fa-check-circle"></i>
                                        <span>M&aacute;quina de bebidas calientes</span>
                                    </li>
                                </ul>
                                <p class="response_form"><em>¿Son correctas? si tu respuesta es sí llena el siguiente formulario, si no, puedes retroceder en el diagnóstico.</em></p>
                            </div>
                            <div class="col-sm-6 inputs_form">
                                <input type="text" name="documento" placeholder="C&eacute;dula /nit">
                                <input type="text" name="nombres" placeholder="Nombres/apellidos completos">
                                <input type="text" name="telefono" placeholder="Tel&eacute;fono / Celular">
                                <input type="text" name="correo" placeholder="Correo Electr&oacute;nico">
                                <input type="text" name="departamento" placeholder="Departamento">
                                <input type="text" name="ciudad" placeholder="Ciudad / Municipio">
                                <div class="tratamiento_datos">
                                    <div class="col-sm-6 check_tratamiento no_padding">
                                        <input type="checkbox" name="tratamiento de datos">
                                        <span>Tratamiento de datos</span> 
                                    </div>
                                    <div class="col-sm-6 ver_diagnostico no_padding">
                                        <a href="#">
                                            <div class="btn_ver">
                                                Ver mi diagn&oacute;stico
                                            </div>
                                        </a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </body>
</html>
