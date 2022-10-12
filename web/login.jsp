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
                <!--
                <form action="#" class="sign-up-form" id="formulario">
                  <div class="input-field">
                    <i class="fas fa-user"></i>
                    <div class="formulario__grupo" id="grupo__nombre">
                      <label for="nombre" class="formulario__label">Nombre</label>
                      <div class="formulario__grupo-input">
                        <input type="text" class="formulario__input" name="nombre" id="nombre">
                        <i class="formulario__validacion-estado fas fa-times-circle"></i>
                      </div>
                      <p class="formulario__input-error">El nombre tiene que ser de 2 a 40 dÃ­gitos y solo puede contener letras.</p>
                    </div>
                  </div>
                  <div class="input-field">
                    <i class="fas fa-envelope"></i>
                              <div class="formulario__grupo" id="grupo__apellido">
                                      <label for="apellido" class="formulario__label">Apellido</label>
                                      <div class="formulario__grupo-input">
                                              <input type="text" class="formulario__input" name="apellido" id="apellido">
                                              <i class="formulario__validacion-estado fas fa-times-circle"></i>
                                      </div>
                                      <p class="formulario__input-error">El apellido tiene que ser de 2 a 40 dÃ­gitos y solo puede contener letras.</p>
                              </div>
      
                  </div>
                  
                  <div class="input-field">
                    <i class="fas fa-envelope"></i>
                              <div class="formulario__grupo" id="grupo__ndocumento">
                                      <label for="ndocumento" class="formulario__label">NÃºmero de documento</label>
                                      <div class="formulario__grupo-input">
                                              <input type="number" class="formulario__input" name="ndocumento" id="ndocumento">
                                              <i class="formulario__validacion-estado fas fa-times-circle"></i>
                                      </div>
                                      <p class="formulario__input-error">El nÃºmero de documento tiene que ser de 7 a 20 nÃºmeros.</p>
                              </div>
      
                  </div>
                  <div class="input-field">
                    <i class="fas fa-envelope"></i>
                              <div class="formulario__grupo" id="grupo__fnacimiento">
                                      <label for="fnacimiento" class="formulario__label">Fecha de nacimiento</label>
                                      <div class="formulario__grupo-input">
                                              <input type="date" class="formulario__input" name="fnacimiento" id="fnacimiento">
                                              <i class="formulario__validacion-estado fas fa-times-circle"></i>
                                      </div>
                                      <p class="formulario__input-error">El usuario tiene que ser de 4 a 16 dÃ­gitos y solo puede contener numeros, letras y guion bajo.</p>
                              </div>
      
                  </div>
                  <div class="input-field">
                    <i class="fas fa-envelope"></i>
                              <div class="formulario__grupo" id="grupo__correo">
                                      <label for="correo" class="formulario__label">Correo electrÃ³nico</label>
                                      <div class="formulario__grupo-input">
                                              <input type="email" class="formulario__input" name="correo" id="correo">
                                              <i class="formulario__validacion-estado fas fa-times-circle"></i>
                                      </div>
                                      <p class="formulario__input-error">El correo solo puede contener letras, numeros, puntos, guiones y guion bajo.</p>
                              </div>
      
                  </div>
                  <div class="input-field">
                    <i class="fas fa-lock"></i>
                              <div class="formulario__grupo" id="grupo__password">
                                      <label for="password" class="formulario__label">ContraseÃ±a</label>
                                      <div class="formulario__grupo-input">
                                              <input type="password" class="formulario__input" name="password" id="password">
                                              <i class="formulario__validacion-estado fas fa-times-circle"></i>
                                      </div>
                                      <p class="formulario__input-error">La contraseÃ±a tiene que ser de 4 a 12 dÃ­gitos.</p>
                              </div>
            
                  </div>
                  <div class="input-field">
                    <i class="fas fa-lock"></i>
                              <div class="formulario__grupo" id="grupo__password2">
                                      <label for="password2" class="formulario__label">Repetir ContraseÃ±a</label>
                                      <div class="formulario__grupo-input">
                                              <input type="password" class="formulario__input" name="password2" id="password2">
                                              <i class="formulario__validacion-estado fas fa-times-circle"></i>
                                      </div>
                                      <p class="formulario__input-error">Ambas contraseÃ±as deben ser iguales.</p>
                              </div>
            
                  </div>
                  <div class="formulario__mensaje" id="formulario__mensaje">
                    <p><i class="fas fa-exclamation-triangle"></i> <b>Error:</b> Por favor rellena el formulario correctamente. </p>
                </div>
                <div class="boton">       
                      <div class="formulario__grupo formulario__grupo-btn-enviar">
                                      <button type="submit" class="formulario__btn">Enviar</button>
                                      <p class="formulario__mensaje-exito" id="formulario__mensaje-exito">Formulario enviado exitosamente!</p>
                                  </div>
                              </div>     
                  <br><br>
                </form>-->
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
