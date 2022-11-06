<%-- 
    Document   : navbar_entrenador
    Created on : 1/11/2022, 02:41:09 PM
    Author     : edwar
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/css/bootstrap.min.css"
              integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
        <link href='https://unpkg.com/boxicons@2.1.1/css/boxicons.min.css' rel='stylesheet'>
        <script src="https://kit.fontawesome.com/fb993fc4c6.js" crossorigin="anonymous"></script>
        

        <link rel="stylesheet" href="https://unpkg.com/swiper@7/swiper-bundle.min.css" />
        <link href='https://unpkg.com/boxicons@2.1.1/css/boxicons.min.css' rel='stylesheet'>
        <link rel="stylesheet" href=" css/navbar_entrenador.css">
        <title>JSP Page</title>
    </head>
    <body>
        <nav class="sidebar close">
            <header>
                <div class="image-text">
                    <span class="image">
                        <img src="img/Logo_TR_Expert (2).png" alt="">
                    </span>

                    <div class="text logo-text">
                        <span class="name">TR Expert</span>
                    </div>
                </div>

                <i class='bx bx-chevron-right toggle'></i>
            </header>

            <div class="menu-bar">
                <div class="menu">

                    <li class="search-box">
                        <i class="fa-solid fa-magnifying-glass icon"></i>
                        <input type="text" placeholder="Buscar...">
                    </li>

                    <ul class="menu-links">
                        <li class="nav-link">
                            <a href="bienvenido-entrenador.jsp">
                                <i class="fa-solid fa-house icon"></i>
                                <span class="text nav-text">Inicio</span>
                            </a>
                        </li>

                        <li class="nav-link">
                            <a href="Planes_entrenamiento.jsp">
                                <i class="fa-solid fa-file-invoice icon"></i>
                                <span class="text nav-text">Planes</span>
                            </a>
                        </li>

                        <li class="nav-link">
                            <a href="registrarTipoMedida.jsp">
                                <i class="fa-solid fa-ruler icon"></i>
                                <span class="text nav-text">Tipo Medida</span>
                            </a>
                        </li>

                        <li class="nav-link">
                            <a href="tiposEjercicios.jsp">
                                <i class="fa-solid fa-person-walking icon"></i>
                                <span class="text nav-text">Tipo Ejercicios</span>
                            </a>
                        </li>

                        <!-- <li class="nav-link">
                            <a href="#">
                                <i class='bx bx-heart icon'></i>
                                <span class="text nav-text">Likes</span>
                            </a>
                        </li>
    
                        <li class="nav-link">
                            <a href="#">
                                <i class='bx bx-wallet icon'></i>
                                <span class="text nav-text">Wallets</span>
                            </a>
                        </li> -->

                    </ul>
                </div>

                <div class="bottom-content">
                    <li class="">
                        <a href="#">
                            <i class='bx bx-log-out icon'></i>
                            <span class="text nav-text">Salir</span>
                        </a>
                    </li>
                </div>
            </div>

        </nav>
        <script src="js/navbar.js"></script>
    </body>
</html>
