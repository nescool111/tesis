<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Formulario Novaventa</title>
        <link href="/css/bootstrap.min.css" rel="stylesheet">
        <link href="/css/bootstrap-formhelpers.min.css" rel="stylesheet">
        <link href="/css/main.css" rel="stylesheet">
        <link rel="stylesheet" type="text/css" href="/css/font-awesome.css">
        <script src="/js/libs/jquery-3.1.0.min.js"></script>
        <script src="/js/libs/jquery.validate.js"></script> 
        <script type="text/javascript" src="/js/libs/firebase.js"></script>   
        <script src="/js/util/validar.js"></script>    
        <script type="text/javascript" src="/js/libs/bootstrap.min.js"></script>
        <script type="text/javascript" src="/js/libs/bootstrap-formhelpers.min.js"></script>
        <script type="text/javascript" src="/js/util/Util.js"></script>
        <script type="text/javascript" src="/js/util/Validacion.js"></script>
        <script type="text/javascript" src="/js/Contacto.js"></script> 

        <!--[if lt IE 9]>
          <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
          <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
        <![endif]-->
    </head>
    <body>
        <div class="container cont-form">

            <div class="row">
                <div id="loginingone" class="modal-loading">
                    <div class="row" id="before_check">
                        <h3>Cargando!</h3>
                        <div class="loading"><div class="loader"></div></div>
                    </div>
                  
                </div>
                
                <div id="loginingtwo" class="modal-loading">
                   
                    <div class="row" id="after_check">
                        <h3>Se ha contactado correctamente!</h3>
                        <i class="fa fa-thumbs-up"></i>
                        <a id="aceptarok" href="#" class="aceptar_check">Aceptar</a>
                    </div>
                </div>
                
                <form id="FormNova" action="<%=request.getContextPath()%>/ajax/contacto" method="post" autocomplete="off">
                    <div class="form-group col-sm-6">		    							
                        <label for="NombreContacto">Nombre de contacto</label>
                        <input type="text" class="form-control" id="nombreContacto" name="nombreContacto" placeholder="Nombre de contacto">				
                    </div>
                    <div class="form-group col-sm-6">		    							
                        <label for="ApellidosContacto">Apellidos de contacto</label>
                        <input type="text" class="form-control" id="apellidosContacto" name="apellidosContacto" placeholder="Apellidos de contacto">	
                    </div>
                    <div class="form-group col-sm-6 col-md-2">
                        <label for="TipoID">Tipo de identificaci&oacute;n</label>    							
                        <select class="form-control" id="tipoID" name="tipoID">
                            <option selected>CC</option>
                            <option>TI</option>
                            <option>NIT</option>
                            <option>CE</option>
                            <option>Pasaporte</option>
                            <option>Otros</option>						  
                        </select>					
                    </div>
                    <div class="form-group col-sm-6 col-md-4">
                        <label for="NumID">N&uacute;mero de documento</label>
                        <input type="text" class="form-control" id="numID" name="numID" placeholder="N&uacute;mero de documento">			
                    </div>
                    <div class="form-group col-sm-6 col-md-2" >
                        <label>Pa&iacute;s</label>   												
                        <div id="departamentos" name="departamentos" class="bfh-selectbox bfh-countries" data-country="CO" data-flags="true"></div>
                    </div>					
                    <div class="form-group col-sm-6 col-md-4">
                        <label>Departamento</label>						
                        <div class="bfh-selectbox bfh-states" data-country="departamentos" id="ciudad"></div>	
                    </div>
                    <div class="form-group col-sm-6 col-md-5">
                        <label for="NumCel">N&uacute;mero celular</label>
                        <input type="text" class="form-control" id="numCel" name="numCel" placeholder="N&uacute;mero celular">			
                    </div>
                    <div class="form-group col-sm-6 col-md-4">
                        <label for="email">Correo electr&oacute;nico</label>
                        <input type="email" class="form-control" id="email" name="email" placeholder="Correo electr&oacute;nico">			
                    </div>
                    <div class="form-group col-sm-12 col-md-3 radio" id="autorizo">
                        <p><strong>Autorizo env&iacute;o de email</strong></p>
                        <label>
                            <input type="radio" name="autorizo" id="si" value="si" checked>
                            S&iacute;
                        </label>
                        <label>
                            <input type="radio" name="autorizo" id="no" value="no">
                            No
                        </label>
                    </div>
                    <div class="form-group col-md-12" style="position: static">
                        <label for="motivo">Motivo de contacto</label>
                        <textarea class="form-control" rows="3" id="motivo" name="motivo"></textarea>			
                    </div>
                    <div class="col-md-12">	
                        <input type="hidden" name="paisval" id="paisval" >
                        <div class="checkbox disabled">
                            <label>
                                <input type="checkbox" name="acepto" value="">
                                <a href="https://storage.googleapis.com/portal-contenido-novaventa.appspot.com/estaticos/politica_tratmiento_dato_personales.pdf" target="_blank">Acepto pol&iacute;tica de privacidad</a>
                            </label>
                        </div>					
                        <input type="hidden" name="departamentoval" id="departamentoval" >

                        <input id="enviar" type="button" class="btn btn-default enviar" value="Enviar" >
                    </div>
                </form>
            </div>
        </div>    
    </body>
</html>