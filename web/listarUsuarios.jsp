<%@include file="Sesiones.jsp"%>
<%@page import="java.util.ArrayList"%>
<%@page import="ModeloDAO.UsuarioDAO"%>
<%@page import="ModeloVO.UsuarioVO"%>
<!doctype html>
<html lang="en">

    <head>
        <title>Listar usuarios</title>
        <!-- Required meta tags -->
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <!-- Bootstrap CSS -->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">
        <!--  Datatables  -->
        <link href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/5.1.3/css/bootstrap.min.css" rel="stylesheet" />
        <link href="https://cdn.datatables.net/1.12.1/css/dataTables.bootstrap5.min.css" rel="stylesheet" />
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.1/css/all.min.css" integrity="sha512-MV7K8+y+gLIBoVD59lQIYicR65iaqukzvf/nwasF0nqhPay5w/9lJmVM2hMDcnK1OnMGCdVK+iQrJ7lzPJQd1w==" crossorigin="anonymous" referrerpolicy="no-referrer" />
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/css/bootstrap.min.css"
        integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <link href='https://unpkg.com/boxicons@2.1.1/css/boxicons.min.css' rel='stylesheet'>
    <script src="https://kit.fontawesome.com/fb993fc4c6.js" crossorigin="anonymous"></script>
    
    
        
        <!----===== Boxicons CSS ===== -->
        <link href='https://unpkg.com/boxicons@2.1.1/css/boxicons.min.css' rel='stylesheet'>
        <link rel="shortcut icon" href="./img/Logo_TR_Expert (2).png" type="image/x-icon">
        <link rel="stylesheet" href="./css/style_listarUsuarios.css"/>
        <link rel="stylesheet" href="./css/styleEntrenador.css"/>

    </head>

    <body class="">

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
                            <a href="planes-clientes.jsp">
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

        <section class="home">

            <h3 class="pb-2">Listado usuarios</h3>

            <div>
                <form method="POST" action="GenerarPDF.jsp" target="_black" class="freportes">
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
                                        <th class="bg-danger">Documento</th>
                                        <th class="bg-danger">Tipo de documento</th>
                                        <th class="bg-danger">Nombre</th>
                                        <th class="bg-danger">Apellido</th>
                                        <th class="bg-danger">Edad</th>
                                        <th class="bg-danger">Direccion</th>
                                        <th class="bg-danger">Telefono</th>
                                        <th class="bg-danger">Correo</th>
                                        <th class="bg-danger">Sexo</th>
                                        <th class="bg-danger">Estado</th>
                                        <th class="bg-danger">Inhabilitar</th>
                                        <th class="bg-danger">Actualizar</th>
                                    </tr>

                                </thead>

                                <%  UsuarioVO usuVO = new UsuarioVO();
                                    UsuarioDAO usuDAO = new UsuarioDAO();
                                    ArrayList<UsuarioVO> ListaUsuario = usuDAO.listar();
                                    for (int i = 0; i < ListaUsuario.size(); i++) {

                                        usuVO = ListaUsuario.get(i);

                                %>

                                <tr>
                                    <td><%=usuVO.getNumDoc()%></td>
                                    <td><%=usuVO.getTipoDoc()%></td>
                                    <td><%=usuVO.getNombre()%></td>
                                    <td><%=usuVO.getApellido()%></td>
                                    <td><%=usuVO.getEdad()%></td>
                                    <td><%=usuVO.getDireccion()%></td>
                                    <td><%=usuVO.getTelefono()%></td>
                                    <td><%=usuVO.getCorreo()%></td>
                                    <td><%=usuVO.getSexo()%></td>
                                    <td><%=usuVO.getEstado()%></td>
                                    <td>
                                        <form method="post" action="Usuario">
                                            <input id="eliminar" class="btn btn-warning" type="submit" value="Inhabilitar">
                                            <input type="hidden" name="txtNumDoc" value="<%=usuVO.getNumDoc()%>">
                                            <input type="hidden" value="2" name="opcion">
                                        </form>
                                    </td>
                                    <td>
                                        <form method="post" action="Usuario">
                                            <input id="actualizar" class="btn btn-primary" type="submit" value="Actualizar">
                                            <input type="hidden" name="txtNumDoc" value="<%=usuVO.getNumDoc()%>">
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

    </body>

</html>



