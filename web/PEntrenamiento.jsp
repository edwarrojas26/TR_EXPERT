<%@page import="ModeloVO.RolVO"%>
<%@page import="ModeloDAO.RolDAO"%>
<%@page import="ModeloDAO.EjercicioDAO"%>
<%@page import="ModeloVO.EjercicioVO"%>
<%@include file="Sesiones.jsp"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <!-- Bootstrap CSS -->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">
        <link rel="shortcut icon" href="./img/Logo_TR_Expert (2).png" type="image/x-icon">
        <title>JSP Page</title>
    </head>
    <body>

        <form action="ControladorEjercicio" method="post">
            <div >
                <label>Codigo cliente</label>
            </div>
            <div >
                <div >
                    <%  RolDAO rolDAO = new RolDAO();
                        RolVO rolVO = new RolVO();

                        rolVO = rolDAO.sesiones(correo);

                        if (rolVO != null) {
                    %>
                    <input type="text" name="idEntrenador" value="<%= rolVO.getIdRol()%>">

                    <%}%>
                    <input type="hidden" name="idEntrenadorFK" value="${plVO.getIdEntrenador()}" class="form-control" placeholder="Entrenador FK" >
                    <input type="text" name="idCliente" value="${plVO.getIdCliente()}">
                    <button type="submit" name="opcion" value="1" class="btn btn-outline-info">Buscar</button>
                </div>                           
                <div class="col-sm-6">
                    <input type="text" name="idPlan" value="${plVO.getIdPlan()}" placeholder="codigoPlan" class="form-control">
                </div>   

            </div>

            <div >
                <label>Codigo ejercicio</label>   
                <input type="text" name="codeje">

                <button type="submit" name="opcion" value="4" class="btn btn-outline-primary">agregar a tabla</button>

            </div>                    
        </form>


        <table border="1px">
            <thead>
                <tr >
                    <th>idplan</th>
                    <th>idcliente</th>
                    <th>idEjercicio</th>                                  
                </tr>
            </thead>
            <tbody>
                <c:forEach var="list" items="${lista}">
                    <tr class="text-center">
                        <td>${list.getIdPlanFK()}</td>
                        <td>${list.getIdClienteFK()}</td>
                        <td>${list.getIdTipoEjercicioFK()}</td>
                        <td>
                            <form method="post" action="ControladorEjercicio">
                                    <input id="eliminar" class="btn btn-primary" type="submit" value="Actualizar">
                                <input type="hidden" name="txtNumDoc" value="<%=ejeVO.getIdEjercicio()%>">
                                <input type="hidden" value="6" name="opcion">
                            </form>
                        </td>
                        <td>
                            <form method="post" action="ControladorEjercicio">
                                <input id="eliminar" class="btn btn-warning" type="submit" value="Eliminar">
                                <input type="hidden" name="txtNumDoc" value="<%=ejeVO.getIdEjericio()%>">
                                <input type="hidden" value="7" name="opcion">
                            </form>
                        </td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>

        <a href="ControladorEjercicio?opcion=5">Registrar en tabla</a>

    </body>
</html>


