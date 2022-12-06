package Controlador;


import ModeloDAO.planEntrenamientoDAO;
import ModeloVO.planEntrenamientoVO;
import java.io.IOException;
import java.util.ArrayList;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(name = "controladorPlanentrenamiento", urlPatterns = {"/Planentrenamiento"})
public class ControladorPlanentrenamiento extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    
    
    
    ArrayList<planEntrenamientoVO> listap = new ArrayList<>();
    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        String idPlan = request.getParameter("idPlan");
        String idCliente = request.getParameter("idUsuarioCliente");
        String idEntrenador = request.getParameter("idUsuarioEntrenador");
        String observaciones = request.getParameter("observaciones");
        int opcion = Integer.parseInt(request.getParameter("opcion"));
        
        planEntrenamientoVO plVO = new planEntrenamientoVO(idPlan, idCliente, idEntrenador, observaciones);
        planEntrenamientoDAO plDAO = new planEntrenamientoDAO(plVO);
        
        switch (opcion) {
            case 1:
                if(plDAO.registrarPlan()){
                    request.setAttribute("mensajeExito", "Plan registrado exitosamente");
                    request.getRequestDispatcher("listarUsuarios.jsp").forward(request, response);
                  
                    }
                    else {
                    request.setAttribute("mensajeError", "No se ha registrado correctamente");
                    request.getRequestDispatcher("registrarUsuario.jsp").forward(request, response);
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
