<%@page import="ModeloVO.RolVO"%>
<%@page import="ModeloDAO.RolDAO"%>
<%@page import="ModeloVO.UsuarioVO"%>
<%@include file="Sesiones.jsp"%>
<!DOCTYPE html>
<html lang="en">

    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <!----======== CSS ======== -->
        <link rel="stylesheet" href="css/style.css">
        <link rel="stylesheet" href="css/styleEntrenador.css">

        <!----===== Boxicons CSS ===== -->
        <link href='https://unpkg.com/boxicons@2.1.1/css/boxicons.min.css' rel='stylesheet'>
        <link href='https://unpkg.com/boxicons@2.1.1/css/boxicons.min.css' rel='stylesheet'>
        <script src="https://kit.fontawesome.com/fb993fc4c6.js" crossorigin="anonymous"></script>
        <link rel="shortcut icon" href="./img/Logo_TR_Expert (2).png" type="image/x-icon">
        <link rel="stylesheet" type="text/css" href="">
        <title>f medidas</title>
    </head>

    <body>
        <nav class="sidebar close-navd">
            <header>
                <div class="image-textd">


                    <div class="text logod-text">
                        <img src="img/Logo-TR-Expert.svg" width="100%">
                    </div>
                </div>

                <i class='bx bx-chevron-right toggle'></i>
            </header>

            <div class="menu-bardd">
                <div class="menudds">

                    <ul class="menu-linksds">
                        <li class="nav-linkds">
                            <a href="moduloEntrenador.jsp">
                                <i class='bx bx-home-alt icon'></i>
                                <span class="text nav-text">Inicio</span>
                            </a>
                        </li>

                        <li class="nav-linkds">
                            <a href="planes-clientes.jsp">
                                <i class="fa-solid fa-file-invoice icon"></i>
                                <span class="text nav-text">Planes</span>
                            </a>
                        </li>

                        <li class="nav-linkds">
                            <a href="registrarTipoMedida.jsp">
                                <i class="fa-solid fa-ruler icon"></i>
                                <span class="text nav-text">Tipo medida</span>
                            </a>
                        </li>

                        <li class="nav-linkds">
                            <a href="registrarTipoEjercicio.jsp">
                                <i class="fa-solid fa-person-walking icon"></i>
                                <span class="text nav-text">Tipo ejercicios</span>
                            </a>
                        </li>
                        <li class="nav-linkds">
                            <a href="listarUsuarios.jsp">
                                <i class="fa-sharp fa-solid fa-table icon"></i>
                                <span class="text nav-text">Listar usuarios</span>
                            </a>
                        </li>
                        <li class="nav-linkds">
                            <a href="generar_Plan_Entrenamiento.jsp">
                                <i class="fa-solid fa-file-pen icon"></i>
                                <span class="text nav-text">Generar plan</span>
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

        <!-- <form action="" method="post">
            <label for="">Numero medida</label>
            <input type="text">
    
            <label for="">Nombre medida</label>
            <input type="text" readonly>
    
            <label for="">Valor medida</label>
            <input type="text" readonly>
    
            <label for="">Observaciones</label>
            <textarea name="" id="" cols="30" rows="10"></textarea>
    
            <input type="submit" value="Enviar">
            <input type="hidden" name="" value="">
        </form>-->




        <section class="home">
            <section class="contact" id="contact">


                <div class="row">
                    <form action="Planentrenamiento" method="post">
                        <h3 style="color: black">Plan de entrenamiento</h3>
                        <label>Cliente</label>
                        <div class="inputBox">
                            <span class="fas fa-check"></span>
                            <% UsuarioVO usuVO = (UsuarioVO) request.getAttribute("UsuarioSeleccionado");
                                if (usuVO != null) {
                            %>
                            <input type="text" name="idUsuarioCliente" value="<%=usuVO.getIdUsuario()%>"  readonly>
                            <%}%>
                        </div>
                        <label>Entrenador #</label>
                        <%  RolDAO rolDAO = new RolDAO();
                            RolVO rolVO = new RolVO();
                            rolVO = rolDAO.sesiones(correo);

                            if (rolVO != null) {
                        %>
                        <input type="text" name="idUsuarioEntrenador" value="<%= rolVO.getIdRol()%>" readonly>
                        <%}%>

                        <textarea name="observaciones" id="" cols="60" rows="1" style="padding: 2%; border-radius: 5px; border: solid black 1px"></textarea>


                        <input type="submit" value="Crear Plan" class="botonp">
                        <input type="hidden" name="opcion" value="1">
                    </form>

                </div>

            </section>

        </section>
        <script src="script.js"></script>

    </body>

</html>