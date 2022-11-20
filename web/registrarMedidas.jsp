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
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta http-equiv="X-UA-Compatible" content="ie=edge">
        <script src="js/formulario-medidas.js" defer></script>
        <link href="css/formulario-medidas.css" rel="stylesheet">
        <title>Tabs</title>
    </head>
    <body style="background-image: url(img/blog-1.jpg)">
        <div class="container">
            <div class="lbl-menu">
                <label data-tab-target="#home" class="tab">Tren inferior</label>
                <label data-tab-target="#superior" class="tab">Tren superior</label>
                <label data-tab-target="#riesgo" class="tab">Factores de riesgo</label>
                <label data-tab-target="#salud" class="tab">Salud / Alimentación</label>
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

                    <input type="hidden" name="txtIdPlan" value="6">
                    <input type="hidden" name="opcion" value="1" >



                    <div id="home" data-tab-content class="active">
                        <div class="container-register">
                            <div class="container-columns">
                                <div class="column">
                                    <div class="columns">


                                        <%  /*TipoMedidaVO medVO = new TipoMedidaVO();
                                            TipoMedidaDAO medDAO = new TipoMedidaDAO();
                                            ArrayList<TipoMedidaVO> listaTipoMedidaTI = medDAO.listarTI();
                                            for (int i = 0; i < listaTipoMedidaTI.size(); i++) {

                                                medVO = listaTipoMedidaTI.get(i);*/

                                        %>             

                                        <div>
                                            <label><p class="texto-input">Muslo Derecho </p></label>
                                            <input type="hidden" name="txtCodigo"  value="1">
                                            <input type="text" name="txtIdVI" id="input-style" >
                                            <input type="hidden" name="txtIdVF" value="0">

                                        </div>
                                        <div>
                                            <label><p class="texto-input">Muslo Izquierdo</p></label>
                                            <input type="hidden" name="txtCodigo"  value="2">
                                            <input type="text" name="txtIdVI" id="input-style" >
                                            <input type="hidden" name="txtIdVF" value="0">

                                        </div>
                                        <div>
                                            <label><p class="texto-input">Pierna Derecha</p></label>
                                            <input type="hidden" name="txtCodigo"  value="3">
                                            <input type="text" name="txtIdVI" id="input-style" >
                                            <input type="hidden" name="txtIdVF" value="0">

                                        </div>
                                        <div>
                                            <label><p class="texto-input">Pierna Izquierda</p></label>
                                            <input type="hidden" name="txtCodigo"  value="4">
                                            <input type="text" name="txtIdVI" id="input-style" >
                                            <input type="hidden" name="txtIdVF" value="0">

                                        </div>
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