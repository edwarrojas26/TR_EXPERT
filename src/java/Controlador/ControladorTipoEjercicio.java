/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controlador;

import ModeloDAO.TipoEjercicioDAO;
import ModeloVO.TipoEjercicioVO;
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
@WebServlet(name = "ControladorTipoEjercicio", urlPatterns = {"/Tejercicio"})
public class ControladorTipoEjercicio extends HttpServlet {

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
        String idTE = request.getParameter("txtIdTE");
        String nombreE = request.getParameter("txtNombre");
        String desc = request.getParameter("txtDesc");
        String series = request.getParameter("txtSeries");
        String repeticiones = request.getParameter("txtRepeticiones");
        String descanso = request.getParameter("txtDescanso");
        String peso = request.getParameter("txtPeso");
        int opcion = Integer.parseInt(request.getParameter("opcion"));
        
        TipoEjercicioVO tejVO = new TipoEjercicioVO(idTE, nombreE, desc, series, repeticiones, descanso, peso);
        
        TipoEjercicioDAO tejDAO = new TipoEjercicioDAO(tejVO);
        
        switch (opcion) {

            case 1: //Agregar registro
                if (tejDAO.agregarRegistro()) {
                    request.setAttribute("mensajeExito", "TIPO DE EJERCICIO REGISTRADO CON EXITO");
                    

                } else {
                    request.setAttribute("mensajeError", "ERROR AL REGISTRAR TIPO DE EJERCICIO");
                    
                }
                request.getRequestDispatcher("tiposEjercicios.jsp").forward(request, response);
                
                break;
                
            case 2:
                tejVO = tejDAO.eliminarTipoEjercicio(idTE);
                if (tejVO != null) {
                    /*request.setAttribute("UsuarioSeleccionado", usuVO);*/
                    request.setAttribute("mensajeExito", "SE HA ELIMINADO El TIPO DEJERCICIO EXITOSAMENTE");
                   
                } else {
                    request.setAttribute("mensajeError", "EL TIPO DE EJERCICIO NO SE HA PODIDO ELIMINAR");
                   
                    
                }
                request.getRequestDispatcher("tiposEjercicios.jsp").forward(request, response);
                break;
                
            case 3:
                tejVO = tejDAO.consultarTipoEjercicio(idTE);
                if (tejVO != null) {
                    request.setAttribute("TESeleccion", tejVO);
                    request.getRequestDispatcher("actualizarTipoEjercicio.jsp").forward(request, response);
               
                } else {
                    request.setAttribute("mensajeError", "EL TIPO DE EJERCICIO NO SE ENCUENTRA REGISTRADO");
                    request.getRequestDispatcher("tiposEjercicio.jsp").forward(request, response);
                }
                break;
                
            case 4:
                if (tejDAO.actualizarRegistro()) {
                    request.setAttribute("mensajeExito", "EL TIPO DE EJERCICIO SE ACTUALIZO CORRECTAMENTE");
                    request.getRequestDispatcher("tiposEjercicios.jsp").forward(request, response);
                } else {
                    request.setAttribute("mensajeError", "EL TIPO DE EJERCICIO NO SE HA PODIDO ACTUALIZAR");
                    request.getRequestDispatcher("actualizarTipoEjercicio.jsp").forward(request, response);
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
