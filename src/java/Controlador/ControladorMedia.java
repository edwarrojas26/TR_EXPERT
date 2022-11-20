package Controlador;

import ModeloDAO.MedidaDAO;
import ModeloDAO.TipoMedidaDAO;
import ModeloDAO.planEntrenamientoDAO;
import ModeloVO.MedidaVO;
import ModeloVO.TipoMedidaVO;
import ModeloVO.planEntrenamientoVO;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author DANIEL SIERRA
 */
@WebServlet(name = "ControladorMedia", urlPatterns = {"/ControladorMedia"})
public class ControladorMedia extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    MedidaVO mediVO = new MedidaVO();
    MedidaDAO mediDAO = new MedidaDAO();

    TipoMedidaVO tiVO = new TipoMedidaVO();
    TipoMedidaDAO tiDAO = new TipoMedidaDAO();

    planEntrenamientoVO plVO = new planEntrenamientoVO();
    planEntrenamientoDAO plDAO = new planEntrenamientoDAO();

    
    String plan;
    String cliente;
    String parte;
    String valorI;
    
    List<MedidaVO> lista = new ArrayList<>();

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        /*String idMedida = request.getParameter("txtMedida");
            String idPlanFk = request.getParameter("txtIdPlan");
            String idClienteFk = request.getParameter("txtIdCliente");
            String CodigoFk = request.getParameter("txtCodigo");
            String valorI = request.getParameter("txtIdVI");
            String valorF = request.getParameter("txtIdVF");*/
        String inicial = request.getParameter("inicial");
        String finalizado = request.getParameter("final");

        int opcion = Integer.parseInt(request.getParameter("opcion"));

        /*MedidaVO medVO = new MedidaVO(idPlanFk, idClienteFk, CodigoFk, valorI, valorF);

        MedidaDAO medDAO = new MedidaDAO(medVO);*/
        switch (opcion) {

            /*case 1 :
                
                TipoMedidaDAO tiMedDAO = new TipoMedidaDAO();
                ArrayList<TipoMedidaVO> listaTipoMedidaTI = tiMedDAO.listarTI();
                for (int i = 0; i < listaTipoMedidaTI.size(); i++) {
                    
                    MedidaDAO mediDAO = new MedidaDAO();
                                    
                    MedidaVO mediVO = new MedidaVO();
                    mediVO.setIdPlanFk(idPlanFk);                   
                    mediVO.setCodigoFk(CodigoFk);
                    mediVO.setValorI(valorI);
                    mediVO.setValorF(valorF);
                    mediVO.setIdClienteFk(idClienteFk);
                    
                   
              
                if (mediDAO.agregarRegistroMedida(mediVO)){
                    request.setAttribute("mensajeExito", "Medidas registradas correctamente REGISTRADO EXITOSAMENTE");
                    request.getRequestDispatcher("moduloCliente.jsp").forward(request, response);
                }else {
                    request.setAttribute("mensajeError", "ERROR AL REGISTRAR LAS MEDIDAS");
                    request.getRequestDispatcher("registrarMedidas.jsp").forward(request, response);
                }
                } 
                 
                
            break;*/
            case 1:

                String idCliente = request.getParameter("idCliente");
                plVO.setIdCliente(idCliente);
                plVO = plDAO.consultarCliente(idCliente);

                request.setAttribute("plVO", plVO);
                request.setAttribute("lista", lista);
                request.getRequestDispatcher("registrarmedidas_prueba.jsp").forward(request, response);

                break;

            case 2:

                String Codigo = request.getParameter("codigoParte");
                tiVO.setCodigo(Codigo);
                tiVO = tiDAO.consultarParte(Codigo);

                request.setAttribute("tiVO", tiVO);
                request.setAttribute("plVO", plVO);
                request.setAttribute("lista", lista);
                request.getRequestDispatcher("registrarmedidas_prueba.jsp").forward(request, response);

                break;

           

            case 4:
               
                plan = request.getParameter("idPlan");
                cliente = request.getParameter("idClienteFK");
                parte = request.getParameter("codigoParte");
                valorI = request.getParameter("inicial");
                
                mediVO = new MedidaVO();
                
                mediVO.setIdPlanFk(plan);
                mediVO.setIdClienteFk(cliente);
                mediVO.setCodigoFk(parte);
                mediVO.setValorI(valorI);
                lista.add(mediVO);
               request.setAttribute("plVO", plVO);
               request.setAttribute("lista", lista);
                 request.getRequestDispatcher("registrarmedidas_prueba.jsp").forward(request, response);
                break;
                
            case 5:
                
                 for (int i = 0; i < lista.size(); i++) {
                    mediVO = new MedidaVO();

                    mediVO.setIdPlanFk(lista.get(i).getIdPlanFk());
                    mediVO.setIdClienteFk(lista.get(i).getIdClienteFk());
                    mediVO.setCodigoFk(lista.get(i).getCodigoFk());
                    mediVO.setValorI(lista.get(i).getValorI());

                    /*asignarDAO.registrarCISI(asiVO);*/
                    if (mediDAO.registrarMedida(mediVO)) {
                        request.setAttribute("mensajeExito", "medida registrada Correctamente");
                        request.getRequestDispatcher("moduloCliente.jsp").forward(request, response);
                    } else {
                        request.setAttribute("mensajeError", "medida no registrada");
                        request.getRequestDispatcher("registrarmedidas_prueba.jsp").forward(request, response);
                    }

                }

                lista = new ArrayList<>();
                request.getRequestDispatcher("registrarmedidas_prueba.jsp").forward(request, response);
                
                
                break;
                
            case 6:
                if (mediDAO.actualizarRegistro()) {
                    request.setAttribute("mensajeExito", "Ejercicio actualizado correctamente");
                    request.getRequestDispatcher("PEntrenamiento.jsp").forward(request, response);
                } else {
                    request.setAttribute("mensajeError", "El ejercicio no se actualizo correctamente");
                    request.getRequestDispatcher("actualizarMedida.jsp").forward(request, response);
                }
                break;

            /*case 3:
                
                /*String idMedidaFKP = request.getParameter("txtIdPlanFKP");
                mediVO.setCodigoFk(idMedidaFKP);
                
                mediVO = mediDAO.agregarRegistroMedida(idMedidaFKP);
                
            break*/
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
