<%-- 
    Document   : recuperarContraseña
    Created on : 18/11/2022, 07:45:40 AM
    Author     : DANIEL SIERRA
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="shortcut icon" href="./img/Logo_TR_Expert (2).png" type="image/x-icon">
        <link rel="stylesheet" type="text/css" href="css/style_recuperar_contraseña.css">
        <title>RECUPERAR CONTRASEÑA</title>
    </head>
    <body>

        <h1>Recuperar Contraseña</h1>

        <img src="img/Logo-TR-Expert.svg" alt="">

        <form method="POST" action="Usuario">

            <label>Correo</label>
            <input type="email" name="txtCorreo">
            <label>Nueva Contraseña</label>
            <input type="password" name="txtContrasena">

            <button type="submit">Enviar</button>
            <input type="hidden" value="6" name="opcion">

        </form>

        <div>
            <a href="login.jsp">Regresar</a>
        </div>


        <div>

        </div>

        <div>

        </div>

    </body>
</html>
