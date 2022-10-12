<%@page import="ModeloVO.UsuarioVO"%>
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

        <!-- header section starts-->

        <header class="header">

            <a href="#" class="logo"> <span>TR</span>EXPERT </a>

            <div id="menu-btn" class="fas fa-bars"></div>

            <nav class="navbar">
                <a href="#home">Inicio</a>    
            </nav>

            <style>

                label {
                    color: white;
                }
            </style>
        </header>

        <!-- about section starts  -->

        <section class="about" id="about">

            <div class="image">
                <img src="img/about-img.jpg" alt="">
            </div>
            <div class="content">
                <br><br>
                <h3 class="title">ACTUALIZAR USUARIO</h3>
                <div class="box-container">

                    

                        <%
                            UsuarioVO usuVO = (UsuarioVO) request.getAttribute("UsuarioSeleccionado");
                            if (usuVO != null) {
                        %>

                        <div class="form-row mb-2">
                          <form method="POST" action="Usuario">
                            <div class="form-group col-md-6">
                                <label class="font-weight-bold" for="">Numero de documento <span class="text-danger">*</span></label>
                                <input type="text" name="txtNumDoc"  class="form-control"  value="<%=usuVO.getNumDoc()%>" readonly>

                                <label class="font-weight-bold" for="txtTipoDoc">Tipo de documento <span class="text-danger">*</span></label>
                                <input type="text" name="txtTipoDoc" class="form-control"  value="<%=usuVO.getTipoDoc()%>">

                                <label class="font-weight-bold" for="txtNombre">Nombre <span class="text-danger">*</span></label>
                                <input type="text"  name="txtNombre" class="form-control"  value="<%=usuVO.getNombre()%>">

                                <label class="font-weight-bold" for="txtApellido">Apellido <span class="text-danger">*</span></label>
                                <input type="text" name="txtApellido" class="form-control" value="<%=usuVO.getApellido()%>">

                                <label class="font-weight-bold" for="txtFN">Fecha Nacimiento <span class="text-danger">*</span></label>
                                <input type="text" name="txtFN" class="form-control" value="<%=usuVO.getFechaNacimiento()%>" readonly>

                                <label class="font-weight-bold" for="txtEdad">Edad <span class="text-danger">*</span></label>
                                <input type="text" name="txtEdad" class="form-control" placeholder="Tu edad" value="<%=usuVO.getEdad()%>">

                                <label class="font-weight-bold" for="txtDireccion">Direccion <span class="text-danger">*</span></label>
                                <input type="text" name="txtDireccion" class="form-control" placeholder="Tu direccion" value="<%=usuVO.getDireccion()%>">

                                <label class="font-weight-bold" for="txtTelefono">Telefono <span class="text-danger">*</span></label>
                                <input type="text" name="txtTelefono" class="form-control" placeholder="Tu telefono" value="<%=usuVO.getTelefono()%>">

                                <label class="font-weight-bold" for="txtCorreo">Correo electronico<span class="text-danger">*</span></label>
                                <input type="email" name="txtCorreo" class="form-control" placeholder="Ingresa tu correo electronico" value="<%=usuVO.getCorreo()%>">

                                <label class="font-weight-bold" for="txtTS">Tipo de sangre <span class="text-danger">*</span></label>
                                <input type="text" name="txtTS" class="form-control" placeholder="Tu RH" value="<%=usuVO.getTS()%>" readonly>
                                
                                <label class="font-weight-bold" for="txtEPS">EPS <span class="text-danger">*</span></label>
                                <select name="txtEPS" >
                                    <option value="<%=usuVO.getEPS()%>"><%=usuVO.getEPS()%>"</option>
                                    <option value="1">Sura</option>
                                    <option value="2">Cruz Blanca</option>
                                    <option value="3">Convida</option>
                                    <option value="4">Famisanar</option>
                                    <option value="5">Sanitas</option>
                                    <option value="6">Capital Salud</option>
                                    <option value="7">Compensar</option>
                                </select><br>

                                <label class="font-weight-bold" for="txtAlergias">Alergias <span class="text-danger">*</span></label>
                                <input type="text" name="txtAlergias" class="form-control" placeholder="alergias" value="<%=usuVO.getAlergia()%>">

                                <label class="font-weight-bold" for="txtEstado">Estado <span class="text-danger">*</span></label>
                                <input type="text" name="txtEstado" class="form-control" placeholder="Tu estado" value="<%=usuVO.getEstado()%>" readonly>

                                <label class="font-weight-bold" for="txtSexo">Sexo <span class="text-danger">*</span></label>
                                <input type="text" name="txtSexo" class="form-control" placeholder="Tu sexo" value="<%=usuVO.getSexo()%>">

                                <label class="font-weight-bold" for="txtRol">Rol <span class="text-danger">*</span></label>
                                <input type="text" name="txtRol" class="form-control" placeholder="Tu rol" value="<%=usuVO.getRol()%>" readonly>
                                
                                <label class="font-weight-bold" for="txtContrasena">Contraseña <span class="text-danger">*</span></label>
                                <input type="text" name="txtContrasena" class="form-control" placeholder="Tu rol" value="<%=usuVO.getContrasena()%>">

                            </div>
                                <div class="form-group mb-3">
                                    <label class="font-weight-bold">Confirmar contraseña<span class="text-danger">*</span></label>
                                    <input type="password" class="form-control" placeholder="Ingresa de nuevo la contraseña">
                                </div>

                            <input type="submit" value="Actualziar">
                            <input name="opcion" type="hidden" value="3">
                            
                          </form>

                            
                        </div>           

                    
                    <% } else {
                                request.getRequestDispatcher("actualizarUsuario.jsp").forward(request, response);
                            }%>

                </div>

        </section>
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