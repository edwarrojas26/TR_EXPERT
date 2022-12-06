<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous"></script>
        <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@300;400&display=swap" rel="stylesheet">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
        <link rel="stylesheet" href="./css/stylemodal.css">
        <link href="./img/Logo_TR_Expert (2).png" type="image/x-icon" rel="shortcut icon">

        <title>Registrar Tipo ejercicio</title>
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
        </style>

    <body>
        <section class="modal">

            <%if (request.getAttribute("mensajeError") != null) {%>
            <div class="error" role="alert">
                ${mensajeError}
            </div>
            <% } else { %>
            <div class="accept" role="alert">
                ${mensajeExito}
            </div>
            <% }%>

            <div class="modal-container">
                <div class="center">
                    <h1 id="titulo-modal">Registrar nuevo ejercicio</h1>
                    <form method="post" action="Tejercicio">


                        <!-- Small input -->

                        <label> <b>Nombre ejercicio</b> </label><br>
                        <input class="form-control" type="text" name="txtNombre">

                        <label> <b>Descripcion</b> </label><br>
                        <input class="form-control" type="text" name="txtDesc">

                        <label> <b>Series</b> </label><br>
                        <input class="form-control" type="text" name="txtSeries">

                        <label> <b>Repeticiones</b> </label><br>
                        <input class="form-control" type="text" name="txtRepeticiones">

                        <label> <b>Descansos</b> </label><br>
                        <input class="form-control" type="text" name="txtDescanso">

                        <label> <b>Peso</b> </label><br>
                        <input class="form-control" type="text" name="txtPeso">

                        <input type="hidden" value="1" name="opcion">
                        <br>
                        <br>
                        <div class="modal-footer">
                            <a href="registrarTipoEjercicio.jsp"><button type="button" class="btn btn-danger">Cerrar</button></a> 
                            <input type="submit" class="btn btn-success" value="Agregar">
                        </div>
                    </form>
                </div>
                <a href="./registrarTipoEjercicio.jsp" class="close">&times;</a>
            </div>
        </section>
    </body>
</html>