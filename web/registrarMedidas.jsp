<%@page import="ModeloVO.RolVO"%>
<%@page import="ModeloDAO.RolDAO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="ModeloDAO.TipoMedidaDAO"%>
<%@page import="ModeloVO.TipoMedidaVO"%>
<%@include file="Sesiones.jsp"%>
<!DOCTYPE html>
<html lang="es">
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="ie=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        
        <link href="css/formulario-medidas.css" rel="stylesheet">
        
        <script src="js/formulario-medidas.js" defer></script>
        
        <title>Tabs</title>
    </head>
    <body style="background-image: url(img/blog-1.jpg)">
        <div class="container">
            <div class="lbl-menu">
                <label data-tab-target="#home" class="tab">Tren inferior</label>
                <label data-tab-target="#superior" class="tab">Tren superior</label>
                <label data-tab-target="#riesgo" class="tab">Factores de riesgo</label>
                <label data-tab-target="#salud" class="tab">Salud / Alimentaci?n</label>
            </div>

            <div class="tab-content">

                <form method="post" class="container-form" action="ControladorMedia"> 

                    <%                                    RolDAO rolDAO = new RolDAO();
                        RolVO rolVO = new RolVO();

                        rolVO = rolDAO.sesiones(correo);

                        if (rolVO != null) {
                    %>
                    <input type="hidden" name="txtIdCliente" value="<%= rolVO.getIdRol()%>">

                    <%}%>  

                    <input type="hidden" name="txtIdPlan" value="3">
                    <input type="hidden" name="opcion" value="1" >



                    <div id="home" data-tab-content class="active">
                        <div class="container-register">
                            <div class="container-columns">
                                <div class="column">
                                    <div class="columns">


                                        <%  TipoMedidaVO medVO = new TipoMedidaVO();
                                            TipoMedidaDAO medDAO = new TipoMedidaDAO();
                                            ArrayList<TipoMedidaVO> listaTipoMedidaTI = medDAO.listarTI();
                                            for (int i = 0; i < listaTipoMedidaTI.size(); i++) {

                                                medVO = listaTipoMedidaTI.get(i);

                                        %>             

                                        <div>
                                            <label><p class="texto-input"><%=medVO.getNombreParte()%> (cm)</p></label>
                                            <input type="text" name="txtCodigo"  value="<%=medVO.getCodigo()%>">
                                            <input type="text" name="txtIdVI" id="input-style" >
                                            <input type="hidden" name="txtIdVF" value="0">
                                            <%}%>
                                        </div>

                                        <input type="hidden" name="opcion" value="1">

                                    </div>
                                </div>
                                <input type="submit" value="Enviar">
                            </div>
                        </div>

                    </div>    


                </form>

            </div>

        </div>
    </body>
</html>