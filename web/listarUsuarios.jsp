<%@page import="java.util.ArrayList"%>
<%@page import="ModeloDAO.UsuarioDAO"%>
<%@page import="ModeloVO.UsuarioVO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="Sesiones.jsp"%>
<%@include file="navbar_entrenador.jsp"%>
<!doctype html>
<html lang="en">

    <head>
        
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">
        <link href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/5.1.3/css/bootstrap.min.css" rel="stylesheet" />
        <link href="https://cdn.datatables.net/1.12.1/css/dataTables.bootstrap5.min.css" rel="stylesheet" />
        <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.1/css/all.min.css" rel="stylesheet">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/css/bootstrap.min.css" rel="stylesheet">
        <link href='https://unpkg.com/boxicons@2.1.1/css/boxicons.min.css' rel='stylesheet'>
        <link href="./img/Logo_TR_Expert (2).png" type="image/x-icon" rel="shortcut icon">
        <link href="./css/style_listarUsuarios.css" rel="stylesheet">
        <link href="./css/styleEntrenador.css" rel="stylesheet">
        
        <script src="https://kit.fontawesome.com/fb993fc4c6.js" crossorigin="anonymous"></script>
        
        <title>Listar usuarios</title>

    </head>

    <body class="">


        <section class="home">

            <h3 class="pb-2">Listado usuarios sin plan de entrenamiento</h3>

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
                                        <th class="bg-danger">Acciones</th>
                                    </tr>

                                </thead>

                                <%  UsuarioVO usuVO = new UsuarioVO();
                                    UsuarioDAO usuDAO = new UsuarioDAO();
                                    ArrayList<UsuarioVO> ListaUsuario = usuDAO.listar();
                                    for (int i = 0; i < ListaUsuario.size(); i++) {

                                        usuVO = ListaUsuario.get(i);

                                %>

                                <tr class="text-center">
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
                                            <input id="actualizar" class="btn btn-primary" type="submit" value="Asignar plan">
                                            <input type="hidden" name="idUsuario" value="<%=usuVO.getIdUsuario()%>">
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



