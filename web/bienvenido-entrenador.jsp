<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="Sesiones.jsp"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Entrenador</title>

    <!-- font awesome cdn link  -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">

    <link rel="stylesheet" href="https://unpkg.com/swiper@7/swiper-bundle.min.css" />

    <!-- custom css file link  -->
    <link rel="stylesheet" href=" css/styleEntrenador.css">

</head>
<body>
    <header class="header">

        <a><img class="logo" src="img/Logo-TR-Expert.svg" alt=""></a>

        <div id="menu-btn" class="fas fa-bars"></div>

        <nav class="navbar">
            <a class="enlace" href="Planes_entrenamiento.jsp">Planes de entrenamiento</a>
            <a class="enlace" href="registrarTipoMedida.jsp">Zonas del cuerpo</a>
            <a class="enlace" href="tiposEjercicios.jsp">Tipos de ejercicios</a>
            <a class="enlace" href="registrarMedidas.jsp">Registrar medidas</a>
            
            <form method="POST" action="Sesiones">
                <input type="submit" class="active" value="Cerrar Sesión">
            </form>
        </nav>

    </header>


<!-- pricing section ends -->

<!-- trainers section starts  -->


   

<section class="trainers" id="trainers">

 <br><br><br><br>
    <h1 class="titulo-entrenador"><span>Bienvenido entrenador</span></h1>

    <div class="box-container">

        <div class="box">
           <a href="datos-plan.html"><img src="img/entrenador1.jpg" alt=""></a> 
            <div class="content">
                <a href="datos-plan.html"><span>TR EXPERT</span></a>
                    <a href="datos-plan.html"> <div class="share"></a>
                </div>
            </div>
        </div>

        <div class="box">
            <a href="datos-plan.html"><img src="img/entrenador2.jpg" alt=""></a> 
            <div class="content">
                <a href="datos-plan.html"><span>TR EXPERT</span></a>
                <a href="datos-plan.html"> <div class="share"></a>
                    
                   </a>
                </div>
            </div>
        </div>

        
        </div>

    </div>

</section>

</body>
</html>