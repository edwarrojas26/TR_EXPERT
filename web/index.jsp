<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>TR Expert</title>

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
    <!-- <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css"> -->

    <!-- custom css file link  -->
    <link rel="stylesheet" href="css/style_index.css">

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
            <a href="#Referecnias">Funcionalidades</a>
            <a href="#Referecnias">Ventajas</a>
            <a href="#Mision">Contáctenos</a>
            <button type="button"
                            class="active">
                            <a href="login.jsp"> Iniciar sesión</a>
                        </button>
            <!-- <a href="#trexpert" class="active">Iniciar SesiÃ³n</a>-->
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

                <!--<div class="swiper-slide slide" style="background: url(img/home-bg-2.jpg) no-repeat;">
                    <div class="content">
                        <span>be strong, be fit</span>
                        <h3>Make yourself stronger than your excuses.</h3>
                        <a href="#" class="btn">get started</a>
                    </div>
                </div>

                <div class="swiper-slide slide" style="background: url(img/home-bg-3.jpg) no-repeat;">
                    <div class="content">
                        <span>be strong, be fit</span>
                        <h3>Make yourself stronger than your excuses.</h3>
                        <a href="#" class="btn">get started</a>
                    </div>
                </div>-->

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
                    <a href="#" class="btn">Ingresar</a>
                </div>
            </div>
        </div>

    </section>



    <!--<section class="blogs" id="Referencias">

        <h1 class="heading"> <span>Funcionalidades</span> </h1>

        <div class="swiper blogs-slider">

            <div class="swiper-wrapper">

                <div class="swiper-slide slide">

                    <div class="content">

                        <div class="card text-center" style="width: 18rem;">
                            <div class="card-body">
                                <img src="img/feature.png" alt="">
                                <p class="card-text">Agilizar registro de clientes en el gimnasio</p>
                            </div>
                        </div>

                        <div class="card text-center" style="width: 18rem;">
                            <div class="card-body">
                                <img src="img/feature.png" alt="">
                                <p class="card-text">Generar planes de entrenamiento a base de las medidas
                                    proporcionadas por los clientes.</p>
                            </div>
                        </div>

                        <div class="card text-center" style="width: 18rem;">
                            <div class="card-body">
                                <img src="img/feature.png" alt="">
                                <p class="card-text">Notificar a los clientes sobre sus planes de entrenamiento</p>
                            </div>
                        </div>


                        <div class="card text-center" style="width: 18rem;">
                            <div class="card-body">
                                <img src="img/feature.png" alt="">
                                <p class="card-text">Generar planes de entrenamiento a base de las medidas
                                    proporcionadas por los clientes.</p>
                            </div>
                        </div>


                        <div class="card text-center" style="width: 18rem;">
                            <div class="card-body">
                                <img src="img/feature.png" alt="">
                                <p class="card-text">Habilitar e inhabilitar clientes en el gimnasio</p>
                            </div>
                        </div>


                        <div class="card text-center" style="width: 18rem;">
                            <div class="card-body">
                                <img src="img/feature.png" alt="">
                                <p class="card-text">Generar graficas al cliente para mejor interpretacion de sus
                                    resultados</p>
                            </div>
                        </div>

                    </div>
                </div>





            </div>

    </section>-->
    <!--   Tarjetas-->
<div class="title-cards">
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


     <!--   Tarjetas-->
<div class="title-cards">
    <h1 class="heading"> <span>Ventajas</span> </h1>
</div>
<div class="container-card">

<div class="card">
<figure>
    <img src="img/chulo.png">
</figure>
<div class="contenido-card">
    <p>Agilizar registro de clientes en el gimnasio.</p>
</div>
</div>
<div class="card">
<figure>
    <img src="img/chulo.png">
</figure>
<div class="contenido-card">
    <p>Generar planes de entrenamiento a base de las medidas
        proporcionadas por los clientes.</p>
</div>
</div>
<div class="card">
<figure>
    <img src="img/chulo.png">
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
    <img src="img/chulo.png">
</figure>
<div class="contenido-card">
    <p>Generar planes de entrenamiento a base de las medidas
        proporcionadas por los clientes.</p>
</div>
</div>
<div class="card">
<figure>
    <img src="img/chulo.png">
</figure>
<div class="contenido-card">
    <p>Habilitar e inhabilitar clientes en el gimnasio.</p>
</div>
</div>
<div class="card">
<figure>
    <img src="img/chulo.png">
</figure>
<div class="contenido-card">
    <p>Generar graficas al cliente para mejor interpretacion de sus
        resultados.</p>
</div>

</div>

</div>
<!--Fin   Tarjetas-->
   <!-- <section class="blogs" id="Contacto">


        <div class="content">
            <h1 class="heading"> <span>Contactenos</span> </h1>
            <div class="contact-wrapper animated bounceInUp">
                <div class="contact-form">
                    <form action="">
                        <p>
                            <label>Nombre Completo</label>
                            <input type="text" name="fullname">
                        </p>
                        <p>
                            <label>Correo Personal</label>
                            <input type="email" name="email">
                        </p>
                        <p>
                            <label>NÃºmero Telefonico</label>
                            <input type="tel" name="phone">
                        </p>
                        <p>
                            <label>Asunto</label>
                            <input type="text" name="affair">
                        </p>
                        <p class="block">
                            <label>Mensaje</label>
                            <textarea name="message" rows="3"></textarea>
                        </p>
                        <p class="block">
                            <button>
                                Enviar
                            </button>
                        </p>
                    </form>
                </div>

            </div>


    </section>-->

    <section class="contact-box">
        <div class="row">
            <div class="col-xl-5 col-lg-12 register-bg">
             <img src="img/contacto.jpg" width="100%" id="imagenc">
            </div>
            <div class="col-xl-7 col-lg-12 d-flex">
                 <div class="container align-self-center p-6">
                     <br><br>
                     <h1 class="titulo">Contactenos</h1>
 
                     <form action="" class="formulario" id="formulario">
                         <div class="form-row mb-2">
                             <div class="form-group col-md-6">
                                 <div class="formulario__grupo" id="grupo__nombre">
                                     <label for="nombre" class="formulario__label">Nombre</label>
                                     <div class="formulario__grupo-input">
                                         <input type="text" class="formulario__input" name="nombre" id="nombre" placeholder="Ingresa tu nombre">
                                         <i class="formulario__validacion-estado fas fa-times-circle"></i>
                                     </div>
                                     <p class="formulario__input-error">El nombre debe tener minimo 2 letras y maximo 40.</p>
                                 </div>
                             </div>
                             
                             <div class="form-group col-md-6">
                                 <div class="formulario__grupo" id="grupo__apellido">
                                     <label for="apellido" class="formulario__label">Apellido</label>
                                     <div class="formulario__grupo-input">
                                         <input type="text" class="formulario__input" name="apellido" id="apellido" placeholder="Ingresa tu apellido">
                                         <i class="formulario__validacion-estado fas fa-times-circle"></i>
                                     </div>
                                     <p class="formulario__input-error">El apellido debe tener minimo 2 letras y maximo 40.</p>
                                 </div>
                             </div>
                             
                             <div class="form-group col-md-6">
                                 <div class="formulario__grupo" id="grupo__correo">
                                     <label for="correo" class="formulario__label">Correo Electronico</label>
                                     <div class="formulario__grupo-input">
                                         <input type="email" class="formulario__input" name="correo" id="correo" placeholder="Ingresa tu nombre">
                                         <i class="formulario__validacion-estado fas fa-times-circle"></i>
                                     </div>
                                     <p class="formulario__input-error">El correo solo puede contener letras, numeros, puntos, guiones y guion bajo.</p>
                                 </div>
                                </div>
                                <div class="form-group col-md-6">
                                    <div class="formulario__grupo" id="grupo__correo">
                                        <label for="correo" class="formulario__label">Telefono</label>
                                        <div class="formulario__grupo-input">
                                            <input type="email" class="formulario__input" name="correo" id="correo" placeholder="Ingresa tu nombre">
                                            <i class="formulario__validacion-estado fas fa-times-circle"></i>
                                        </div>
                                        <p class="formulario__input-error">El correo solo puede contener letras, numeros, puntos, guiones y guion bajo.</p>
                                    </div>
                                   </div>
                                    <div class="boton">       
                                    <div class="formulario__grupo formulario__grupo-btn-enviar">
                                 <button type="submit" class="formulario__btn">Enviar</button>
                                 <p class="formulario__mensaje-exito" id="formulario__mensaje-exito">Formulario enviado exitosamente!</p>
                             </div>
                         </div>     
                         </form>
                     </main>
                 </div>
            </div>
        </div>
    </section>
<!--
    <section class="trainers" id="trainers">

        <h1 class="heading"> <span>Equipo de desarrolladores</span> </h1>

        <div class="box-container">

            <div class="box">
                <img src="img/trainer-1.jpg" alt="">
                <div class="content">
                    <span>Desarrollador Back End</span>
                    <h3>Daniel Fernando Sierra Betancourt</h3>
                    <div class="share">
                        <a href="#" class="fab fa-facebook-f"></a>
                        <a href="#" class="fab fa-twitter"></a>
                        <a href="#" class="fab fa-pinterest"></a>
                        <a href="#" class="fab fa-linkedin"></a>
                    </div>
                </div>
            </div>

            <div class="box">
                <img src="img/trainer-2.jpg" alt="">
                <div class="content">
                    <span>Desarrolladora Front End</span>
                    <h3>Milena Aristizabal</h3>
                    <div class="share">
                        <a href="#" class="fab fa-facebook-f"></a>
                        <a href="#" class="fab fa-twitter"></a>
                        <a href="#" class="fab fa-pinterest"></a>
                        <a href="#" class="fab fa-linkedin"></a>
                    </div>
                </div>
            </div>

            <div class="box">
                <img src="img/trainer-3.jpg" alt="">
                <div class="content">
                    <span>Desarrollador Front End</span>
                    <h3>Juan Diego Betancourth Ortiz</h3>
                    <div class="share">
                        <a href="#" class="fab fa-facebook-f"></a>
                        <a href="#" class="fab fa-twitter"></a>
                        <a href="#" class="fab fa-pinterest"></a>
                        <a href="#" class="fab fa-linkedin"></a>
                    </div>
                </div>
            </div>

        </div>

    </section>

-->



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