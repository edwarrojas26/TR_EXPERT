<%-- 
    Document   : cliente
    Created on : 18/09/2022, 12:08:07 PM
    Author     : DANIEL SIERRA
--%>

<%@page import="ModeloDAO.TipoEjercicioDAO"%>
<%@page import="ModeloVO.TipoEjercicioVO"%>
<%@page import="ModeloVO.TipoEjercicioVO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="ModeloDAO.TipoMedidaDAO"%>
<%@page import="ModeloVO.TipoMedidaVO"%>
<%@page import="ModeloVO.UsuarioVO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
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
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css" rel="stylesheet"
integrity="sha384-gH2yIJqKdNHPEq0n4Mqa/HGKIhSkIHeL5AyhkYV8i59U5AR6csBvApHHNl/vI1Bx" crossorigin="anonymous">
<script src="https://kit.fontawesome.com/6131ecdde6.js" crossorigin="anonymous"></script>
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>


<link rel="stylesheet" href="https://unpkg.com/swiper@7/swiper-bundle.min.css" />
<link href='https://unpkg.com/boxicons@2.1.1/css/boxicons.min.css' rel='stylesheet'>
    
    <!----======== CSS ======== -->
    <link rel="stylesheet" href="./css/styleEntrenador.css">
    <link rel="stylesheet" href="css/tiposEjercicios.css">
    
    <!----===== Boxicons CSS ===== -->
    <link href='https://unpkg.com/boxicons@2.1.1/css/boxicons.min.css' rel='stylesheet'>
    
    <title>Tipo ejercicio</title> 
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
                            <i class="fa-solid fa-user icon"></i>
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


    <section class="home">

        <div class="buscar">
            <input type="text" placeholder="Buscar por id" required />


            <div class="lupa">
                <button  type="button" class="boton-modal"><i class="fas fa-search icon" data-toggle="modal" data-target="#exampleModalCenter"></i></button>
            </div>

            <div class="agregar">
                <button  type="button" class="boton-modal" data-toggle="modal" data-target="#exampleModalAreaTri"><i class="fas fa-add icon" data-toggle="modal" data-target="#exampleModalCenter"></i>Agregar</button>
            </div>
        </div>
        <br><br>

        <div class="container">
            <table class="table">
                <thead>
                    <tr>
                        <th>ID</th>
                        <th>Nombre</th>
                        <th>Descripcion</th>
                        <th>Series</th>
                        <th>Repeticiones</th>
                        <th>Descansos</th>
                    </tr>
                </thead>
                <tbody>
                    <%  TipoEjercicioVO medVO = new TipoEjercicioVO();
                        TipoEjercicioDAO medDAO = new TipoEjercicioDAO();
                        ArrayList<TipoEjercicioVO> listaTipoMedida = medDAO.listarEjercicio();
                        for (int i = 0; i < listaTipoMedida.size(); i++) {

                            medVO = listaTipoMedida.get(i);

                    %>
                    <tr>
                        <td data-label="ID"><%=medVO.getIdTE()%></td>
                        <td data-label="Nombre"><%=medVO.getNombre()%></td>
                        <td data-label="Categoria"><%=medVO.getDescricpion()%></td>
                        <td data-label="Categoria"><%=medVO.getSeries()%></td>
                        <td data-label="Categoria"><%=medVO.getRepeticiones()%></td>
                        <td data-label="Categoria"><%=medVO.getDescanso()%></td>
                        <td data-label="Acciones">
                            <div class="btn" >
                                <form method="post" action="Medida">
                                    <div class="borrar">
                                        
                                       
                                        <button type="submit"><i class="fas fa-trash icon"></i><button>
                                        <input type="hidden" name="txtCodigo" value="<%=medVO.getIdTE()%>">
                                        <input type="hidden" value="2" name="opcion">
                                    </div>
                                </form>
                            </div>  
                            <div class="btn">
                                <form method="post" action="Medida">
                                    <div class="btn-editar">
                                        
                                        
                                         <button type="submit"><i class="fas fa-edit icon"></i><button>
                                        
                                        <input type="hidden" name="txtCodigo" value="<%=medVO.getIdTE()%>">
                                        <input type="hidden" value="3" name="opcion">
                                    </div>
                                </form>
                            </div>
                        </td>

                    </tr>
                    <%}%>
                </tbody>
            </table>
        </div>
        <!-- Modal login-->
        <div class="color-modal">
            <div class="modal fade" id="exampleModalAreaTri" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
                <div class="modal-dialog modal-dialog-centered" role="document">
                    <span aria-hidden="true">&times;</span>
                    </button>
                </div>

                <div class="center">
                    <h1 id="titulo-modal"></h1>
                    <form method="post" action="Medida">

                        <label>Nombre ejercicio</label><br>
                        <input name="txtNombre" type="text" required><br><br>
                        <label>Descripción</label><br>
                        <input name="txtDesc" type="text" required><br><br>
                        <label>series</label><br>
                        <input name="txtSeries" type="text" required><br><br>
                        <label>Repeticiones</label><br>
                        <input name="txtRepeticiones" type="text" required><br><br>
                        <label>Descansos</label><br>
                        <input name="txtDescanso" type="text" required><br><br>
                        <label>Peso</label><br>
                        <input name="txtPeso" type="text" required><br><br>

                       
                        <input type="hidden" value="1" name="opcion">
                        <div class="modal-footer">
                            <button type="button" class="btn1 btn-secondary" data-dismiss="modal">Cerrar</button>
                            <input type="submit" class="btn2 btn-success" value="Agregar">
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </section>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/js/bootstrap.bundle.min.js"
    integrity="sha384-A3rJD856KowSb7dwlZdYEkO39Gagi7vIsF0jrRAoQmDKKtQBHUuLZ9AsSv4jD4Xa"
crossorigin="anonymous"></script>
    <script src="./js/script.js"></script>

</body>
</html>