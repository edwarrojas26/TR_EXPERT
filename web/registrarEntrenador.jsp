<%-- 
    Document   : registrarEntrenador
    Created on : 19/09/2022, 10:14:49 AM
    Author     : edwar
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
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
                                <input type="hidden" name="txtRol" value="Entrenador" class="form-control">
                            
                                <label class="font-weight-bold" for="txtContrasena">Contraseña<span class="text-danger">*</span></label>
                                <input type="password" name="txtContrasena" class="form-control" placeholder="Ingresa una contraseña">
                         
                            </div>
                            
                        
                        <div class="form-group mb-3">
                            <label class="font-weight-bold">Confirmar contraseña<span class="text-danger">*</span></label>
                            <input type="password" class="form-control" placeholder="Ingresa de nuevo la contraseña">
                        </div>
                        <input name="opcion" type="hidden" value="1">
                        </div> 
                        
                        <form action="Entrenador" method="POST">
                            <label class="font-weight-bold" for="txtArea">Area<span class="text-danger">*</span></label>
                            <input type="text" name="txtArea" class="form-control" placeholder="Area de desempeño entrenador">
                            <input type="submit" value="enviar">
                            <input name="opcion" type="hidden" value="1">
                        </form>
                        
                        
                        
                    </form>
                    
                    
                    
                    
                    
                    

                </div>
    </body>
</html>
