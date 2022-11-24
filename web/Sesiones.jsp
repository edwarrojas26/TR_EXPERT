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
    String numDoc = "", tipoDoc = "", nombre = "", apellido = "", edad = "", fechaNacimiento = "", direccion = "", telefono = "", correo = "", TS = "", EPS = "", alergia = "", sexo = "";

    if (buscarSesion.getAttribute("datosUsuario") == null) {
        request.getRequestDispatcher("login.jsp").forward(request, response);
    } else {
        UsuarioVO usuVO = (UsuarioVO) buscarSesion.getAttribute("datosUsuario");

        numDoc = usuVO.getNumDoc();
        tipoDoc = usuVO.getTipoDoc();
        nombre = usuVO.getNombre();
        apellido = usuVO.getApellido();
        fechaNacimiento = usuVO.getFechaNacimiento();
        edad = usuVO.getEdad();
        direccion = usuVO.getDireccion();
        telefono = usuVO.getTelefono();
        correo = usuVO.getCorreo();
        TS = usuVO.getTS();
        EPS = usuVO.getEPS();
        alergia = usuVO.getAlergia();
        sexo = usuVO.getSexo();

    }
%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="shortcut icon" href="./img/Logo_TR_Expert (2).png" type="image/x-icon">
    </head>


</html>
