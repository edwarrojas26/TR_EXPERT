<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.0/css/all.min.css" rel="stylesheet" >
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.3.0/font/bootstrap-icons.css" rel="stylesheet">
    <link href="https://api.mapbox.com/mapbox-gl-js/v2.1.1/mapbox-gl.css" rel="stylesheet">
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <link href="css/stylem.css" rel="stylesheet">
    <link href="css/style_index.css" rel="stylesheet">
    <link href="./img/Logo_TR_Expert (2).png" type="image/x-icon" rel="shortcut icon">

    <script src="https://kit.fontawesome.com/6131ecdde6.js" crossorigin="anonymous"></script>
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.14.7/dist/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
    
    <title>TR Expert</title>
    
</head>

<body>

    <nav class="navres">
        <div class="logo">
          <img class="logo2" src="./img/Logo-TR-Expert.svg" alt="">
            <i class="fa-solid fa-bars hamburguer"></i>
        </div>
        <div class="menu outside">
            <a href="#acerca" class="item">Acerca de</a>
            <a href="#moduloss" class="item">Módulos</a>
            <a href="#funcionalidadess" class="item">Funcionalidades</a>
            <a href="#ventajass" class="item">Ventajas</a>
            <a href="login.jsp"> <button type="button"
                            class="active">
                            Iniciar sesión
                        </button></a>
        </div>
    </nav>

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

        <div class="content" id="acerca">
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

    <section class="features" id="moduloss">

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
                </div>
            </div>
        </div>

    </section>

    <!--   Tarjetas-->
    <div class="title-cards" id="funcionalidadess">
        <h1 class="heading"> <span>Funcionalidades</span> </h1>
    </div>
    <section class="p-5">
          <div class="row text-center g-4">
            <div class="col-md">
              <div class="card bg-dark text-light">
                <div class="card-body text-center">
                  <div class="h1 mb-3">
                    <i class="bi bi-laptop"></i>
                  </div>
                  <br>
                  <h3 class="card-title mb-3">Agilizar registro de clientes en el gimnasio la candelaria.</h3>
                  <p class="card-text">
                    
                  </p>
                </div>
              </div>
            </div>
            <div class="col-md">
              <div class="card bg-secondary text-light">
                <div class="card-body text-center">
                  <div class="h1 mb-3">
                    <i class="bi bi-laptop"></i>
                  </div>
                  <br>
                  <h3 class="card-title mb-3"> Generar planes de entrenamiento a base de las medidas
                    proporcionadas por los clientes.</h3>
                  <p class="card-text">
                   
                  </p>
                </div>
              </div>
            </div>
            <div class="col-md">
              <div class="card bg-dark text-light">
                <div class="card-body text-center">
                  <div class="h1 mb-3">
                    <i class="bi bi-laptop"></i>
                  </div>
                  <br>
                  <h3 class="card-title mb-3">Notificar a los clientes sobre sus planes de entrenamiento.</h3>
                  <p class="card-text">
                  
                  </p>
                </div>
              </div>
            </div>
            
          </div>
          <div class="row text-center g-4">
            <div class="col-md">
              <div class="card bg-dark text-light">
                <div class="card-body text-center">
                  <div class="h1 mb-3">
                    <i class="bi bi-laptop"></i>
                  </div>
                  <br>
                  <h3 class="card-title mb-3"> Generar planes de entrenamiento a base de las medidas
                    proporcionadas por los clientes.</h3>
                  <p class="card-text">
                   
                  </p>
                </div>
              </div>
            </div>
            <div class="col-md">
              <div class="card bg-secondary text-light">
                <div class="card-body text-center">
                  <div class="h1 mb-3">
                    <i class="bi bi-laptop"></i>
                  </div>
                  <br>
                  <h3 class="card-title mb-3">Habilitar e inhabilitar clientes en el gimnasio la candelaria.</h3>
                  <p class="card-text">
                    
                  </p>
                </div>
              </div>
            </div>
            <div class="col-md">
              <div class="card bg-dark text-light">
                <div class="card-body text-center">
                  <div class="h1 mb-3">
                    <i class="bi bi-laptop"></i>
                  </div>
                  <br>
                  <h3 class="card-title mb-3">Generar graficas al cliente para mejor interpretacion de sus
                    resultados.</h3>
                  <p class="card-text">
                    
                  </p>
                </div>
              </div>
            </div>
            
          </div>
        </div>
      </section>
<!--Fin   Tarjetas-->


<br><br>
     <!--   Tarjetas-->
     <div class="title-cards" id="ventajass">
        <h1 class="heading"> <span>Ventajas</span> </h1>
    </div>
    <section class="p-5">
        <div class="row text-center g-4">
          <div class="col-md">
            <div class="card bg-success text-light">
              <div class="card-body text-center">
                <div class="h1 mb-3">
                  <i class="bi bi-check"></i>
                </div>
                <br>
                <h3 class="card-title mb-3"> Agilizar registro de clientes en el gimnasio la candelaria.</h3>
                <p class="card-text">
                 
                </p>
              </div>
            </div>
          </div>
          <div class="col-md">
            <div class="card bg-success text-light">
              <div class="card-body text-center">
                <div class="h1 mb-3">
                  <i class="bi bi-check"></i>
                </div>
                <br>
                <h3 class="card-title mb-3">Generar planes de entrenamiento a base de las medidas
                    proporcionadas por los clientes.</h3>
                <p class="card-text">
                  
                </p>
              </div>
            </div>
          </div>
          <div class="col-md">
            <div class="card bg-success text-light">
              <div class="card-body text-center">
                <div class="h1 mb-3">
                  <i class="bi bi-check"></i>
                </div>
                <br>
                <h3 class="card-title mb-3"> Notificar a los clientes sobre sus planes de entrenamiento.</h3>
                <p class="card-text">
                 
                </p>
              </div>
            </div>
          </div>
          
        </div>
        <div class="row text-center g-4">
          <div class="col-md">
            <div class="card bg-success text-light">
              <div class="card-body text-center">
                <div class="h1 mb-3">
                  <i class="bi bi-check"></i>
                </div>
                <br>
                <h3 class="card-title mb-3">Generar planes de entrenamiento a base de las medidas
                    proporcionadas por los clientes.</h3>
                <p class="card-text">
                  
                </p>
              </div>
            </div>
          </div>
          <div class="col-md">
            <div class="card bg-success text-light">
              <div class="card-body text-center">
                <div class="h1 mb-3">
                  <i class="bi bi-check"></i>
                </div>
                <br>
                <h3 class="card-title mb-3"> Habilitar e inhabilitar clientes en el gimnasio la candelaria.</h3>
                <p class="card-text">
                 
                </p>
              </div>
            </div>
          </div>
          <div class="col-md">
            <div class="card bg-success text-light">
              <div class="card-body text-center">
                <div class="h1 mb-3">
                  <i class="bi bi-check"></i>
                </div>
                <br>
                <h3 class="card-title mb-3"> Generar graficas al cliente para mejor interpretacion de sus resultados.</h3>
                <p class="card-text">
                 
                </p>
              </div>
            </div>
          </div>
          
        </div>
      </div>
    </section>
                        <div class="credit">
                            <img src="img/Logo-TR-Expert.svg" width="15%"> Creado Por <span>TR EXPERT</span> copyright |
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
     <script src="./js/index.js"></script>
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

</html>
</body>

</html>