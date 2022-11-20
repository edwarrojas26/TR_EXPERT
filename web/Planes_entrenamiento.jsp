<%@page import="java.util.ArrayList"%>
<%@page import="ModeloDAO.TipoEjercicioDAO"%>
<%@page import="ModeloVO.TipoEjercicioVO"%>
<!DOCTYPE html>
<html lang="en">

    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Planes de entrenamiento</title>
        <link rel="stylesheet" href="css/style_planes.css">
        <link rel="shortcut icon" href="./img/Logo_TR_Expert (2).png" type="image/x-icon">
    </head>

    <body>
        <header class="header">

        <a><img class="logo" src="img/Logo-TR-Expert.svg" alt=""></a>

        <div id="menu-btn" class="fas fa-bars"></div>

        <nav class="navbar">
            <a class="enlace" href="Planes_entrenamiento.jsp">Planes de entrenamiento</a>
            <a class="enlace" href="registrarTipoMedida.jsp">Tipos de medidas</a>
            <a class="enlace" href="tiposEjercicios.jsp">Tipos de ejercicios</a>
            
            <form method="POST" action="Sesiones">
                <input type="submit" class="active" value="Cerrar Sesión">
            </form>
            
        </nav>

    </header>

        <div class="card-container">
            <%  TipoEjercicioVO tejVO = new TipoEjercicioVO();
                TipoEjercicioDAO tejDAO = new TipoEjercicioDAO();
                ArrayList<TipoEjercicioVO> listaTipoEjercicio = tejDAO.listar();
                for (int i = 0; i < listaTipoEjercicio.size(); i++) {

                    tejVO = listaTipoEjercicio.get(i);

            %>


            <div class="cards">
                <h3><%=tejVO.getNombre()%></h3>
                <div class="imagen_entrenamiento"><img src="<%=tejVO.getImg()%>"></div>
                <p>Series: <%=tejVO.getSeries()%></p>
                <p>Repeticiones: <%=tejVO.getRepeticiones()%></p>
                <p>Descansos: <%=tejVO.getDescanso()%></p>
                <p>Peso: <%=tejVO.getPeso()%>Kg</p>
            </div>

            <%}%>

        </div>




        <script src="js/generar_plan.js"></script>
    </body>

</html>