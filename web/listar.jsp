<%@page import="java.util.ArrayList"%>
<%@page import="ModeloDAO.UsuarioDAO"%>
<%@page import="ModeloVO.UsuarioVO"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>LISTAR</title>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
        <link href="https://fonts.googleapis.com/css?family=Roboto:300,400,700&display=swap" rel="stylesheet">
        <link href="https://unpkg.com/ionicons@4.5.10-0/dist/css/ionicons.min.css" rel="stylesheet">
        <link href="css/listar.css" rel="stylesheet">


    </head>
    <body>

        <!-- header section starts-->

        <header class="header">

            <a href="#" class="logo"> <span>TR</span>EXPERT </a>

            <div id="menu-btn" class="fas fa-bars"></div>

            <nav class="navbar">
                <a href="registrarUsuario.jsp">Inicio</a>    
            </nav>

        </header>
    <body>
            <table>
                <thead>
                    <tr>
                    <td># Documento</td>
                    <td>Tipo de documento</td>
                    <td>Nombre</td>
                    <td>Apellido</td>
                    <td>Fecha Nacimiento</td>
                    <td>Edad</td>
                    <td>Direccion</td>
                    <td>Telefono</td>
                    <td>Correo</td>
                    <td>Tipo de sangre</td>
                    <td>EPS</td>
                    <td>Alergia</td>
                    <td>Estado</td>
                    <td>Sexo</td>
                    <td>Rol</td>
                    <td colspan="2">Acciones</td>
                    </tr>
                </thead>
                <%  UsuarioVO usuVO = new UsuarioVO();
                    UsuarioDAO usuDAO = new UsuarioDAO();
                    ArrayList<UsuarioVO> ListaUsuario = usuDAO.listar();
                    for (int i = 0; i < ListaUsuario.size(); i++) {

                        usuVO = ListaUsuario.get(i);

                %>
                <tr>
                    <td><%=usuVO.getNumDoc()%></td>
                    <td><%=usuVO.getTipoDoc()%></td>
                    <td><%=usuVO.getNombre()%></td>
                    <td><%=usuVO.getApellido()%></td>
                    <td><%=usuVO.getFechaNacimiento()%></td>
                    <td><%=usuVO.getEdad()%></td>
                    <td><%=usuVO.getDireccion()%></td>
                    <td><%=usuVO.getTelefono()%></td>
                    <td><%=usuVO.getCorreo()%></td>
                    <td><%=usuVO.getTS()%></td>
                    <td><%=usuVO.getEPS()%></td>
                    <td><%=usuVO.getAlergia()%></td>
                    <td><%=usuVO.getEstado()%></td>
                    <td><%=usuVO.getSexo()%></td>
                    <td><%=usuVO.getRol()%></td>

               
                    
                    <form method="post" action="Usuario">
                        <td><input id="eliminar" class="btn btn-success" type="submit" value="Inhabilitar"></td>
                        <input type="hidden" name="txtNumDoc" value="<%=usuVO.getNumDoc()%>">
                        <input type="hidden" value="2" name="opcion">
                    </form>
                
                
                
                
                    <form method="post" action="Usuario">
                        <td><input id="actualizar" class="btn btn-success" type="submit" value="Actualizar"></td>
                        <input type="hidden" name="txtNumDoc" value="<%=usuVO.getNumDoc()%>">
                        <input type="hidden" value="4" name="opcion">
                    </form>
                    
           
                </tr>
                                                                <%}%>
            </table>
        </div>
    </body>
</html>




