<%@page import="java.util.ArrayList"%>
<%@page import="ModeloDAO.planEntrenamientoDAO"%>
<%@page import="ModeloVO.planEntrenamientoVO"%>
<%@page import="ModeloVO.RolVO"%>
<%@page import="ModeloDAO.RolDAO"%>
<%@page import="ModeloVO.UsuarioVO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@include file="Sesiones.jsp"%>
<%@include file="navbar_entrenador.jsp"%>
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
        <link href="./css/styleEntrenador1.css" rel="stylesheet">
        <link href='https://unpkg.com/boxicons@2.1.1/css/boxicons.min.css' rel='stylesheet'>
        
        <script src="https://kit.fontawesome.com/fb993fc4c6.js" crossorigin="anonymous"></script>

        <title>Entrenador</title> 
    </head>
    <body>
        <section class="home">

            <h3 class="pb-2"> <b>Listado usuarios</b> </h3>

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
                                        <th class="bg-danger">ID</th>
                                        <th class="bg-danger">Nombre</th>
                                        <th class="bg-danger">ID Entrenador</th>
                                        <th class="bg-danger">Observaciones</th>
                                        <th class="bg-danger">Acciones</th>
                                        <th class="bg-danger">Acciones</th>
                                    </tr>

                                </thead>

                                <%  RolDAO rolDAO = new RolDAO();
                                    RolVO rolVO = new RolVO();
                                    rolVO = rolDAO.sesiones(correo);
                                    if (rolVO != null) {
                                    
                                    
                                    planEntrenamientoVO planVO = new planEntrenamientoVO();
                                    planEntrenamientoDAO planDAO = new planEntrenamientoDAO();
                                    String idEntrenador = rolVO.getIdRol();
                                    ArrayList<planEntrenamientoVO> listUsuarioPl = planDAO.listarUsuariosPlan(idEntrenador);
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
                                <%}%>

                            </table>

                        </div>
                    </div> 
                </div>
            </div>
            <br>
            <div class="freportes">
                <a href="PEntrenamiento.jsp"> <input type="submit" value="Nuevo plan de entrenamiento" class="btn btn-success"></a>
            </div>
            <!--  <%
                if (request.getAttribute("mensajeError") != null) {%>
            <div class="alert alert-danger" role="alert">
                ${mensajeError}
            </div>
            <% } else { %>
            <div class="alert alert-success" role="alert">
                ${mensajeExito}
            </div>
            <% }%>-->

          

        </section>

        <script src="https://code.jquery.com/jquery-3.5.1.js"></script>
        <script src="https://cdn.datatables.net/1.12.1/js/jquery.dataTables.min.js"></script>
        <script src="https://cdn.datatables.net/1.12.1/js/dataTables.bootstrap5.min.js"></script>
        
    <script src="./js/script.js"></script>

        <script src="js/App.js"></script>

        <script src="./js/script.js"></script>


    </body>
</html>