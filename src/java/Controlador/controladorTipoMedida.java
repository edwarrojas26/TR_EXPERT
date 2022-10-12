/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controlador;

import ModeloDAO.TipoMedidaDAO;
import ModeloVO.TipoMedidaVO;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author edwar
 */
@WebServlet(name = "controladorTipoMedida", urlPatterns = {"/Medida"})
public class controladorTipoMedida extends HttpServlet {

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
        
        String codigo = request.getParameter("txtCodigo");
        String nparte = request.getParameter("txtNombreParte");
        String categoria = request.getParameter("txtCategoria");
        int opcion = Integer.parseInt(request.getParameter("opcion"));
        
        TipoMedidaVO medVO = new TipoMedidaVO(codigo, nparte, categoria);
        
        TipoMedidaDAO medDAO = new TipoMedidaDAO(medVO);
        
        switch (opcion) {

            case 1: //Agregar registro
                if (medDAO.agregarRegistro()) {
                    request.setAttribute("mensajeExito", "TIPO DE MEDIDA REGISTRADO CON EXITO");
                    request.getRequestDispatcher("registrarTipoMedida.jsp").forward(request, response);

                } else {
                    request.setAttribute("mensajeError", "ERROR AL REGISTRAR TIPO DE MEDIDA");
                    
                }
                
                break;
                
            case 2:
                medVO = medDAO.eliminarTipoMedida(codigo);
                if (medVO != null) {
                    /*request.setAttribute("UsuarioSeleccionado", usuVO);*/
                    request.setAttribute("mensajeExito", "SE HA ELIMINADO LA MEDIDA EXITOSAMENTE");
                    request.getRequestDispatcher("zonasCuerpo.jsp").forward(request, response);
                } else {
                    request.setAttribute("mensajeError", "EL CODIGO YA CORRESPONDE A OTRO TIPO DE MEDIDA");
                    request.getRequestDispatcher("zonasCuerpo.jsp").forward(request, response);
                    
                }
                break;
            case 3:
                medVO = medDAO.consultarTipoMedida(codigo);
                if (medVO != null) {
                    request.setAttribute("TMSeleccion", medVO);
                    request.getRequestDispatcher("actualizarTipoMedida.jsp").forward(request, response);
               
                } else {
                    request.setAttribute("mensajeError", "EL TIPO DE MEDIDA NO SE ENCUENTRA REGISTRADA");
                    request.getRequestDispatcher("zonasCuerpo.jsp").forward(request, response);
                }
                break;
                
            case 4:
                if (medDAO.actualizarRegistro()) {
                    request.setAttribute("mensajeExito", "EL TIPO DE MEDIDA SE ACTUALIZO CORRECTAMENTE");
                    request.getRequestDispatcher("zonasCuerpo.jsp").forward(request, response);
                } else {
                    request.setAttribute("mensajeError", "EL TIPO DE MEDIDA NO SE HA PODIDO ACTUALIZAR");
                    request.getRequestDispatcher("bienvenido-entrenador.jsp").forward(request, response);
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
