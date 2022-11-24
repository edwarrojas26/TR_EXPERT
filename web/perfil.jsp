<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/css/bootstrap.min.css"
    integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
<link href='https://unpkg.com/boxicons@2.1.1/css/boxicons.min.css' rel='stylesheet'>
<script src="https://kit.fontawesome.com/fb993fc4c6.js" crossorigin="anonymous"></script>


<link rel="stylesheet" href="https://unpkg.com/swiper@7/swiper-bundle.min.css" />
<link href='https://unpkg.com/boxicons@2.1.1/css/boxicons.min.css' rel='stylesheet'>
    
    <!----======== CSS ======== -->
    <link rel="stylesheet" href="./css/stylePerfil.css">
    
    <link rel="stylesheet" href="./css/perfil.css">
    
    <!----===== Boxicons CSS ===== -->
    <link href='https://unpkg.com/boxicons@2.1.1/css/boxicons.min.css' rel='stylesheet'>
    
    <title>Cliente</title> 
</head>
<body class="fondods">
    <nav class="sidebar close-navd">
        <header>
            <div class="image-textd">
                

                <div class="text logod-text">
                    <img src="./img/Logo-TR-Expert.svg" width="100%">
                </div>
            </div>

            <i class='bx bx-chevron-right toggle'></i>
        </header>

        <div class="menu-bardd">
            <div class="menudds">

                    <ul class="menu-linksds">
                        <li class="nav-linkds">
                            <a href="#">
                                <i class='bx bx-home-alt icon' ></i>
                                <span class="text nav-text">Inicio</span>
                            </a>
                        </li>

                    <li class="nav-linkds">
                        <a href="#">
                            <i class="fa-solid fa-file-invoice icon"></i>
                            <span class="text nav-text">Modificar mis datos</span>
                        </a>
                    </li>

                    <li class="nav-linkds">
                        <a href="#">
                            <i class="fa-solid fa-ruler icon"></i>
                            <span class="text nav-text">Registrar medidas corporales</span>
                        </a>
                    </li>

                    <li class="nav-linkds">
                        <a href="#">
                            <i class="fa-solid fa-person-walking icon"></i>
                            <span class="text nav-text">Mi plan</span>
                        </a>
                    </li>
                    <li class="nav-linkds">
                        <a href="perfil.jsp">
                            <i class="fa-solid fa-person-walking icon"></i>
                            <span class="text nav-text">Perfil</span>
                        </a>
                    </li>
                    </div>

                </ul>
            
        <form method="post" action="Sesiones">
            <div class="bottom-contentds">
                <li class="">
                    <a href="#">
                        <i class='bx bx-log-out icon'></i>
                        <input class="cerrar1s" type="submit" value="Cerrar Sesión">
                    </a>
                </li> 
            </div>
        </form>
                
        </div>
        


    </nav>
            
        <form method="post" action="Sesiones">
            <div class="bottom-contentds">
                <li class="">
                    <a href="#">
                        <i class='bx bx-log-out icon'></i>
                        <input class="cerrar" type="submit" value="Cerrar Sesión">
                    </a>
                </li> 
            </div>
        </form>
                
        </div>
        


    </nav>


<section class="home">
 
            <section class="seccion-perfil-usuario">
                <div class="perfil-usuario-header">
                    <div class="perfil-usuario-portada">
                        <div class="perfil-usuario-avatar">
                            <img src="./img/Logo-TR-Expert.svg" alt="img-avatar">
                        </div>
                        
                    </div>
                </div>
                <div class="perfil-usuario-body">
                    <div class="perfil-usuario-bio">
                        <h3 class="titulo">Maria Alejandra De la Cruz</h3>
                        <p class="texto">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
                            tempor incididunt ut labore et dolore magna aliqua.</p>
                    </div>
                    <div class="perfil-usuario-footer">
                        <ul class="lista-datos">
                            <li><i class="icono fas fa-map-signs"></i>Numero de documento:</li>
                            <li><i class="icono fas fa-phone-alt"></i>Tipo de documento:</li>
                            <li><i class="icono fas fa-briefcase"></i>Nombre:</li>
                            <li><i class="icono fas fa-building"></i> Apellido:</li>
                            <li><i class="icono fas fa-map-signs"></i>Fecha Nacimiento:</li>
                            <li><i class="icono fas fa-phone-alt"></i>Edad:</li>
                            <li><i class="icono fas fa-briefcase"></i>Direccion:</li>
                            <li><i class="icono fas fa-building"></i> Telefono:</li>
                        </ul>
                        <ul class="lista-datos">
                            <li><i class="icono fas fa-map-marker-alt"></i>Correo electronico:</li>
                            <li><i class="icono fas fa-calendar-alt"></i>Tipo de sangre:</li>
                            <li><i class="icono fas fa-user-check"></i> EPS:</li>
                            <li><i class="icono fas fa-share-alt"></i>Alergias:</li>
                            <li><i class="icono fas fa-calendar-alt"></i>sexo:</li>
                            <li><i class="icono fas fa-user-check"></i> Contraseña:</li>
                            <li><i class="icono fas fa-share-alt"></i>Confirmar contraseña:</li>
                        </ul>
                    </div>
                   
                </div>
            </section>
          
               
            </div>
        </div>
</section>

<script src="./trexpert/web/js/index.js"></script>
<script src="./js/script.js"></script>
<!--====  End of tarjeta  ====-->
</body>

</html>