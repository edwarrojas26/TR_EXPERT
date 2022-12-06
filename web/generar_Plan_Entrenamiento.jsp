<%@page import="ModeloVO.RolVO"%>
<%@page import="ModeloDAO.RolDAO"%>
<%@page import="ModeloVO.UsuarioVO"%>
<%@include file="Sesiones.jsp"%>
<%@include file="navbar_entrenador.jsp"%>
<!DOCTYPE html>
<html lang="en">

    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        
        <link rel="stylesheet" href="css/style.css">
        <link rel="stylesheet" href="css/styleEntrenador.css">
        <link href='https://unpkg.com/boxicons@2.1.1/css/boxicons.min.css' rel='stylesheet'>
        <link href='https://unpkg.com/boxicons@2.1.1/css/boxicons.min.css' rel='stylesheet'>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
        <link href="./img/Logo_TR_Expert (2).png" type="image/x-icon" rel="shortcut icon">
        
        <script src="https://kit.fontawesome.com/fb993fc4c6.js" crossorigin="anonymous"></script>
        
        <title>Registrar Plan de entrenamiento</title>
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

    <body>
       
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
            <section class="contact" id="contact">


                <div class="row">
                    <form action="Planentrenamiento" method="post">
                        <h3 style="color: black">Plan de entrenamiento</h3>
                        <label>Cliente</label>
                        <div class="inputBox">
                            <span class="fas fa-check"></span>
                            <% UsuarioVO usuVO = (UsuarioVO) request.getAttribute("UsuarioSeleccionado");
                                if (usuVO != null) {
                            %>
                            <input type="text" name="idUsuarioCliente" value="<%=usuVO.getIdUsuario()%>"  readonly>
                            <%}%>
                        </div>
                        <%  RolDAO rolDAO = new RolDAO();
                            RolVO rolVO = new RolVO();
                            rolVO = rolDAO.sesiones(correo);

                            if (rolVO != null) {
                        %>
                        <input type="hidden" name="idUsuarioEntrenador" value="<%= rolVO.getIdRol()%>" readonly>
                        <%}%>

                        <textarea name="observaciones" id="" cols="60" rows="1" style="padding: 2%; border-radius: 5px; border: solid black 1px"></textarea>


                        <input type="submit" value="Crear Plan" class="botonp">
                        <input type="hidden" name="opcion" value="1">
                    </form>

                </div>

            </section>

        </section>
        <script src="script.js"></script>

    </body>

</html>