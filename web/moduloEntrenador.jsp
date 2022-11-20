<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="Sesiones.jsp"%> 
<%@include file="navbar_entrenador.jsp"%>
<!-- Coding by CodingLab | www.codinglabweb.com -->
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
    <link rel="stylesheet" href="./css/styleEntrenador.css">
    
    <!----===== Boxicons CSS ===== -->
    <link href='https://unpkg.com/boxicons@2.1.1/css/boxicons.min.css' rel='stylesheet'>
    
    <title>Entrenador</title> 
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

                <li class="search-box">
                    <i class='bx bx-search icon'></i>
                    <input type="text" placeholder="Search...">
                </li>

                <ul class="menu-linksds">
                    <li class="nav-linkds">
                        <a href="#">
                            <i class='bx bx-home-alt icon' ></i>
                            <span class="text nav-text">Inicio</span>
                        </a>
                    </li>

                    <li class="nav-linkds">
                        <a href="PEntrenamiento.jsp">
                            <i class="fa-solid fa-file-invoice icon"></i>
                            <span class="text nav-text">Planes</span>
                        </a>
                    </li>

                    <li class="nav-linkds">
                        <a href="#">
                            <i class="fa-solid fa-ruler icon"></i>
                            <span class="text nav-text">Tipo medida</span>
                        </a>
                    </li>

                    <li class="nav-linkds">
                        <a href="#">
                            <i class="fa-solid fa-person-walking icon"></i>
                            <span class="text nav-text">Tipo ejercicios</span>
                        </a>
                    </li>

                    <li class="nav-linkds">
                        <a href="listarUsuarios.jsp">
                            <i class="fa-solid fa-person-walking icon"></i>
                            <span class="text nav-text">Listar usuarios</span>
                        </a>
                    </div>
                    </li>

                </ul>
            

            <form method="post" action="Sesiones">
            <div class="bottom-contentds">
                <li class="">
                    <a href="#">
                        <i class='bx bx-log-out icon'></i>
                        <input class="text nav-text" type="submit" value="Cerrar Sesión">
                    </a>
                </li> 
            </div>
        </form>
        </div>

    </nav>

    <section class="home">
        <div class="text-entrenador"> <b> Bienvenido <br> entrenador</b></div>
    </section>

    <script src="./js/script.js"></script>

</body>
</html>