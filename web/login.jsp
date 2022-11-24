<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    </script>
    <link rel="stylesheet" href="css/style_login.css"/>
    <link rel="stylesheet" href="css/stylem copy.css"/>
    <link rel="shortcut icon" href="./img/Logo_TR_Expert (2).png" type="image/x-icon">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.0/css/all.min.css"
    integrity="sha512-xh6O/CkQoPOWDdYTDqeRdPCVd1SpvCA9XXcUnZS2FmJNp1coAFzvtCN9BmamE+4aHK8yyUHUSCcJHgXloTyT2A=="
    crossorigin="anonymous" referrerpolicy="no-referrer" />
    <title>Login</title>
</head>
<body>
      <nav class="navres">
        <div class="logo">
            <a href="index.jsp"><button type="submit" class="formulario__btn">Inicio</button></a>
          
        </div>
        <div class="menu outside">
           
    </nav>
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
                    <br>   
                    <div>
                        <a href="recuperarContrasena.jsp">¿Olvidaste tu contraseña?</a>
                    </div>
                   <br><br>
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
                    <h3>¿No estas registrado?</h3>
                    <p>
                        ¡Si no estas registrado da click aquí!
                    </p>
                    <button class="btn transparent" id="sign-up-btn">
                        <a href="formulario-validaciones.jsp"> Registrarse</a>
                    </button>
                </div>
                <img src="img/imglogin.png" class="image" alt="" />
            </div>


            <!--<script src="js/validaciones_login.js"></script>-->
            
            <script src="./js/index.js"></script>
            <script src="https://kit.fontawesome.com/2c36e9b7b1.js" crossorigin="anonymous"></script>
            </body>
            </html>

