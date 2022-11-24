<%@page import="ModeloVO.RolVO"%>
<%@page import="ModeloDAO.RolDAO"%>
<%@page import="ModeloVO.MedidaVO"%>
<%@page import="ModeloDAO.MedidaDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>

        <form action="ControladorMedia" method="post">
            <div >
                <label>Codigo cliente</label>
            </div>
            <div >
                <div >
                    
                    <input type="text" name="idCliente" value="46">

                 

                    <input type="text" name="idClienteFK" value="${plVO.getIdCliente() }" class="form-control" placeholder="Codigo" >
                    <button type="submit" name="opcion" value="1" class="btn btn-outline-info">Buscar</button>
                </div>                           
                <div class="col-sm-6">
                    <input type="text" name="idPlan" value="${plVO.getIdPlan()}" placeholder="codigoPlan" class="form-control">
                </div>   

            </div>


            <div >
                <label>Codigo tipo medida</label>
            </div>
            <div >
                <div >
                    <input type="text" name="codigoParte" value="${tiVO.getCodigo()}" class="form-control" placeholder="Codigo" >
                    <button type="submit" name="opcion" value="2" class="btn btn-outline-info">Buscar</button>
                </div>                           
                <div >
                    <input type="text" name="nombreParte" value="${tiVO.getNombreParte()}" placeholder="Datos Peluquero" class="form-control">
                </div>   

            </div>


            <div >
                <label>inicial</label>
            </div>
            <div >
                <div >
                    <input type="text" name="inicial"  placeholder="inicial">

                </div>                           

                <button type="submit" name="opcion" value="4" class="btn btn-outline-primary">agregar a tabla</button>

            </div>                    
        </form>


        <table border="1px">
            <thead>
                <tr >


                    <th>idplan</th>
                    <th>idcliente</th>
                    <th>codigo</th>           
                    <th>valor1</th>  
                        <%--<th class="accion">ACCION</th>--%>                                  
                </tr>
            </thead>
            <tbody>
                <c:forEach var="list" items="${lista}">
                    <tr class="text-center">



                        <td>${list.getIdPlanFk()}</td>

                        <td>${list.getIdClienteFk()}</td>
                        <td>${list.getCodigoFk()}</td>
                        <td>${list.getValorI()}</td>
                        <td>
                            <form method="post" action="ControladorMedida">
                                <input id="eliminar" class="btn btn-primary" type="submit" value="Actualizar">
                                <input type="hidden" name="txtNumDoc" value="">
                                <input type="hidden" value="6" name="opcion">
                            </form>
                        </td>



                    </tr>
                </c:forEach>

            </tbody>
        </table>





        <a href="ControladorMedia?opcion=5" >Registrar en tabla</a>



    </body>
</html>
