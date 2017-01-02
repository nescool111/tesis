<%-- 
Document   : index
Created on : 10/12/2016, 1:27:44 PM
Author     : nalvarez
--%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<html lang="en">
    <!-- Google Tag Manager -->
    <script>(function (w, d, s, l, i) {
            w[l] = w[l] || [];
            w[l].push({'gtm.start':
                        new Date().getTime(), event: 'gtm.js'});
            var f = d.getElementsByTagName(s)[0],
                    j = d.createElement(s), dl = l != 'dataLayer' ? '&l=' + l : '';
            j.async = true;
            j.src =
                    'https://www.googletagmanager.com/gtm.js?id=' + i + dl;
            f.parentNode.insertBefore(j, f);
        })(window, document, 'script', 'dataLayer', 'GTM-ML98ZCB');</script>
    <!-- End Google Tag Manager -->
    <head>
        <meta charset="UTF-8">
        <title>M&aacute;quinas</title>
        <meta name="description" content="description">
        <meta name="keywords" content="keywords">
        <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
        <script type="text/javascript"  src="/js/libs/jquery-3.1.0.min.js"></script>
        <script type="text/javascript" src="/js/Index.js"></script>
        <script type="text/javascript" src="/js/util/Util.js"></script>
        <script type="text/javascript" src="/js/util/Ubicacion.js"></script>
        <script type="text/javascript" src="/js/util/Validacion.js"></script>
        <script type="text/javascript">
        var ubica = new Ubicacion();
        </script>

        <script type="text/javascript" src="/js/libs/jquery.validate.js"></script>
        <script type="text/javascript" src="/js/libs/additional-methods.min.js"></script>
        <link rel="stylesheet" type="text/css" href="/css/bootstrap.min.css">
        <link rel="stylesheet" type="text/css" href="/css/custom.css">
        <link rel="stylesheet" type="text/css" href="/css/fonts.css">
        <link rel="stylesheet" type="text/css" href="/css/font-awesome.css">
    </head>
    <body>
        <!-- Google Tag Manager (noscript) -->
        <noscript><iframe src="https://www.googletagmanager.com/ns.html?id=GTM-ML98ZCB"
                          height="0" width="0" style="display:none;visibility:hidden"></iframe></noscript>
        <!-- End Google Tag Manager (noscript) -->
        <div class="container-select">
            <div class="cont_tu_maquina">
                <div class="cont"> 
                    <progress id="progress-bar" min="1" max="100" value="0"></progress>
                    <span id="first-item" class="first border-change items_bar"></span>
                    <span id="second-item" class="second items_bar"></span>
                    <span id="third-item" class="third items_bar"></span>
                    <span id="fourth-item" class="fourth items_bar"></span>
                </div>
            </div>
            <div class="tu_maquina" id="select_uno" style="">
                <div class="cont_tu_maquina">
                    <h3>¿ES PARA M&Iacute;?</h3>
                    <p><em>¿A que sector pertenece su negocio?</em></p>
                    <img src="/img/es_para_mi_sector.png">
                </div>
                <div class="range_maquinas sector">
                    <ul class="options">
                        <c:forEach var="sector" items="${sectores}">
                            <li id="${sector.id}">${sector.descripcion}</li>
                            </c:forEach>
                    </ul>
                </div>
<!--                <div class="cont_explain">
                    <div class="explain_section">
                        <h3>¿Qué es Lorem Ipsum?</h3>
                        <p><em>Lorem ipsum dolor sit amet, consectetur adipiscing elit. 
                                Integer posuere enim vel augue aliquam luctus. 
                                Mauris consequat eros a ultricies porttitor. 
                                In ornare turpis eget vulputate ultricies. 
                                Maecenas aliquet leo eget diam gravida, 
                                nec ornare ante finibus. Nulla odio est, 
                                blandit sit amet accumsan vitae, sagittis in erat.</em>
                        </p>
                    </div>
                </div>-->
            </div>
            <div class="tu_maquina" id="select_dos" style="display:none;">
                <div class="cont_tu_maquina">
                    <h3>¿ES PARA M&Iacute;?</h3>
                    <p><em>¿Cuantos empleados tiene su compa&ntilde;&iacute;a?</em></p>
                    <img src="/img/es_para_mi_empleados.png">
                </div>
                <div class="range_maquinas cantidadempleados">
                    <ul class="options">
                        <c:forEach var="empleado" items="${cantidadEmpleados}">
                            <li id="${empleado.id}"> ${empleado.descripcion}</li>
                            </c:forEach>
                        <li id="back_cantidad_empleados">
                            <div class="chevron_before" id="back_dos">
                                <i class="fa fa-chevron-left"></i>
                            </div>
                        </li>
                    </ul>
                </div>
<!--                <div class="cont_explain">
                    <div class="explain_section">
                        <h3>¿Qué es Lorem Ipsum?</h3>
                        <p><em>Lorem ipsum dolor sit amet, consectetur adipiscing elit. 
                                Integer posuere enim vel augue aliquam luctus. 
                                Mauris consequat eros a ultricies porttitor. 
                                In ornare turpis eget vulputate ultricies. 
                                Maecenas aliquet leo eget diam gravida, 
                                nec ornare ante finibus. Nulla odio est, 
                                blandit sit amet accumsan vitae, sagittis in erat.</em>
                        </p>
                    </div>
                </div>-->
            </div>
            <div class="tu_maquina" id="select_tres" style="display:none;">
                <div class="cont_tu_maquina">
                    <h3>¿ES PARA M&Iacute;?</h3>
                    <p><em>¿N&uacute;mero aproximado de personas que visitan su negocio diariamente?</em></p>
                    <img src="/img/es_para_mi_usuarios.png">
                </div>
                <div class="range_maquinas cantidadclientes">
                    <ul class="options">
                        <c:forEach var="cliente" items="${cantidadClientes}">
                            <li id="${cliente.id}">${cliente.descripcion}</li>
                            </c:forEach>

                        <li id="back_cantidad_clientes">
                            <div class="chevron_before" id="back_tres">
                                <i class="fa fa-chevron-left"></i>
                            </div>
                        </li>
                    </ul>
                </div>
<!--                <div class="cont_explain">
                    <div class="explain_section">
                        <h3>¿Qué es Lorem Ipsum?</h3>
                        <p><em>Lorem ipsum dolor sit amet, consectetur adipiscing elit. 
                                Integer posuere enim vel augue aliquam luctus. 
                                Mauris consequat eros a ultricies porttitor. 
                                In ornare turpis eget vulputate ultricies. 
                                Maecenas aliquet leo eget diam gravida, 
                                nec ornare ante finibus. Nulla odio est, 
                                blandit sit amet accumsan vitae, sagittis in erat.</em>
                        </p>
                    </div>
                </div>-->
            </div>
            <div class="tu_maquina" id="select_cuatro" style="display:none;">
                <div class="cont_tu_maquina">
                    <h3>¿ES PARA M&Iacute;?</h3>
                    <p><em>¿Qu&eacute; maquina deseas?</em></p>
                    <img src="/img/es_para_mi_maquinas.png">
                </div>
                <div class="range_maquinas maquinaclass">
                    <ul class="options">
                        <c:forEach var="maquina" items="${tiposMaquinas}">
                            <li id="${maquina.id}">${maquina.descripcion}</li>
                            </c:forEach>
                        <li id="back_cantidad_maquinas">
                            <div class="chevron_before" id="back_cuatro">
                                <i class="fa fa-chevron-left"></i>
                            </div>
                        </li>
                    </ul>
                </div>
<!--                <div class="cont_explain">
                    <div class="explain_section">
                        <h3>¿Qué es Lorem Ipsum?</h3>
                        <p><em>Lorem ipsum dolor sit amet, consectetur adipiscing elit. 
                                Integer posuere enim vel augue aliquam luctus. 
                                Mauris consequat eros a ultricies porttitor. 
                                In ornare turpis eget vulputate ultricies. 
                                Maecenas aliquet leo eget diam gravida, 
                                nec ornare ante finibus. Nulla odio est, 
                                blandit sit amet accumsan vitae, sagittis in erat.</em>
                        </p>
                    </div>
                </div>-->
            </div>

            <div class="tu_maquina" id="select_importante"  style="display:none;">
                <div class="cont_tu_maquina">                    
                    <div class="icon_importante">
                        <i class="fa fa-phone-square"></i>
                    </div>
                </div>
                <h3>¡IMPORTANTE!</h3>
                <P>Muy pronto uno de nuestros agentes comerciales se comunicar&aacute; contigo para asesorarte.</P>
            </div>

            <form id="usuarioForm" action="<%=request.getContextPath()%>/ajax/registrar" method="post" autocomplete="off">
                <div class="container-select machine_form" id="select_seis" style="display:none;">
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
                                                <span id="spanuno"></span>
                                            </li>
                                            <li  id="spantresid" style="display:none;">
                                                <i class="fa fa-check-circle"></i>
                                                <span id="spandos"></span>
                                            </li>
                                            <li>
                                                <i class="fa fa-check-circle"></i>
                                                <span id="spantres"></span>
                                            </li>

                                            <li>
                                                <i class="fa fa-check-circle"></i>
                                                <span id="spancuatro"></span>
                                            </li>
                                        </ul>
                                        <p class="response_form"><em>¿Son correctas? si tu respuesta es s&iacute; llena el siguiente formulario, si no, puedes retroceder en el diagn&oacute;stico.</em></p>
                                        <a href="#">
                                            <div class="back_home" id="back_home">
                                                Volver al inicio
                                            </div>
                                        </a>
                                    </div>
                                    <div class="col-sm-6 inputs_form">
                                        <div id="logining" class="modal-loading">
                                            <div class="row">
                                                <h3>Cargando!</h3>
                                                <div class="loading"><div class="loader"></div></div>
                                            </div>
                                        </div>
                                        <select id="tipoDocumento" name="tipoDocumento" >
                                            <option value="" disabled selected>Tipo de Documento</option>
                                            <option value="CC"> C&eacute;dula de Ciudadan&iacute;a</option>
                                            <option value="CE"> C&eacute;dula de Extranjer&iacute;a </option>
                                            <option value="PAS">Pasaporte</option>
                                            <option value="NIT">NIT</option>
                                        </select>
                                        <input type="text" name="documento" id="documento" placeholder="Documento" />

                                        <input type="text" name="nombre" id="nombre" placeholder="Nombres y Apellidos completos" />
                                        <input type="text" name="telefono" id="telefono" placeholder="Tel&eacute;fono / Celular" />
                                        <input name="correoElectronico" id="correoElectronico" placeholder="Correo Electr&oacute;nico"  />
                                        <input type="hidden" name="sector" id="sector" >
                                        <input type="hidden" name="empleados" id="empleados" >
                                        <input type="hidden" name="clientes" id="clientes" >
                                        <input type="hidden" name="tipoMaquina" id="tipoMaquina" >


                                        <select name="departamentoId" id="departamento" onchange="ubica.validateDepartamento()" required data-msg="Por Favor Ingrese un Departamento" />
                                        <option value ="" disabled selected >Seleccione Departamento</option>
                                        <option value ="x"  >Otra Ubicaci&oacute;n</option>
                                        <c:forEach var="departamento" items="${departamentos}">
                                            <option value="${departamento.id}"> ${departamento.nombre} </option>
                                        </c:forEach>
                                        </select>
                                        <select name="ciudadId"  id="ciudadId" required data-msg="Por Favor Ingrese una Ciudad" />
                                        <option value ="" disabled selected >Ciudad</option>
                                        </select>
                                        <div id="otraubidiv" style="display:none;">
                                            <input type="text" id="ubicacion" name="ubicacion" placeholder="Ingrese otra ubicaci&oacute;n">
                                        </div>

                                        <div class="tratamiento_datos">
                                            <div class="col-sm-6 check_tratamiento no_padding">
                                                <input type="checkbox" id="terminos" name="terminos" required data-msg="Campo Requerido" />
                                                <a href="https://storage.googleapis.com/portal-contenido-novaventa.appspot.com/estaticos/politica_tratmiento_dato_personales.pdf" target="_blank">Acepto pol&iacute;tica de privacidad</a>
                                                <label id="terminos-error" class="error" for="terminos" style="display:none;">Campo Requerido</label>
                                            </div>
                                            <div class="col-sm-6 ver_diagnostico no_padding">
                                                <a href="#">
                                                    <div class="btn_ver" onclick="index.validateFormRg()">
                                                        Ver mi diagn&oacute;stico
                                                    </div>
                                                </a>
                                            </div>
                                        </div>
                                    </div>
<!--                                    <div class="cont_explain">
                                        <div class="explain_section">
                                            <h3>¿Qué es Lorem Ipsum?</h3>
                                            <p><em>Lorem ipsum dolor sit amet, consectetur adipiscing elit. 
                                                    Integer posuere enim vel augue aliquam luctus. 
                                                    Mauris consequat eros a ultricies porttitor. 
                                                    In ornare turpis eget vulputate ultricies. 
                                                    Maecenas aliquet leo eget diam gravida, 
                                                    nec ornare ante finibus. Nulla odio est, 
                                                    blandit sit amet accumsan vitae, sagittis in erat.</em>
                                            </p>
                                        </div>
                                    </div>-->
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </form>



            <div class="tu_maquina" id="select_cinco" style="display:none;">
                <div class="cont_tu_maquina">
                    <h3>¿ES PARA M&Iacute;?</h3>
                </div>
                <div class="machine_result">
                    <div class="call_user">
                        <em>Muy pronto uno de nuestros agentes comerciales se comunicar&aacute; contigo.</em>
                    </div>
                    <div class="img_machine">
                        <img id="imagen_maquina" src="">
                    </div>
                    <div id="descripcion_maquina" class="machine_features">

                    </div>
                </div>

            </div>

            <!--            <div class="wood_stripe"></div>-->
        </div>

</html>
