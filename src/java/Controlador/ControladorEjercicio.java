package Controlador;

import ModeloDAO.EjercicioDAO;
import ModeloDAO.TipoEjercicioDAO;
import ModeloDAO.planEntrenamientoDAO;
import ModeloVO.EjercicioVO;
import ModeloVO.TipoEjercicioVO;
import ModeloVO.planEntrenamientoVO;
import java.io.IOException;
import java.util.List;
import java.util.ArrayList;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(name = "ControladorEjercicio", urlPatterns = {"/ControladorEjercicio"})
public class ControladorEjercicio extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    EjercicioVO ejeVO = new EjercicioVO();
    EjercicioDAO ejeDAO = new EjercicioDAO();

    TipoEjercicioVO tiEVO = new TipoEjercicioVO();
    TipoEjercicioDAO tiEDAO = new TipoEjercicioDAO();

    planEntrenamientoVO plVO = new planEntrenamientoVO();
    planEntrenamientoDAO plDAO = new planEntrenamientoDAO();

    String plan;
    String cliente;
    String ejercicio;
    List<EjercicioVO> lista = new ArrayList<>();

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");

        int opcion = Integer.parseInt(request.getParameter("opcion"));

        switch (opcion) {
            case 1:

                String idEntrenador = request.getParameter("idEntrenador");
                plVO.setIdEntrenador(idEntrenador);
                plVO = plDAO.consultarEntrenador(idEntrenador);

                request.setAttribute("plVO", plVO);
                request.setAttribute("lista", lista);
                request.getRequestDispatcher("PEntrenamiento.jsp").forward(request, response);

                break;

            case 2:

                String Codigo = request.getParameter("codeje");
                tiEVO.setIdTE(Codigo);
                tiEVO = tiEDAO.consultarEjercicio(Codigo);

                request.setAttribute("tiEVO", tiEVO);
                request.setAttribute("plVO", plVO);
                request.setAttribute("lista", lista);
                request.getRequestDispatcher("PEntrenamiento.jsp").forward(request, response);

                break;

            case 4:

                plan = request.getParameter("idPlan");
                cliente = request.getParameter("idCliente");
                ejercicio = request.getParameter("codeje");
                request.setAttribute("plVO", plVO);

                ejeVO = new EjercicioVO();

                ejeVO.setIdPlanFK(plan);
                ejeVO.setIdClienteFK(cliente);
                ejeVO.setIdTipoEjercicioFK(ejercicio);
                lista.add(ejeVO);

                request.setAttribute("lista", lista);
                request.getRequestDispatcher("PEntrenamiento.jsp").forward(request, response);
                break;

            case 5:

                request.setAttribute("plVO", plVO);

                for (int i = 0; i < lista.size(); i++) {
                    ejeVO = new EjercicioVO();

                    ejeVO.setIdPlanFK((lista.get(i).getIdPlanFK()));
                    ejeVO.setIdClienteFK((lista.get(i).getIdClienteFK()));
                    ejeVO.setIdTipoEjercicioFK((lista.get(i).getIdTipoEjercicioFK()));

                    if (ejeDAO.registrarEjercicio(ejeVO)) {
                        request.setAttribute("mensajeExito", "medida registrada correctamente");
                        request.getRequestDispatcher("moduloEntrenador.jsp").forward(request, response);
                    } else {
                        request.setAttribute("mensajeError", "medida no registrada");
                        request.getRequestDispatcher("PEntrenamiento.jsp").forward(request, response);
                    }

                }

                lista = new ArrayList<>();
                request.getRequestDispatcher("PEntrenamiento.jsp").forward(request, response);

                break;

            case 6:
                if (ejeDAO.actualizarRegistro()) {
                    request.setAttribute("mensajeExito", "Ejercicio actualizado correctamente");
                    request.getRequestDispatcher("PEntrenamiento.jsp").forward(request, response);
                } else {
                    request.setAttribute("mensajeError", "El ejercicio no se actualizo correctamente");
                    request.getRequestDispatcher("actualizarEjercicio.jsp").forward(request, response);
                }
                break;

            case 7:
                if (ejeDAO.actualizarRegistro()) {
                    request.setAttribute("mensajeExito", "Ejercicio eliminado correctamente");
                    request.getRequestDispatcher("listar.jsp").forward(request, response);
                } else {
                    request.setAttribute("mensajeError", "El ejercicio no se ha podido eliminar");
                    request.getRequestDispatcher("PEntrenamiento.jsp").forward(request, response);
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
