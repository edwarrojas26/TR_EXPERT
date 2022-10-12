<%@page import="java.util.ArrayList"%>
<%@page import="ModeloDAO.TipoMedidaDAO"%>
<%@page import="ModeloVO.TipoMedidaVO"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>FORMULARIO DE REGISTRO ZONAS ADICIONALES</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    
    <link href="https://fonts.googleapis.com/css?family=Roboto:300,400,700&display=swap" rel="stylesheet">
    <link href="https://unpkg.com/ionicons@4.5.10-0/dist/css/ionicons.min.css" rel="stylesheet">
    
    <link href="css/style-formulario.css" rel="stylesheet">


</head>
<body>
    
<!-- header section starts-->

<header class="header">

    <a href="#" class="logo"> <span>TR</span>EXPERT </a>

    <div id="menu-btn" class="fas fa-bars"></div>

    <nav class="navbar">
        <a href="bienvenido-entrenador.jsp">Inicio</a>    
    </nav>
 
</header>

<!-- about section starts  -->

<section class="about" id="about">

    <div class="image">
        <img src="img/about-img.jpg" alt="">
    </div>

    <div class="content">
        <br><br>
        <h3 id="ti">MEDIDAS ADICIONALES</h3>
        <div class="box-container">
            <form id="formulario" action="Medida" method="post">

    
                <div class="form-control">
                    <label for="" class="texto-input">Nombre de la zona</label>
                    <input id="numdoc" type="text" name="txtNombreParte">              
                </div>
    
                <div class="form-control">
                    <label for="rh" class="texto-input">Categoría</label><br>
                        <select id="rh" class="texto-input" name="txtCategoria">
                            <option>Seleccionar...</option>
                            <option value="1">Tren superior</option>
                            <option value="2">Tren inferior</option>
                            <option value="3">Salud / Alimentación</option>
                            <option value="4">Factor de riesgo</option>
                        </select>
                    
                    
                    </div>
    
                <input type="submit" value="enviar" onclick="alerta()">
             <input name="opcion" type="hidden" value="1">
            </form>
            
        </div>
</section>

<table>
    
    <thead>
        <tr>
        <td>Código</td>
        <td>Nombre de la zona</td>
        <td>Categoría</td>
        <td colspan="2">Acciones</td>
        </tr>
    </thead>

    <%  TipoMedidaVO medVO = new TipoMedidaVO();
                    TipoMedidaDAO medDAO = new TipoMedidaDAO();
                    ArrayList<TipoMedidaVO> listaTipoMedida = medDAO.listar();
                    for (int i = 0; i < listaTipoMedida.size(); i++) {

                        medVO = listaTipoMedida.get(i);

                %>
    <tr>
        <td><%=medVO.getCodigo()%></td>
        <td><%=medVO.getNombreParte()%></td>
        <td><%=medVO.getCategoria()%></td>
        
        <form method="post" action="Medida">
                        <td><input class="btn btn-success" type="submit" value="Eliminar"></td>
                        <input type="hidden" name="txtCodigo" value="<%=medVO.getCodigo()%>">
                        <input type="hidden" value="2" name="opcion">
                    </form>
                
                
                
                
                    <form method="post" action="Medida">
                        <td><input class="btn btn-success" type="submit" value="Actualizar"></td>
                        <input type="hidden" name="txtCodigo" value="<%=medVO.getCodigo()%>">
                        <input type="hidden" value="3" name="opcion">
                    </form>
        
        <%}%>
        
    </tr>
</table>
        
        <%
            if (request.getAttribute("mensajeError") != null) {%>
        <div class="alert alert-danger" role="alert">
            ${mensajeError}
        </div>
        <% } else { %>
        <div class="alert alert-success" role="alert">
            ${mensajeExito}
        </div>
        <% }%>
</body>
</html>