<%@page import="ModeloDAO.TipoMedidaDAO"%>
<%@page import="ModeloVO.TipoMedidaVO"%>
<%@page import="java.util.ArrayList"%>
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
    
    <style>
            .error {
                display: flex;
                justify-content: center;
                background-color: red; 
                color: white; 
                z-index: 100; 
                width: 320px;
                height: 25px;
                padding: 1px;
                border-radius: 5px;
                position: absolute;
                margin-left: 38%;
            }

            .accept {
                display: flex;
                justify-content: center;
                background-color: green; 
                color: white; 
                z-index: 100; 
                width: auto;
                height: 25px;
                padding: 1px;
                border-radius: 5px;
                position: absolute;
                margin-left: 38%;
            }
        </style>

    <body class="">


        <section class="home">
             <%if (request.getAttribute("mensajeError") != null) {%>
            <div class="error" role="alert">
                ${mensajeError}
            </div>
            <% } else { %>
            <div class="accept" role="alert">
                ${mensajeExito}
            </div>
            <% }%>

            <button><a href="./ventana-modal.jsp" class="btn btn-success">Agregar</a></button>
            <br> <br>
            <div class="container">
                <div class="row">
                    <div class="col-lg-12">
                        <div class="table-responsive">        
                            <table id="example" class="table table-striped table-secondary" style="width:100%">

                                <thead>

                                    <tr class="bg-danger">
                                        <th class="bg-danger">ID</th>
                                        <th class="bg-danger">Nombre</th>
                                        <th class="bg-danger">Categoria</th>
                                    </tr>

                                </thead>

                                <%  TipoMedidaVO ejeVO = new TipoMedidaVO();
                                    TipoMedidaDAO ejeDAO = new TipoMedidaDAO();
                                    ArrayList<TipoMedidaVO> listaTipoEjercicio = ejeDAO.listar();
                                    for (int i = 0; i < listaTipoEjercicio.size(); i++) {

                                        ejeVO = listaTipoEjercicio.get(i);

                                %>

                                <tr class="text-center">
                                    <td><%=ejeVO.getCodigo()%></td>
                                    <td><%=ejeVO.getNombreParte()%></td>
                                    <td><%=ejeVO.getCategoria()%></td>
                                </tr>
                                <%}%>

                            </table>

                        </div>
                    </div> 
                </div>
            </div>

            <!--<%
                if (request.getAttribute("mensajeError") != null) {%>
             <div class="alert alert-danger" role="alert">
            ${mensajeError}
        </div>
            <% } else { %>
            <div class="alert alert-success" role="alert">
            ${mensajeExito}
        </div>
            <% }%>
            --> 
        </section>

        <script src="https://code.jquery.com/jquery-3.5.1.js"></script>
        <script src="https://cdn.datatables.net/1.12.1/js/jquery.dataTables.min.js"></script>
        <script src="https://cdn.datatables.net/1.12.1/js/dataTables.bootstrap5.min.js"></script>

        <script src="./js/script.js"></script>

        <script src="js/App.js"></script>

    </body>

</html>



