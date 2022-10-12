<%-- 
    Document   : login
    Created on : 18/09/2022, 11:49:47 AM
    Author     : DANIEL SIERRA
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="x-ua-compatible" content="ie=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href=" ./css/login.css">
        <title>JSP Page</title>
    </head>
    <body>

        <form method="post" action="Usuario">

            <div class="container">
                <div class="brand-logo"></div>
                <div class="brand-title">Iniciar Sesión</div>
                <div class="inputs">
                    <label>Usuario</label>
                    <input type="email" name="txtCorreo" placeholder="User98@*/" required/>
                    <label>Contraseña</label>
                    <input type="password"  placeholder="" required/>
                    <button type="submit">Ingresar</button>
                    <input type="hidden" value="5" name="opcion">
                </div>
            </div>

        </form><br>

        <%
            if (request.getAttribute("mensajeError") != null) {%>
            <div class="mensaje-error">
            ${mensajeError}
            </div>
        <% } else { %>
        ${mensajeExito}
        <% }
        %>

    </body>
</html>
