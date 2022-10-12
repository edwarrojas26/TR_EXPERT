<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>FORMULARIO DE REGISTRO</title>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
        <link href="https://fonts.googleapis.com/css?family=Roboto:300,400,700&display=swap" rel="stylesheet">
        <link href="https://unpkg.com/ionicons@4.5.10-0/dist/css/ionicons.min.css" rel="stylesheet">
        <link href="css/style-formulario.css" rel="stylesheet">


    </head>
    <body>


        <!-- about section starts  -->

        <section class="about" id="about">

            <div class="content">
                <br><br>
                <h3 class="title">FORMULARIO DE REGISTRO</h3>
                <div class="box-container">

                    <form method="post" action="Usuario">

                        <div class="form-row mb-2">

                            <div class="form-group col-md-6">
                                <label class="font-weight-bold" for="txtNumDoc">Numero de documento <span class="text-danger">*</span></label>
                                <input type="text" name="txtNumDoc" class="form-control" placeholder="Tu numero de documento"><br>
                            
                                <label class="font-weight-bold" for="txtTipoDoc">Tipo de documento <span class="text-danger">*</span></label>
                                <select name="txtTipoDoc">
                                    <option placeholder="Tu tipo de documento">Seleccione...</option>
                                    <option value="1">CC</option>
                                    <option value="2">TI</option>
                                    <option value="3">TE</option>
                                    <option value="4">CE</option>
                                    <option value="5">PAS</option>
                                </select><br>
                            
                                <label class="font-weight-bold" for="txtNombre">Nombre <span class="text-danger">*</span></label>
                                <input type="text"  name="txtNombre" class="form-control" placeholder="Tu nombre" >
                            
                                <label class="font-weight-bold" for="txtApellido">Apellido <span class="text-danger">*</span></label>
                                <input type="text" name="txtApellido" class="form-control" placeholder="Tu apellido">
                            
                                <label class="font-weight-bold" for="txtFN">Fecha Nacimiento <span class="text-danger">*</span></label>
                                <input type="date" name="txtFN" class="form-control" placeholder="Tu Fecha de nacimiento">
                            
                           
                                <label class="font-weight-bold" for="txtEdad">Edad <span class="text-danger">*</span></label>
                                <input type="text" name="txtEdad" class="form-control" placeholder="Tu edad">
                            
                                <label class="font-weight-bold" for="txtDireccion">Direccion <span class="text-danger">*</span></label>
                                <input type="text" name="txtDireccion" class="form-control" placeholder="Tu direccion">
                            
                                <label class="font-weight-bold" for="txtTelefono">Telefono <span class="text-danger">*</span></label>
                                <input type="text" name="txtTelefono" class="form-control" placeholder="Tu telefono">
                            
                                <label class="font-weight-bold" for="txtCorreo">Correo electronico<span class="text-danger">*</span></label>
                                <input type="email" name="txtCorreo" class="form-control" placeholder="Ingresa tu correo electronico">
                            
                                <label class="font-weight-bold" for="txtTS">Tipo de sangre<span class="text-danger">*</span></label>
                                <select name="txtTS">
                                    <option placeholder="Tu RH">Seleccione...</option>
                                    <option value="1">A+</option>
                                    <option value="2">A-</option>
                                    <option value="3">B+</option>
                                    <option value="4">B-</option>
                                    <option value="5">AB+</option>
                                    <option value="6">AB-</option>
                                    <option value="7">O+</option>
                                    <option value="8">O-</option>
                                </select><br>
                                
                            
                                <label class="font-weight-bold" for="txtEPS">EPS <span class="text-danger">*</span></label>
                                <select name="txtEPS">
                                    <option placeholder="Tu EPS">Seleccione...</option>
                                    <option value="1">Sura</option>
                                    <option value="2">Cruz Blanca</option>
                                    <option value="3">Convida</option>
                                    <option value="4">Famisanar</option>
                                    <option value="5">Sanitas</option>
                                    <option value="6">Capital Salud</option>
                                    <option value="7">Compensar</option>
                                </select><br>
                           
                                <label class="font-weight-bold" for="txtAlergias">Alergias <span class="text-danger">*</span></label>
                                <input type="text" name="txtAlergias" class="form-control" placeholder="alergias">
                            
                                <!--<label class="font-weight-bold" for="txtEstado">Estado <span class="text-danger">*</span></label>-->
                                <input type="hidden" name="txtEstado"  value="Activo" class="form-control">
                            
                                <label class="font-weight-bold" for="txtSexo">Sexo <span class="text-danger">*</span></label>
                                <input type="text" name="txtSexo" class="form-control" placeholder="Tu sexo">
                            
                                <!--<label class="font-weight-bold" for="txtRol">Rol <span class="text-danger">*</span></label>-->
                                <input type="hidden" name="txtRol" value="Cliente" class="form-control">
                            
                                <label class="font-weight-bold" for="txtContrasena">Contraseña<span class="text-danger">*</span></label>
                                <input type="password" name="txtContrasena" class="form-control" placeholder="Ingresa una contraseña">
                            </div>
                        
                        <div class="form-group mb-3">
                            <label class="font-weight-bold">Confirmar contraseña<span class="text-danger">*</span></label>
                            <input type="password" class="form-control" placeholder="Ingresa de nuevo la contraseña">
                        </div>
                            
                        <input type="submit" value="enviar">
                        <input name="opcion" type="hidden" value="1">
                    </div>           
                        
                    </form>

                </div>

        </section>
        
        <script src="js/validacion.js"></script>
<%
            if (request.getAttribute("mensajeError") != null) {%>
        <div class="alert alert-danger" role="alert">
            ${mensajeError}
        </div>
        <% } else { %>
        <div class="alert alert-success" role="alert">
            ${mensajeExito}
        </div>
        <% }%>
    </body>
</html>