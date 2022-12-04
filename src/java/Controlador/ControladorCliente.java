/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controlador;

import ModeloVO.ClienteVO;
import ModeloDAO.ClienteDAO;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Sena
 */
@WebServlet(name = "controladorCliente", urlPatterns = {"/controladorCliente"})
public class ControladorCliente extends HttpServlet {

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
          
       String idCliente = request.getParameter("txtIdCliente");
       String idUsuarioFK = request.getParameter("txtIdUsuario");
       int opcion = Integer.parseInt(request.getParameter("opcion"));
       
       ClienteVO cliVO = new ClienteVO(idCliente, idUsuarioFK);

       ClienteDAO cliDAO = new ClienteDAO(cliVO);
       switch (opcion) {
           case 1: 
               
               cliVO = cliDAO.consultarUsuario(idCliente);
               if(cliVO != null){
                   request.setAttribute("UsuarioSeleccionado", cliVO);
                   request.getRequestDispatcher("generar_Plan_Entrenamiento.jsp").forward(request, response);
               } else {
                   request.setAttribute("mensajeError", "El usuario no se encuentra registrado");
                   request.getRequestDispatcher("listarUsuarios.jsp").forward(request, response);
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
