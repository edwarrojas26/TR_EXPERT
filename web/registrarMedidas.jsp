<%@page import="java.util.ArrayList"%>
<%@page import="ModeloDAO.TipoMedidaDAO"%>
<%@page import="ModeloVO.TipoMedidaVO"%>
<!DOCTYPE html>
<html lang="en">
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
                <div id="home" data-tab-content class="active">
                    <div class="container-register">
                        <div class="container-columns">
                            <form class="container-form">
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
                                            <input type="hidden" name="txtCodigo"  value="<%=medVO.getCodigo()%>">
                                            <input type="text" id="input-style">
                                        </div>
                                            
                    <%}%>
                                    </div>
                                </div>

                            </form>
                        </div>
                    </div>
                </div>
                <div id="superior" data-tab-content>
                    <div class="container-register">
                        <div class="container-columns">
                            <form class="container-form">
                                <div class="column">
                                    <div class="columns">
       <%  TipoMedidaVO medVOTS = new TipoMedidaVO();
                    TipoMedidaDAO medDAOTS = new TipoMedidaDAO();
                    ArrayList<TipoMedidaVO> listaTipoMedidaTS = medDAOTS.listarTS();
                    for (int i = 0; i < listaTipoMedidaTS.size(); i++) {

                        medVOTS = listaTipoMedidaTS.get(i);

                %>
                                        <div>
                                            <label><p class="texto-input"><%=medVOTS.getNombreParte()%> (cm)</p></label>
                                            <input type="hidden" name="txtCodigo"  value="<%=medVOTS.getCodigo()%>">
                                            <input type="text" id="input-style">
                                            </label>
                                        </div>
                 <%}%>
                                    </div>
                                </div>

                            </form>
                        </div>
                    </div>
                </div>


                <div id="riesgo" data-tab-content>
                    <div class="container-register">
                        <div class="container-columns">
                            <form class="container-form">
                                <div class="column">
                                    <div class="columns">
        <%  TipoMedidaVO medVOFR = new TipoMedidaVO();
                    TipoMedidaDAO medDAOFR = new TipoMedidaDAO();
                    ArrayList<TipoMedidaVO> listaTipoMedidaFR = medDAOFR.listarFR();
                    for (int i = 0; i < listaTipoMedidaFR.size(); i++) {

                        medVOFR = listaTipoMedidaFR.get(i);

                %>
                                        <div>
                                            <label><p class="texto-input"><%=medVOFR.getNombreParte()%></p></label>
                                            <input type="hidden" name="txtCodigo" value="<%=medVOFR.getCodigo()%>">
                                            <input type="text" id="input-style">
                                        </div>
                                            
                <%}%>
                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>

                <div id="salud" data-tab-content>
                    <div class="container-register">
                        <div class="container-columns">
                            <form class="container-form">
                                <div class="column">
                                    <div class="columns">
            <%  TipoMedidaVO medVOS = new TipoMedidaVO();
                    TipoMedidaDAO medDAOS = new TipoMedidaDAO();
                    ArrayList<TipoMedidaVO> listaTipoMedidaS = medDAOS.listarS();
                    for (int i = 0; i < listaTipoMedidaS.size(); i++) {

                        medVOS = listaTipoMedidaS.get(i);

                %>
                                        <div>
                                            <label><p class="texto-input"><%=medVOS.getNombreParte()%></p></label>
                                            <input type="hidden" name="txtCodigo" value="<%=medVOS.getCodigo()%>">
                                            <input type="text" id="input-style">
                                        </div>

                <%}%>
                                    </div>
                                </div>
                                <div class="ingresar">
                                    <a href="#" class="btn">Enviar</a>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </body>
</html>