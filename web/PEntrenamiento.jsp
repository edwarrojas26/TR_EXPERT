<%@page import="java.util.ArrayList"%>
<%@page import="ModeloDAO.TipoEjercicioDAO"%>
<%@page import="ModeloVO.TipoEjercicioVO"%>
<%@page import="ModeloVO.RolVO"%>
<%@page import="ModeloDAO.RolDAO"%>
<%@page import="ModeloDAO.EjercicioDAO"%>
<%@page import="ModeloVO.EjercicioVO"%>
<%@include file="Sesiones.jsp"%>
<%@include file="navbar_entrenador.jsp"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">
            
        <link href="https://cdn.datatables.net/1.12.1/css/dataTables.bootstrap5.min.css" rel="stylesheet" />
        <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.1/css/all.min.css" rel="stylesheet">
        <link href="./img/Logo_TR_Expert (2).png" type="image/x-icon" rel="shortcut icon">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">
        <link href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/5.1.3/css/bootstrap.min.css" rel="stylesheet" />
        <link href="https://cdn.datatables.net/1.12.1/css/dataTables.bootstrap5.min.css" rel="stylesheet" />
        <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.1/css/all.min.css" rel="stylesheet">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/css/bootstrap.min.css" rel="stylesheet">
        <link href='https://unpkg.com/boxicons@2.1.1/css/boxicons.min.css' rel='stylesheet'>
        <link href="./css/listar2.css" rel="stylesheet">
        
        <title>Registro de ejercicios en plan</title>
    </head>
    <body>
        
        <section class="home">
            <div class="forms-container">

                <form action="ControladorEjercicio" method="post">
                    
                    <div>
                        <div>

                            <%  RolDAO rolDAO = new RolDAO();
                                RolVO rolVO = new RolVO();

                                rolVO = rolDAO.sesiones(correo);

                                if (rolVO != null) {
                            %>
                            <input type="hidden" value="<%= rolVO.getIdRol()%>" class="btn btn-success">

                            <%}%>
                            <input type="hidden" name="idEntrenadorFK" value="${plVO.getIdEntrenador()}" class="form-control" placeholder="Entrenador FK" >
                            <input type="hidden" name="idCliente" value="${plVO.getIdCliente()}">
                            <button type="submit" name="opcion" value="1" class="btn btn-outline-info">Buscar cliente</button>
                        </div>                           
                        <div class="col-sm-6">
                            <input type="hidden" name="idPlan" value="${plVO.getIdPlan()}" placeholder="codigoPlan" class="form-control">
                        </div>   

                    </div>
                    <br>
                    <div >
                        <label> <b>Código ejercicio</b></label> 
                        <br>  
                        <input type="text" name="codeje">

                        <button type="submit" name="opcion" value="4" class="btn btn-success">agregar a tabla</button>

                    </div>                    
                </form>

            </div>              
            <table id="example" class="table table-striped table-secondary" style="width:100%">
                <thead>
                    <tr class="trtabla">
                        <th>ID</th>
                        <th>Nombre</th>
                        <th>Descripcion</th>
                        <th>Series</th>
                        <th>Repeticiones</th>
                        <th>Descansos</th>                               
                    </tr>
                </thead>
                <tbody>
                    <%  TipoEjercicioVO medVO = new TipoEjercicioVO();
                        TipoEjercicioDAO medDAO = new TipoEjercicioDAO();
                        ArrayList<TipoEjercicioVO> listaTipoMedida = medDAO.listarEjercicio();
                        for (int i = 0; i < listaTipoMedida.size(); i++) {

                            medVO = listaTipoMedida.get(i);

                    %>

                    <tr class="text-center">
                        <td><%=medVO.getIdTE()%></td>
                        <td><%=medVO.getNombre()%></td>
                        <td><%=medVO.getDescricpion()%></td>
                        <td><%=medVO.getSeries()%></td>
                        <td><%=medVO.getRepeticiones()%></td>
                        <td><%=medVO.getDescanso()%></td>

                    </tr>
                    <%}%>
                </tbody>
            </table>
            <table id="example" class="table table-striped table-secondary" style="width:100%">
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

                        </tr>
                    </c:forEach>
                </tbody>
            </table>

        </div>
    </div> 
</div>
</div>
<a href="ControladorEjercicio?opcion=5"><button type="submit" class="btn btn-success">Registrar en tabla</button></a>
</section>


<script src="https://code.jquery.com/jquery-3.5.1.js"></script>
<script src="https://cdn.datatables.net/1.12.1/js/jquery.dataTables.min.js"></script>
<script src="https://cdn.datatables.net/1.12.1/js/dataTables.bootstrap5.min.js"></script>

<script src="js/App.js"></script>

</body>
</html>


