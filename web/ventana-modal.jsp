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

    
<body>
    <section class="modal">
        <div class="modal-container">
            <div class="center">
                <h1 id="titulo-modal">Registrar nuevo tipo de medida</h1>
                <form method="post" action="Medida">

                    <label> <b>Nombre medida</b> </label><br>
                    <input name="txtNombreParte" class="form-control form-control-lg" type="text" placeholder="Nombre de la medida"><br><br>
                    <!-- Large input -->

                    <label> <b>Categoria</b> </label><br>
                    <select name="txtCategoria" class="form-control form-control-lg">
                        <option value="1">Elige una opcion...</option>
                        <option value="1">Tren superior</option>
                        <option value="2">Tren inferior</option>
                    </select>
                    <input type="hidden" value="1" name="opcion">
                    <br>
                    <br>
                    <div class="modal-footer">
                       <a href="registrarTipoMedida.jsp"><button type="button" class="btn btn-danger">Cerrar</button></a> 
                        <input type="submit" class="btn btn-success" value="Agregar">
                    </div>
                </form>
            </div>
            <a href="./registrarTipoMedida.jsp" class="close">&times;</a>
        </div>
    </section>
</body>
</html>