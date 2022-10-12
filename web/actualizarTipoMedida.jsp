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
        <a href="#home">Inicio</a>    
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
          
                
                <%
                            TipoMedidaVO medVO = (TipoMedidaVO) request.getAttribute("TMSeleccion");
                            if (medVO != null) {
                        %>
      <form id="formulario" action="Medida" method="post">
                <div class="form-control">
                <label for="txtCodigo" class="texto-input">Código</label>
                <input type="text" name="txtCodigo" value="<%= medVO.getCodigo()%>" readonly>
                </div>
    
                <div class="form-control">
                    <label for="txtNombreParte" class="texto-input">Nombre de la zona</label>
                    <input id="numdoc" type="text" name="txtNombreParte" value="<%= medVO.getNombreParte()%>">               
                </div>
    
                <div class="form-control">
                    <label for="txtCategoria" class="texto-input">Categoría</label><br>
                        <select id="rh" class="texto-input" name="txtCategoria">
                            <option value="<%= medVO.getCategoria()%>"><%= medVO.getCategoria()%></option>
                            <option value="1">Tren superior</option>
                            <option value="2">Tren inferior</option>
                            <option value="3">Salud / Alimentación</option>
                            <option value="4">Factor de riesgo</option>
                          </select>
                    </div>
                    <input type="submit" value="Actualizar">
                    <input name="opcion" type="hidden" value="4">
            </form>
        <% } else {
                                request.getRequestDispatcher("actualizarTipoMedida.jsp").forward(request, response);
                            }%>
        </div>
</section>
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