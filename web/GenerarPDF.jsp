<%@page import="net.sf.jasperreports.engine.JasperRunManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="Util.ConexionBd"%>
<%@page import="java.util.Map"%>
<%@page import="java.util.HashMap"%>
<%@page import="java.io.File"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        
        <link rel="shortcut icon" href="./img/Logo_TR_Expert (2).png" type="image/x-icon">
        
        <title>PDF Usuarios</title>
    </head>
    <body>

        <%
            File reporte = new File(application.getRealPath("ReporteUsuarios.jasper"));
            Map<String, Object> parametros = new HashMap<String, Object>();

            ConexionBd ConexionBd = new ConexionBd();
            Connection conexion = ConexionBd.obtenerConexion();

            byte[] bytes = JasperRunManager.runReportToPdf(reporte.getPath(), parametros, conexion);
            response.setContentType("application/pdf");
            response.setContentLength(bytes.length);
            ServletOutputStream salida = response.getOutputStream();
            salida.write(bytes, 0, bytes.length);

            salida.flush();
            salida.close();
        %>

    </body>
</html>
