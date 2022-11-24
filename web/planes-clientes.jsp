<%@page import="java.util.ArrayList"%>
<%@page import="ModeloDAO.planEntrenamientoDAO"%>
<%@page import="ModeloVO.planEntrenamientoVO"%>
<%@page import="ModeloVO.RolVO"%>
<%@page import="ModeloDAO.RolDAO"%>
<%@page import="ModeloVO.UsuarioVO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@include file="Sesiones.jsp"%>
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

                    <ul class="menu-linksds">
                        <li class="nav-linkds">
                            <a href="moduloEntrenador.jsp">
                                <i class='bx bx-home-alt icon' ></i>
                                <span class="text nav-text">Inicio</span>
                            </a>
                        </li>

                        <li class="nav-linkds">
                            <a href="#">
                                <i class="fa-solid fa-file-invoice icon"></i>
                                <span class="text nav-text">Planes</span>
                            </a>
                        </li>

                        <li class="nav-linkds">
                            <a href="">
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
                        </li>
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

                </div>
            </form>
                    
            </div>
            
    
    
        </nav>

        <section class="home">

            <h3 class="pb-2">Listado usuarios</h3>

            <div>
                <form method="POST" action="GenerarPDFPlanEntrenamiento.jsp" target="_black" class="freportes">
                    <input type="submit" value="Generar Reporte PDF" class="btn btn-success">
                </form>
            </div>
            <br>
            <div class="container">
                <div class="row">
                    <div class="col-lg-12">
                        <div class="table-responsive">        
                            <table id="example" class="table table-striped table-secondary" style="width:100%">

                                <thead>

                                    <tr class="bg-danger">
                                        <th class="bg-danger">Codigo plan</th>
                                        <th class="bg-danger">Codigo Cliente</th>
                                        <th class="bg-danger">Entrenador</th>
                                        <th class="bg-danger">Observaciones</th>
                                        <th class="bg-danger">Acciones</th>
                                        <th class="bg-danger">Acciones</th>
                                    </tr>

                                </thead>

                                <%  planEntrenamientoVO planVO = new planEntrenamientoVO();
                                    planEntrenamientoDAO planDAO = new planEntrenamientoDAO();
                                    ArrayList<planEntrenamientoVO> listUsuarioPl = planDAO.listarUsuariosPlan();
                                    for (int i = 0; i < listUsuarioPl.size(); i++) {

                                        planVO = listUsuarioPl.get(i);

                                %>

                                <tr>
                                    <td><%=planVO.getIdPlan()%></td>
                                    <td><%=planVO.getIdCliente()%></td>
                                    <td><%=planVO.getIdEntrenador()%></td>
                                    <td><%=planVO.getObservaciones()%>
                                    <td>
                                        <form method="post" action="Usuario">
                                            <input id="eliminar" class="btn btn-warning" type="submit" value="Inhabilitar">
                                            <input type="hidden" name="txtNumDoc" value="<%=planVO.getIdPlan()%>">
                                            <input type="hidden" value="2" name="opcion">
                                        </form>
                                    </td>
                                    <td>
                                        <form method="post" action="Usuario">
                                            <input id="actualizar" class="btn btn-primary" type="submit" value="Actualizar">
                                            <input type="hidden" name="txtNumDoc" value="<%=planVO.getIdPlan()%>">
                                            <input type="hidden" value="4" name="opcion">
                                        </form>
                                    </td>

                                </tr>
                                <%}%>

                            </table>

                        </div>
                    </div> 
                </div>
            </div>
                                <a href="PEntrenamiento.jsp">Nuevo plan de entrenamiento</a>

            <%
                if (request.getAttribute("mensajeError") != null) {%>
            <div class="alert alert-danger" role="alert">
                ${mensajeError}
            </div>
            <% } else { %>
            <div class="alert alert-success" role="alert">
                ${mensajeExito}
            </div>
            <% }%>

        </section>

        <script src="https://code.jquery.com/jquery-3.5.1.js"></script>
        <script src="https://cdn.datatables.net/1.12.1/js/jquery.dataTables.min.js"></script>
        <script src="https://cdn.datatables.net/1.12.1/js/dataTables.bootstrap5.min.js"></script>
        
    <script src="./js/script.js"></script>

        <script src="js/App.js"></script>

        <script src="./js/script.js"></script>


    </body>
</html>