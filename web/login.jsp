<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    </script>
    <link rel="stylesheet" href="css/style_login.css"/>
    <title>login</title>
</head>
<body>
    <div class="container">
        <div class="forms-container">
            <div class="signin-signup">
                <form action="Usuario" method="post" class="sign-in-form" id="formulario">
                    <h2 class="title">Iniciar sesión</h2>
                    <img src="img/Logo-TR-Expert.svg" width="30%">
                    <div class="input-field">
                        <i class="fas fa-user"></i>
                        <input type="email" name="txtCorreo" placeholder="Correo" />
                    </div>
                    <div class="input-field">
                        <i class="fas fa-lock"></i>
                        <input type="password" name="txtContrasena" placeholder="Contraseña" />
                    </div>
                    <input type="hidden" value="5" name="opcion">
                    <div class="formulario__mensaje" id="formulario__mensaje">
                        <p><i class="fas fa-exclamation-triangle"></i> <b>Error:</b> Por favor rellena el formulario correctamente. </p>
                    </div>
                    <div class="boton">       
                        <div class="formulario__grupo formulario__grupo-btn-enviar">
                            <button type="submit" class="formulario__btn">Ingresar</button>
                            <p class="formulario__mensaje-exito" id="formulario__mensaje-exito">Formulario enviado exitosamente!</p>
                        </div>
                        
                    </div>    
                    
                    <p class="social-text">Visita nuestras redes sociales</p>
                    <div class="social-media">
                        <a href="#" class="social-icon">
                            <i class="fab fa-facebook-f"></i>
                        </a>
                        <a href="#" class="social-icon">
                            <i class="fab fa-twitter"></i>
                        </a>
                        <a href="#" class="social-icon">
                            <i class="fab fa-google"></i>
                        </a>
                        <a href="#" class="social-icon">
                            <i class="fab fa-linkedin-in"></i>
                        </a>

                    </div>
                </form>
            </div>
        </div>

        <div class="panels-container">
            <div class="panel left-panel">
                <div class="content">
                    <h3>No te haz registrado?</h3>
                    <p>
                        Si no te haz registrado da click aquÃ­!
                    </p>
                    <button class="btn transparent" id="sign-up-btn">
                        <a href="formulario-validaciones.jsp"> Registrarse</a>
                    </button>
                </div>
                <img src="img/imglogin.png" class="image" alt="" />
            </div>


            <!--<script src="js/validaciones_login.js"></script>-->
            <script src="https://kit.fontawesome.com/2c36e9b7b1.js" crossorigin="anonymous"></script>
            </body>
            </html>
