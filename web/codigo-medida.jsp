<%-- 
    Document   : cliente
    Created on : 18/09/2022, 12:08:07 PM
    Author     : DANIEL SIERRA
--%>

<%@page import="ModeloDAO.RolDAO"%>
<%@page import="ModeloVO.RolVO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="ModeloDAO.TipoMedidaDAO"%>
<%@page import="ModeloVO.TipoMedidaVO"%>
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
        <link rel="shortcut icon" href="./img/Logo_TR_Expert (2).png" type="image/x-icon">
        <link rel="stylesheet" href="./css/styleCodigoMedida.css">


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
                            <a href="moduloCliente.jsp">
                                <i class='bx bx-home-alt icon' ></i>
                                <span class="text nav-text">Inicio</span>
                            </a>
                        </li>

                        <li class="nav-linkds">
                            <a href="#">
                                <i class="fa-solid fa-ruler icon"></i>
                                <span class="text nav-text">Registrar medidas</span>
                            </a>
                        </li>

                        <li class="nav-linkds">
                            <a href="miplan.jsp">
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
            <div class="forms-container">
                <form action="ControladorMedia" method="post">
                    <%  RolDAO rolDAO = new RolDAO();
                        RolVO rolVO = new RolVO();

                        rolVO = rolDAO.sesiones(correo);

                        if (rolVO != null) {
                    %>
                    <input type="hidden" name="idCliente" value="<%= rolVO.getIdRol()%>">

                    <%}%> 
                    <input type="hidden" name="idClienteFK" value="${plVO.getIdCliente() }" class="form-control" placeholder="Codigo" >
                    <button type="submit" name="opcion" value="1" class="btn btn-outline-info">Buscar</button>
                    <input type="hidden" name="idPlan" value="${plVO.getIdPlan()}" placeholder="codigoPlan" class="form-control">

                    <br>
                    <img src="img/Logo-TR-Expert.svg" width="30%">

                    <!--Registro de medidas de usuario-->
                    <label for="">Código medida</label>
                    <div class="input-field">
                        <i class="fa-solid fa-ruler icon"></i>
                        <input type="number" name="codigoParte"  placeholder="Ingresa el código de la medida" />
                    </div>
                    <label for="">Valor</label>
                    <div class="input-field">
                        <i class="fa-solid fa-ruler icon"></i>
                        <input type="number" name="inicial" placeholder="Ingresa el valor de la medida" />
                    </div>
                    <input type="hidden" value="4" name="opcion">
                    <div class="boton">       
                        <div class="formulario__grupo formulario__grupo-btn-enviar">
                            <input type="submit" class="formulario__btn" value="Guardar">
                        </div>
                    </div> 
                </form>
            </div>
            <br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
                <table class="table">
                    <thead class="thead-dark">
                      <tr>
                        <th scope="col">ID Tipo medida</th>
                        <th scope="col">Nombre medida</th>
                      </tr>
                    </thead>
                    <tbody>
                        <%
                            TipoMedidaVO medVO = new TipoMedidaVO();
                            TipoMedidaDAO medDAO = new TipoMedidaDAO();
                            ArrayList<TipoMedidaVO> listaTipoMedida = medDAO.listar();
                            for (int i = 0; i < listaTipoMedida.size(); i++) {

                                medVO = listaTipoMedida.get(i);

                        %>
                      <tr>
                        <th scope="row"><%=medVO.getCodigo()%></th>
                        <td><%=medVO.getNombreParte()%></td>
                      </tr>
                      <%}%>
                    </tbody>
                  </table><br><br><br><br><br><br>
                  
                  <table class="table">
                    <thead class="thead-dark">
                        
                      <tr>
                        <th scope="col">Nombre medida</th>
                        <th scope="col">Valor</th>
                      </tr>
                    </thead>
                    <tbody>
                        <c:forEach var="list" items="${lista}">
                      <tr>
                        <th scope="row">${list.getCodigoFk()}</th>
                        <td>${list.getValorI()}</td>
                      </tr>
                      </c:forEach>
                    </tbody>
                  </table>
                        
                        
                        

            <a href="ControladorMedia?opcion=5" >Registrar en tabla</a>
        </div>
</section>
</section>

<script src="https://cdn.jsdelivr.net/npm/sweetalert2@9"></script>
<!--<script src="js/sweetAlert.js"></script>-->
<script src="./js/script.js"></script>

</body>
</html>