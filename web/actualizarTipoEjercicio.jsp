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

            <a href="#" class="logo"> <span>TR</span>EXPERT </a>

            <div id="menu-btn" class="fas fa-bars"></div>

            <nav class="navbar">
                <a href="bienvenido-entrenador.jsp">Inicio</a>    
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
                    
                    <%
                            TipoEjercicioVO tejVO = (TipoEjercicioVO) request.getAttribute("TESeleccion");
                            if (tejVO != null) {
                        %>
                    <form id="formulario" action="Tejercicio" method="post">
                        
                        <div class="form-control">
                            <label for="" class="texto-input">ID</label>
                            <input id="numdoc" type="text"  value="<%=tejVO.getIdTE()%>" readonly>              
                        </div>

                        <div class="form-control">
                            <label for="" class="texto-input">Nombre ejercicio</label>
                            <input id="numdoc" type="text" name="txtNombre" value="<%=tejVO.getNombre()%>">              
                        </div>

                        <div class="form-control">
                            <label for="" class="texto-input">Descripcion</label>
                            <input id="numdoc" type="text" name="txtDesc" value="<%=tejVO.getDescricpion()%>">              
                        </div>

                        <div class="form-control">
                            <label for="" class="texto-input">Series</label>
                            <input id="numdoc" type="text" name="txtSeries" value="<%=tejVO.getSeries()%>">              
                        </div>

                        <div class="form-control">
                            <label for="" class="texto-input">Repeticiones</label>
                            <input id="numdoc" type="text" name="txtRepeticiones" value="<%=tejVO.getRepeticiones()%>">              
                        </div>

                        <div class="form-control">
                            <label for="" class="texto-input">Descansos</label>
                            <input id="numdoc" type="text" name="txtDescanso" value="<%=tejVO.getDescanso()%>">              
                        </div>
                        
                        <div class="form-control">
                            <label for="" class="texto-input">Peso</label>
                            <input id="numdoc" type="text" name="txtPeso" value="<%=tejVO.getPeso()%>">              
                        </div>

                        <input type="hidden"  name="txtIdTE" value="<%=tejVO.getIdTE()%>">
                        <input type="submit" value="Actualizar">
                        <input name="opcion" type="hidden" value="4">
                        
                    </form>
                    
                    <% } else {
                                request.getRequestDispatcher("actualizarTipoMedida.jsp").forward(request, response);
                            }%>

                </div>
        </section>

        

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