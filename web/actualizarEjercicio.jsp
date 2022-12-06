<%@include file="Sesiones.jsp"%> 
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="shortcut icon" href="./img/Logo_TR_Expert (2).png" type="image/x-icon">

        <title>Actualizar Ejercicio</title>
    </head>
    <body>
        <h1>Actualizar Ejericio</h1>

        <form method="POST" action="ControladorEjercicio">
            <label>Observaciones</label>
            <input type="text" name="">
            <button type="submit">Enviar</button>
            <input type="hidden" name="opcion" value="">
        </form>

    </body>
</html>
