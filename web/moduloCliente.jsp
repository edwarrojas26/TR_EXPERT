<%@page import="ModeloVO.UsuarioVO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="Sesiones.jsp"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">

        <link href="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/css/bootstrap.min.css" rel="stylesheet">
        <link href='https://unpkg.com/boxicons@2.1.1/css/boxicons.min.css' rel='stylesheet'>
        <link href="https://unpkg.com/swiper@7/swiper-bundle.min.css" rel="stylesheet">
        <link href='https://unpkg.com/boxicons@2.1.1/css/boxicons.min.css' rel='stylesheet'>
        <link href="./css/styleModuloCliente.css" rel="stylesheet">
        <link href='https://unpkg.com/boxicons@2.1.1/css/boxicons.min.css' rel='stylesheet'>

        <script src="https://kit.fontawesome.com/fb993fc4c6.js" crossorigin="anonymous"></script>

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
                            <a href="moduloCliente.jsp">
                                <i class='bx bx-home-alt icon' ></i>
                                <span class="text nav-text">Inicio</span>
                            </a>
                        </li>

                        <li class="nav-linkds">
                            <a href="codigo-medida.jsp">
                                <i class="fa-solid fa-ruler icon"></i>
                                <span class="text nav-text">Registrar medidas corporales</span>
                            </a>
                        </li>
                        <li class="nav-linkds">
                            <a href="perfil.jsp">
                                <i class="fa-solid fa-person-walking icon"></i>
                                <span class="text nav-text">Perfil</span>
                            </a>
                        </li>
                    </ul>
                </div>

                </ul>

                <form method="post" action="Sesiones">
                    <div class="bottom-contentds">
                        <li class="">
                            <a href="index.jsp">
                                <i class='bx bx-log-out icon'></i>
                                <input class="cerrar1s" type="submit" value="Cerrar Sesión">
                            </a>
                        </li> 
                    </div>
                </form>

            </div>
        </nav>

        <section class="home">
            <div class="text-entrenador" style="color: #000;"> <b> Bienvenido <br> al gimnasio la candelaria</b></div>
        </section>

        <script src="./js/script.js"></script>

    </body>
</html>