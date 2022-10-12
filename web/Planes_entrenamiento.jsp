<%@page import="java.util.ArrayList"%>
<%@page import="ModeloDAO.TipoEjercicioDAO"%>
<%@page import="ModeloVO.TipoEjercicioVO"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Crear planes de entrenamiento</title>
    <link rel="stylesheet" href="css/style_planes.css">
</head>

<body>
    <header class="header">

        <a><img class="logo" src="img/Logo-TR-Expert.svg" alt=""></a>

        <div id="menu-btn" class="fas fa-bars"></div>

        <nav class="navbar">
            <a class="enlace" href="#home">Planes de entrenamiento</a>
            <a class="enlace" href="#about">Cerrar sesión</a>
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
            <div class="imagen_entrenamiento"></div>
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