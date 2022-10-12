<%-- 
    Document   : sesion
    Created on : 21/09/2022, 07:53:29 PM
    Author     : DANIEL SIERRA
--%>

<%@page import="ModeloVO.UsuarioVO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    response.setHeader("pragma", "No-cache");
    response.setHeader("Cache-control", "no-cache,no-store,must-revalidate");
    response.setDateHeader("Expires", 0);
%>
<%
    HttpSession buscarSesion = (HttpSession) request.getSession();
    String correo = "";
    String idUsuario = "";

    if (buscarSesion.getAttribute("datosUsuario") == null) {
        request.getRequestDispatcher("login.jsp").forward(request, response);
    } else {
        UsuarioVO usuVO = (UsuarioVO) buscarSesion.getAttribute("datosUsuario");
        correo = usuVO.getCorreo();
        idUsuario = usuVO.getIdUsuario();
        
        System.out.println(idUsuario);
    }
%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    </head>
    <body>
        <p>Bienvenido <%=correo%></p>
        <p>Hola: <%=idUsuario%></p>
    </body>
</html>
