<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    </script>
    <link rel="stylesheet" href="./css/style_login.css"/>
    <link rel="stylesheet" href="css/stylem copy.css"/>
    <link rel="shortcut icon" href="./img/Logo_TR_Expert (2).png" type="image/x-icon">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.0/css/all.min.css"
    integrity="sha512-xh6O/CkQoPOWDdYTDqeRdPCVd1SpvCA9XXcUnZS2FmJNp1coAFzvtCN9BmamE+4aHK8yyUHUSCcJHgXloTyT2A=="
    crossorigin="anonymous" referrerpolicy="no-referrer" />
    <title>Recuperar contraseña</title>
</head>
<body>
      
    <div class="container">
        <div class="forms-container">
            <div class="signin-signup">
                <form method="POST" action="Usuario">
                    <h2 class="title">Recuperar contraseña</h2>
                    <img src="./img/Logo-TR-Expert.svg" width="30%">
                    <div class="input-field">
                        <i class="fas fa-user"></i>
                        <input type="email" name="txtCorreo" placeholder="Correo electrónico">
                    </div>
                    <div class="input-field">
                        <i class="fas fa-lock"></i>
                        <input type="password" name="txtContrasena" placeholder="Nueva contraseña">
                    </div>
                    <input type="hidden" value="5" name="opcion">
                    
                    <div class="boton">       
                            <button type="submit" class="formulario__btn">Enviar</button>
                    <input type="hidden" value="6" name="opcion">
                           
                    </div>    

                </form>
            </div>
        </div>

        <div class="panels-container">
            <div class="panel left-panel">
                <div class="content">
                    
                    <button class="btn transparent" id="sign-up-btn">
                        <a href="index.jsp"> Regresar al inicio</a>
                    </button>
                </div>
                <img src="./img/pcnd.png" class="image" alt="" />
            </div>



            <!--<script src="js/validaciones_login.js"></script>-->
            <script src="./js/index.js"></script>
            <script src="https://kit.fontawesome.com/2c36e9b7b1.js" crossorigin="anonymous"></script>
            </body>
            </html>
