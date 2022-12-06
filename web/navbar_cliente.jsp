<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/css/bootstrap.min.css" rel="stylesheet">
        <link href='https://unpkg.com/boxicons@2.1.1/css/boxicons.min.css' rel='stylesheet'>
        <link href="https://unpkg.com/swiper@7/swiper-bundle.min.css" rel="stylesheet">
        <link href='https://unpkg.com/boxicons@2.1.1/css/boxicons.min.css' rel='stylesheet'>
        <link href="css/navbar_cliente.css" rel="stylesheet">
        <link href="./img/Logo_TR_Expert (2).png" type="image/x-icon" rel="shortcut icon">
        
        <script src="https://kit.fontawesome.com/fb993fc4c6.js" crossorigin="anonymous"></script>
    </head>
    <body>
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
    </body>
</html>
