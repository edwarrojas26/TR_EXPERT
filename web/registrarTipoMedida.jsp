<%@page import="java.util.ArrayList"%>
<%@page import="ModeloDAO.TipoMedidaDAO"%>
<%@page import="ModeloVO.TipoMedidaVO"%>
<%@include file="Sesiones.jsp"%>
<!DOCTYPE html>
<html lang="en">

    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>TR Expert</title>

        <!-- font awesome cdn link  -->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css" rel="stylesheet"
              integrity="sha384-gH2yIJqKdNHPEq0n4Mqa/HGKIhSkIHeL5AyhkYV8i59U5AR6csBvApHHNl/vI1Bx" crossorigin="anonymous">
        <script src="https://kit.fontawesome.com/6131ecdde6.js" crossorigin="anonymous"></script>
        <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
        <!-- <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css"> -->

        <!-- custom css file link  -->
        <link rel="stylesheet" href="css/tiposEjercicios.css">

    </head>
    <header>

        <nav>
            <div class="logo">
                <img src="img/Logo-TR-Expert.svg">
                <i class="fa-solid fa-bars hamburguer"></i>
            </div>

            <div class="menu outside"> 
                <a class="item" href="Planes_entrenamiento.jsp">Planes de entrenamiento</a>
                <a class="item" href="registrarTipoMedida.jsp">Tipos de medidas</a>
                <a class="item" href="tiposEjercicios.jsp">Tipos de ejercicios</a>

                <hr class="menu-hr2" noshade="">
                <form method="POST" action="Sesiones">
                    <input type="submit" class="boton" value="Cerrar Sesión">
                </form>


            </div>
        </nav>

    </header>
    <body>
        <br><br>
        <h1 class="titulo">Tipos de medidas</h1>

        <div class="buscar">
            <input type="text" placeholder="Buscar por id" required />


            <div class="lupa">
                <button  type="button" class="boton-modal"><i class="fas fa-search icon" data-toggle="modal" data-target="#exampleModalCenter"></i></button>
            </div>

            <div class="agregar">
                <button  type="button" class="boton-modal" data-toggle="modal" data-target="#exampleModalAreaTri"><i class="fas fa-add icon" data-toggle="modal" data-target="#exampleModalCenter"></i>Agregar</button>
            </div>
        </div>
        <br><br>

        <div class="container">
            <table class="table">
                <thead>
                    <tr>
                        <th>ID</th>
                        <th>Nombre</th>
                        <th>Categoria</th>
                        <th>Acciones</th>
                    </tr>
                </thead>
                <tbody>
                    <%  TipoMedidaVO medVO = new TipoMedidaVO();
                        TipoMedidaDAO medDAO = new TipoMedidaDAO();
                        ArrayList<TipoMedidaVO> listaTipoMedida = medDAO.listar();
                        for (int i = 0; i < listaTipoMedida.size(); i++) {

                            medVO = listaTipoMedida.get(i);

                    %>
                    <tr>
                        <td data-label="ID"><%=medVO.getCodigo()%></td>
                        <td data-label="Nombre"><%=medVO.getNombreParte()%></td>
                        <td data-label="Categoria"><%=medVO.getCategoria()%></td>
                        <td data-label="Acciones">
                            <div class="btn" >
                                <form method="post" action="Medida">
                                    <div class="borrar">
                                        
                                       
                                        <button type="submit"><i class="fas fa-trash icon"></i><button>
                                        <input type="hidden" name="txtCodigo" value="<%=medVO.getCodigo()%>">
                                        <input type="hidden" value="2" name="opcion">
                                    </div>
                                </form>
                            </div>  
                            <div class="btn">
                                <form method="post" action="Medida">
                                    <div class="btn-editar">
                                        
                                        
                                         <button type="submit"><i class="fas fa-edit icon"></i><button>
                                        
                                        <input type="hidden" name="txtCodigo" value="<%=medVO.getCodigo()%>">
                                        <input type="hidden" value="3" name="opcion">
                                    </div>
                                </form>
                            </div>
                        </td>

                    </tr>
                    <%}%>
                </tbody>
            </table>
        </div>
        <!-- Modal login-->
        <div class="color-modal">
            <div class="modal fade" id="exampleModalAreaTri" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
                <div class="modal-dialog modal-dialog-centered" role="document">
                    <span aria-hidden="true">&times;</span>
                    </button>
                </div>

                <div class="center">
                    <h1 id="titulo-modal">Registrar nuevo tipo de medida</h1>
                    <form method="post" action="Medida">

                        <label>Nombre medida</label><br>
                        <input name="txtNombreParte" type="text" required><br><br>

                        <label>Categoria</label><br>
                        <select name="txtCategoria">
                            <option value="1">Tren superior</option>
                            <option value="2">Tren inferior</option>
                            <option value="3">Salud / Alimentación</option>
                            <option value="4">Factor de riesgo</option>
                        </select>
                        <input type="hidden" value="1" name="opcion">
                        <div class="modal-footer">
                            <button type="button" class="btn1 btn-secondary" data-dismiss="modal">Cerrar</button>
                            <input type="submit" class="btn2 btn-success" value="Agregar">
                        </div>
                    </form>
                </div>
            </div>
        </div>

        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/js/bootstrap.bundle.min.js"
                integrity="sha384-A3rJD856KowSb7dwlZdYEkO39Gagi7vIsF0jrRAoQmDKKtQBHUuLZ9AsSv4jD4Xa"
        crossorigin="anonymous"></script>
        <script src="./js/menu-index.js"></script>

    </body>
</html>