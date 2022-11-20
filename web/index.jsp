<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>TR EXPERT</title>

        <!-- font awesome cdn link  -->
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.0/css/all.min.css"
              integrity="sha512-xh6O/CkQoPOWDdYTDqeRdPCVd1SpvCA9XXcUnZS2FmJNp1coAFzvtCN9BmamE+4aHK8yyUHUSCcJHgXloTyT2A=="
              crossorigin="anonymous" referrerpolicy="no-referrer" />

        <link rel="stylesheet" href="https://unpkg.com/swiper@7/swiper-bundle.min.css" />
        <link href="https://fonts.googleapis.com/css2?family=Teko:wght@300&display=swap" rel="stylesheet">
        <link href="https://fonts.googleapis.com/css2?family=Aladin&display=swap" rel="stylesheet">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
        <script src="https://kit.fontawesome.com/a076d05399.js"></script>

        <!-- custom css file link  -->
        <link rel="stylesheet" href="css/style_index.css">
        <link rel="stylesheet" href="css/style_form-index.css"/>
        <link rel="shortcut icon" href="./img/Logo_TR_Expert (2).png" type="image/x-icon">

    </head>

    <body>

        <!-- header section starts      -->


        <header class="header">

            <img class="logo2" src="./img/Logo-TR-Expert.svg" alt="">

            <div id="menu-btn" class="fas fa-bars"></div>

            <nav class="navbar">
                <a href="#home">Inicio</a>
                <a href="#about">Acerca de </a>
                <a href="#Modulos">Módulos</a>
                <a href="#Funcionalidades">Funcionalidades</a>
                <a href="#Ventajas">Ventajas</a>
                <a href="#Contactenos">Contáctenos</a>
                <button type="button"
                        class="active">
                    <a href="login.jsp"> Iniciar sesión</a>
                </button>
            </nav>

        </header>

        <!-- header section ends     -->

        <!-- home section starts  -->

        <section class="home" id="home">

            <div class="swiper home-slider">

                <div class="swiper-wrapper">

                    <div class="swiper-slide slide" style="background: url(img/home-bg-1.jpg) no-repeat;">
                        <div class="content">
                            <h3>TR EXPERT</h3>
                            <span>Es la mejor solucion para optimizar los planes de entrenamiento</span>

                        </div>
                    </div>

                </div>

                <div class="swiper-pagination"></div>

            </div>

        </section>
        <!-- Button trigger modal -->


        <!-- Modal -->

        <br><br><br><br>
        <!-- Modal login-->
        <div class="color-modal">
            <div class="modal fade" id="exampleModalAreaTri" tabindex="-1" role="dialog"
                 aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
                <div class="modal-dialog modal-dialog-centered" role="document">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">itimes;</span>
                    </button>
                </div>

                <div class="center">
                    <h1>Login</h1>
                    <form method="post">
                        <div class="txt_field">
                            <input type="text" required>
                            <span></span>
                            <label>Username</label>
                        </div>
                        <div class="txt_field">
                            <input type="password" required>
                            <span></span>
                            <label>Password</label>
                        </div>

                        <div class="pass"><a href="./formulario-validaciones.html">¿No tienes cuenta?<br>Registrate
                                aqui!</a></div>
                        <input type="submit" value="Iniciar sesion" id="boton-iniciarsesion">
                        <br><br><br>
                    </form>
                </div>
            </div>
        </div>

        <!-- home section ends -->

        <!-- about section starts  -->

        <section class="about" id="about">

            <div class="image">
                <img src="img/about-img.jpg" alt="">
            </div>

            <div class="content">
                <span>Acerca de...</span>
                <h3 class="title">TR Expert</h3>
                <p>Es un software encargado del buen funcionamiento y gestionamiento de planes de entrenamiento a
                    nivel de gimnasios, cuenta con una totalidad de 7 modulos, de los mas importantes que podemos resaltar
                    son: Usuarios, Plan De Entrenamiento y Ejercicio; ademas de esto TR Expert a nivel de UI y IX implementa
                    interfaces modernas, dinamicas e interactivas para mejorar la experiencia usuario sistema. Si necesitas
                    sistematizar los procesos de tu gimnasio TR Expert es la mejor solucion.
                </p>
            </div>

        </section>

        <!-- about section ends -->

        <!-- features section starts  -->

        <section class="features" id="Modulos">

            <h1 class="heading"> <span>Modulos</span> </h1>

            <div class="box-container">
                <div class="box second">
                    <div class="image">
                        <img src="img/f-img-2.jpg" alt="">
                    </div>
                    <div class="content">
                        <img src="img/icon-2.png" alt="">
                        <h3>Usuarios</h3>
                        <p>Permite registrar usuarios y hacer cargas masivas, por esta razon permite ser organizado y que el
                            proceso sea menos tedioso en el tema de la informacion, asi no se perdera ni borrar ningun
                            dato.
                            Los usuarios pueden tener dos estados, que son activo e inactivo, esto permite saber si el
                            usuario sigue en el gimnasio o ya se ha retirado,
                            si el usuario quiere volver al gimnasio solo se le cambiara el estado a activo.</p>
                        <a href="#" class="btn">Ingresar</a>
                    </div>
                </div>

                <div class="box">
                    <div class="image">
                        <img src="img/f-img-1.jpg" alt="">
                    </div>
                    <div class="content">
                        <img src="img/icon-1.png" alt="">
                        <h3>Planes De Entrenamiento</h3>
                        <p>Asigna los planes de entrenamiento apartir de las medidas registradas por el cliente. el mismo
                            entrenador evalua y crea el plan que contiene
                            ejercicios con unas repeticones y unas series especificas.
                            Tambien se permitira actualizar el plan de acuerdo con el avance del cliente, este avance se
                            evaluar cada tres meses y asi el entrenador decide como actualizar el plan de entrenamiento.
                        </p>
                        <a href="login.jsp" class="btn">Ingresar</a>
                    </div>
                </div>
            </div>

        </section>

        <!--   Tarjetas-->
        <div class="title-cards" id="Funcionalidades">
            <h1 class="heading"> <span>Funcionalidades</span> </h1>
        </div>
        <div class="container-card">

            <div class="card">
                <figure>
                    <img src="img/funcionalidades5.png">
                </figure>
                <div class="contenido-card">
                    <p>Agilizar registro de clientes en el gimnasio.</p>
                </div>
            </div>
            <div class="card">
                <figure>
                    <img src="img/funcionalidades5.png">
                </figure>
                <div class="contenido-card">
                    <p>Generar planes de entrenamiento a base de las medidas
                        proporcionadas por los clientes.</p>
                </div>
            </div>
            <div class="card">
                <figure>
                    <img src="img/funcionalidades5.png">
                </figure>
                <div class="contenido-card">
                    <p>Notificar a los clientes sobre sus planes de entrenamiento.</p>
                </div>

            </div>

        </div>
        <!--Fin   Tarjetas-->
        <!--   Tarjetas-->

        <div class="container-card">

            <div class="card">
                <figure>
                    <img src="img/funcionalidades5.png">
                </figure>
                <div class="contenido-card">
                    <p>Generar planes de entrenamiento a base de las medidas
                        proporcionadas por los clientes.</p>
                </div>
            </div>
            <div class="card">
                <figure>
                    <img src="img/funcionalidades5.png">
                </figure>
                <div class="contenido-card">
                    <p>Habilitar e inhabilitar clientes en el gimnasio.</p>
                </div>
            </div>
            <div class="card">
                <figure>
                    <img src="img/funcionalidades5.png">
                </figure>
                <div class="contenido-card">
                    <p>Generar graficas al cliente para mejor interpretacion de sus
                        resultados.</p>
                </div>

            </div>

        </div>
        <!--Fin   Tarjetas-->


        <br><br>
        <!--   Tarjetas-->
        <div class="title-cards" id="Ventajas">
            <h1 class="heading"> <span>Ventajas</span> </h1>
        </div>
        <br><br>
        <div class="container-card">

            <div class="container-principal">
                <div class="row">
                    <div class="col-lg-12 text-center">
                        <div class="row">

                            <div class="col-lg-4 col-md-12 col-mb-4">

                                <div class="card-section border rounded p-3">
                                    <div class="card-header-third rounded pb-5">
                                        <img src="./img/chulo.png" width="100px">
                                    </div>
                                    <div class="card-body text-center">
                                        <p class="card-text"> Agilizar registro de los clientes en el gimnasio la candelaria. </p>
                                    </div>
                                </div>
                            </div>
                            <!--tarjeta 2-->
                            <div class="col-lg-4 col-md-12 col-mb-4">

                                <div class="card-section border rounded p-3">
                                    <div class="card-header-third rounded pb-5">
                                        <img src="./img/chulo.png" width="100px">
                                    </div>
                                    <div class="card-body text-center">
                                        <p class="card-text"> Generar planes de entrenamiento a base de las medidas
                                            proporcionadas por los clientes. </p>
                                    </div>
                                </div>
                            </div>

                            <!--tarjeta3-->
                            <div class="col-lg-4 col-md-12 col-mb-4">

                                <div class="card-section border rounded p-3">
                                    <div class="card-header-third rounded pb-5">
                                        <img src="./img/chulo.png" width="100px">
                                    </div>
                                    <div class="card-body text-center">
                                        <p class="card-text">Notificar a los clientes sobre sus planes de entrenamiento. </p>
                                    </div>
                                </div>
                            </div>
                            <br><br><br>

                            <div class="col-lg-12 text-center">
                                <div class="row">

                                    <div class="col-lg-4 col-md-12 col-mb-4">

                                        <div class="card-section border rounded p-3">
                                            <div class="card-header-third rounded pb-5">
                                                <img src="./img/chulo.png" width="100px">
                                            </div>
                                            <div class="card-body text-center">
                                                <p class="card-text"> Generar planes de entrenamiento a base de las medidas
                                                    proporcionadas por los clientes. </p>
                                            </div>
                                        </div>
                                    </div>
                                    <!--tarjeta 2-->
                                    <div class="col-lg-4 col-md-12 col-mb-4">

                                        <div class="card-section border rounded p-3">
                                            <div class="card-header-third rounded pb-5">
                                                <img src="./img/chulo.png" width="100px">
                                            </div>
                                            <div class="card-body text-center">
                                                <p class="card-text">Habilitar e inhabilitar clientes en el gimnasio. </p>
                                            </div>
                                        </div>
                                    </div>

                                    <!--tarjeta3-->
                                    <div class="col-lg-4 col-md-12 col-mb-4">

                                        <div class="card-section border rounded p-3">
                                            <div class="card-header-third rounded pb-5">
                                                <img src="./img/chulo.png" width="100px">
                                            </div>
                                            <div class="card-body text-center">
                                                <p class="card-text">Generar graficas al cliente para mejor interpretacion de sus
                                                    resultados.</p>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="container" id="Contactenos">
                                        <div class="forms-container">
                                            <div class="signin-signup">
                                                <form action="Usuario" method="post" class="sign-in-form" id="formulario">
                                                    <img src="img/Logo-TR-Expert.svg" width="30%">
                                                    <div class="input-field">
                                                        <i class="fas fa-user"></i>
                                                        <input type="text" name="txtCorreo" placeholder="Nombre" />
                                                    </div>
                                                    <div class="input-field">
                                                        <i class="fas fa-lock"></i>
                                                        <input type="email" name="txtContrasena" placeholder="Correo" />
                                                    </div>
                                                    <div class="input-field">
                                                        <i class="fas fa-phone"></i>
                                                        <input type="number" name="txtContrasena" placeholder="Teléfono" />
                                                    </div>
                                                    <div class="input-field">
                                                        <i class="fas fa-lock"></i>
                                                        <input type="text" name="txtContrasena" placeholder="Asunto" />
                                                    </div>
                                                    <label for="" class="textoMensaje">Mensaje</label>
                                                    <textarea name="message" rows="4"></textarea>
                                                    <br>
                                                    <button type="button" class="formulario__btn">Enviar</button>
                                                </form>
                                            </div>
                                        </div>

                                        <div class="panels-container">
                                            <div class="panel left-panel">

                                                <img src="img/contacto-img.jpg" class="image" alt="" />
                                            </div></div></div>
                                    <div class="credit">
                                        <img class="logo3" src="./img/Logo-TR-Expert.svg" alt=""> Creado Por <span>TR EXPERT</span> copyright |
                                        Todos Los Derechos Reservados!
                                        <a href="#" class="fab fa-facebook-f"></a>
                                        <a href="#" class="fab fa-youtube"></a>
                                        <a href="#" class="fab fa-instagram"></a>
                                        <a href="#" class="fab fa-twitter"></a>
                                        <a href="#" class="fab fa-whatsapp"></a>

                                    </div>

                                    <script src="https://unpkg.com/swiper@7/swiper-bundle.min.js"></script>

                                    <!-- custom js file link  -->
                                    <script src="js/script.js"></script>
                                    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
                                    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
                                    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

                                    </html>
                                    </body>

                                    </html>