<%@page import="java.util.ArrayList"%>
<%@page import="ModeloDAO.TipoEjercicioDAO"%>
<%@page import="ModeloVO.TipoEjercicioVO"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>FORMULARIO DE REGISTRO ZONAS ADICIONALES</title>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

        <link href="https://fonts.googleapis.com/css?family=Roboto:300,400,700&display=swap" rel="stylesheet">
        <link href="https://unpkg.com/ionicons@4.5.10-0/dist/css/ionicons.min.css" rel="stylesheet">

        <link href="css/style-formulario.css" rel="stylesheet">


    </head>
    <body>

        <!-- header section starts-->
    <header class="header">

        <a><img class="logo" src="img/Logo-TR-Expert.svg" alt=""></a>

        <div id="menu-btn" class="fas fa-bars"></div>

        <nav class="navbar">
            <a class="enlace" href="bienvenido-entrenador.jsp">Inicio</a>    
            <a class="enlace" href="#home">Planes de entrenamiento</a>
            <a class="enlace" href="#about">Cerrar sesión</a>
        </nav>

    </header>

        <!-- about section starts  -->

        <section class="about" id="about">

            <div class="image">
                <img src="img/about-img.jpg" alt="">
            </div>

            <div class="content">
                <br><br>
                <h3 id="ti">TIPOS DE EJERCICIOS</h3>
                <div class="box-container">
                    <form id="formulario" action="Tejercicio" method="post">


                        <div class="form-control">
                            <label for="" class="texto-input">Nombre ejercicio</label>
                            <input id="numdoc" type="text" name="txtNombre">              
                        </div>

                        <div class="form-control">
                            <label for="" class="texto-input">Descripcion</label>
                            <input id="numdoc" type="text" name="txtDesc">              
                        </div>

                        <div class="form-control">
                            <label for="" class="texto-input">Series</label>
                            <input id="numdoc" type="text" name="txtSeries">              
                        </div>

                        <div class="form-control">
                            <label for="" class="texto-input">Repeticiones</label>
                            <input id="numdoc" type="text" name="txtRepeticiones">              
                        </div>

                        <div class="form-control">
                            <label for="" class="texto-input">Descansos</label>
                            <input id="numdoc" type="text" name="txtDescanso">              
                        </div>
                        
                        <div class="form-control">
                            <label for="" class="texto-input">Peso</label>
                            <input id="numdoc" type="text" name="txtPeso">              
                        </div>

                        <input type="submit" value="enviar" onclick="alerta()">
                        <input name="opcion" type="hidden" value="1">
                    </form>

                </div>
        </section>

        <table>

            <thead>
                <tr>
                    <td>iD</td>
                    <td>Nombre</td>
                    <td>Descripcion</td>
                    <td>Series</td>
                    <td>Repeticiones</td>
                    <td>Descansos</td>
                    <td>Peso</td>
                    <td colspan="2">Acciones</td>
                </tr>
            </thead>

            <%  TipoEjercicioVO tejVO = new TipoEjercicioVO();
                TipoEjercicioDAO tejDAO = new TipoEjercicioDAO();
                ArrayList<TipoEjercicioVO> listaTipoEjercicio = tejDAO.listar();
                for (int i = 0; i < listaTipoEjercicio.size(); i++) {

                    tejVO = listaTipoEjercicio.get(i);

            %>
            <tr>
                <td><%=tejVO.getIdTE()%></td>
                <td><%=tejVO.getNombre()%></td>
                <td><%=tejVO.getDescricpion()%></td>
                <td><%=tejVO.getSeries()%></td>
                <td><%=tejVO.getRepeticiones()%></td>
                <td><%=tejVO.getDescanso()%></td>
                <td><%=tejVO.getPeso()%></td>

            <form method="post" action="Tejercicio">
                <td><input class="btn btn-success" type="submit" value="Eliminar"></td>
                <input type="hidden" name="txtIdTE" value="<%=tejVO.getIdTE()%>">
                <input type="hidden" value="2" name="opcion">
            </form>




            <form method="post" action="Tejercicio">
                <td><input class="btn btn-success" type="submit" value="Actualizar"></td>
                <input type="hidden" name="txtIdTE" value="<%=tejVO.getIdTE()%>">
                <input type="hidden" value="3" name="opcion">
            </form>

            <%}%>

        </tr>
    </table>

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
</body>
</html>