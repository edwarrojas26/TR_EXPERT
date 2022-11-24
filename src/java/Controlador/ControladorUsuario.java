/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controlador;

import ModeloDAO.RolDAO;
import ModeloDAO.UsuarioDAO;
import ModeloVO.RolVO;
import ModeloVO.UsuarioVO;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import org.apache.commons.codec.digest.DigestUtils;


@WebServlet(name = "ControladorUsuario", urlPatterns = {"/Usuario"})
public class ControladorUsuario extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");

        String idUsuario = request.getParameter("idUsuario");
        String numDoc = request.getParameter("txtNumDoc");
        String tipoDoc = request.getParameter("txtTipoDoc");
        String nombre = request.getParameter("txtNombre");
        String apellido = request.getParameter("txtApellido");
        String fechaNacimiento = request.getParameter("txtFN");
        String edad = request.getParameter("txtEdad");
        String direccion = request.getParameter("txtDireccion");
        String telefono = request.getParameter("txtTelefono");
        String correo = request.getParameter("txtCorreo");
        String TS = request.getParameter("txtTS");
        String EPS = request.getParameter("txtEPS");
        String alergia = request.getParameter("txtAlergias");
        String estado = request.getParameter("txtEstado");
        String sexo = request.getParameter("txtSexo");
        String rol = request.getParameter("txtRol");
        String contrasena = request.getParameter("txtContrasena");
        byte[] encript = DigestUtils.sha256(contrasena);
        String clavecifrada = String.valueOf(encript);
        int opcion = Integer.parseInt(request.getParameter("opcion"));

        UsuarioVO usuVO = new UsuarioVO(idUsuario, numDoc, tipoDoc, nombre, apellido, fechaNacimiento, edad, direccion, telefono, correo, TS, EPS, alergia, estado, sexo, rol, contrasena);

        UsuarioDAO usuDAO = new UsuarioDAO(usuVO);

        switch (opcion) {

            case 1:
                if (usuDAO.agregarRegistro()) {
                    request.setAttribute("mensajeExito", "USUARIO REGISTRADO EXITOSAMENTE");
                    request.getRequestDispatcher("login.jsp").forward(request, response);
                } else {
                    request.setAttribute("mensajeError", "ERROR AL REGISTRAR EL USUARIO");
                    request.getRequestDispatcher("formulario-validaciones.jsp").forward(request, response);
                }
                break;

            case 2:
                usuVO = usuDAO.modificarEstadoUsuario(numDoc);
                if (usuVO != null) {
                    request.setAttribute("mensajeExito", "Se ha modificado el estado exitosamente");
                } else {
                    request.setAttribute("mensajeError", "El usuario no se encuentra registrado");
                    request.getRequestDispatcher("listar.jsp").forward(request, response);
                }
                break;

            case 3:
                if (usuDAO.actualizarRegistro()) {
                    request.setAttribute("mensajeExito", "El usuario se actualizo correctamente");
                    request.getRequestDispatcher("listar.jsp").forward(request, response);
                } else {
                    request.setAttribute("mensajeError", "El usuario no se actualizo correctamente");
                    request.getRequestDispatcher("actualizarUsuario.jsp").forward(request, response);
                }

                break;

            case 4:
                usuVO = usuDAO.consultarUsuario(numDoc);
                if (usuVO != null) {
                    request.setAttribute("UsuarioSeleccionado", usuVO);
                    request.getRequestDispatcher("actualizarUsuario.jsp").forward(request, response);
                } else {
                    request.setAttribute("mensajeError", "El usuario no se encuentra registrado");
                    request.getRequestDispatcher("listar.jsp").forward(request, response);
                }
                break;

            case 5: {
                if (usuDAO.iniciarSesion(correo, contrasena)) {
                    HttpSession misesion = request.getSession(true);
                    usuVO = new UsuarioVO(idUsuario, numDoc, tipoDoc, nombre, apellido, fechaNacimiento, edad, direccion, telefono, correo, TS, EPS, alergia, estado, sexo, rol, contrasena);

                    RolDAO rolDAO = new RolDAO();
                    RolVO rolVO = new RolVO();

                    rolVO = rolDAO.sesiones(correo);

                    String usuid = rolVO.getIdRol();
                    String roltipo = rolVO.getRolTipo();

                    misesion.setAttribute("datosUsuario", usuVO);
                    misesion.setAttribute("idUser", usuid);

                    if (roltipo.equals("Cliente")) {
                        request.getRequestDispatcher("moduloCliente.jsp").forward(request, response);
                    } else if (roltipo.equals("Entrenador")) {
                        request.getRequestDispatcher("moduloEntrenador.jsp").forward(request, response);
                    }
                } else {
                    request.setAttribute("mensajeError", "DATOS DE USUARIO INCORRECTOS");
                    request.getRequestDispatcher("login.jsp").forward(request, response);
                }
            }
            break;

            case 6: {
                if (usuDAO.recuperarContraseña()) {
                    request.setAttribute("mensajeExito", "Contraseña recuperada exitosamente");
                    request.getRequestDispatcher("login.jsp").forward(request, response);
                } else {
                    request.setAttribute("mensajeError", "Datos incorrectos, comprueba los datos ingresados");
                    request.getRequestDispatcher("recuperarContraseña.jsp").forward(request, response);
                }
            }
            break;
            
            case 7:
                usuVO = usuDAO.consultarUsuarioPerfil(idUsuario);
                if (usuVO != null) {
                    request.setAttribute("UsuarioSeleccionado", usuVO);
                    request.getRequestDispatcher("perfil.jsp").forward(request, response);
                } else {
                    request.setAttribute("mensajeError", "El usuario no se encuentra registrado");
                }
                break;
            }
}

// <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
