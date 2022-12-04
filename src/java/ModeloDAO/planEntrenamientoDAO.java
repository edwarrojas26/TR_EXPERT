package ModeloDAO;

import ModeloVO.planEntrenamientoVO;
import Util.ConexionBd;
import Util.Crud;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;

public class planEntrenamientoDAO extends ConexionBd implements Crud {

    private Connection conexion;
    private PreparedStatement puente;
    private ResultSet mensajero;

    private boolean operacion = false;
    private String sql;

    private String idPlan = "", idCliente = "", idEntrenador = "",observaciones = "";

    public planEntrenamientoDAO() {
    }

    public planEntrenamientoDAO(planEntrenamientoVO planentrenamientoVO) {
        super();

        try {
            conexion = this.obtenerConexion();

            idPlan = planentrenamientoVO.getIdPlan();
            idCliente = planentrenamientoVO.getIdCliente();
            idEntrenador = planentrenamientoVO.getIdEntrenador();
            observaciones = planentrenamientoVO.getObservaciones();
       

        } catch (Exception e) {
            Logger.getLogger(planEntrenamientoDAO.class.getName()).log(Level.SEVERE, null, e);
        }

    }

    @Override
    public boolean agregarRegistro() {
        try {
            sql = "INSERT INTO medida VALUES (?, ?, ?, ?)";
            puente = conexion.prepareStatement(sql);
            puente.setString(1, idPlan);
            puente.setString(2, idCliente);
            puente.setString(3, idEntrenador);
            puente.setString(4, observaciones);
            puente.executeUpdate();
            operacion = true;
        } catch (SQLException e) {
            Logger.getLogger(planEntrenamientoDAO.class.getName()).log(Level.SEVERE, null, e);
        } finally {
            try {
                this.cerrarConexion();
            } catch (Exception e) {
                Logger.getLogger(planEntrenamientoDAO.class.getName()).log(Level.SEVERE, null, e);
            }
        }
        return operacion;
    }

    @Override
    public boolean actualizarRegistro() {
        try {
            sql = "UPDATE medida SET nombreMedida = ?, valor = ?, descripcion = ?, tipoMedida = ? WHERE idMedida = ?";
            puente = conexion.prepareStatement(sql);
            puente.setString(1, idPlan);
            puente.setString(2, idCliente);;
            puente.setString(3, idEntrenador);
            puente.setString(4, observaciones);
        
            puente.executeUpdate();
            operacion = true;
        } catch (SQLException e) {
            Logger.getLogger(planEntrenamientoDAO.class.getName()).log(Level.SEVERE, null, e);
        } finally {
            try {
                this.cerrarConexion();
            } catch (Exception e) {
                Logger.getLogger(planEntrenamientoDAO.class.getName()).log(Level.SEVERE, null, e);
            }
        }
        return operacion;
    }

    public planEntrenamientoVO consultarPlan(String idPlan) {
        planEntrenamientoVO planVO = null;
        try {
            conexion = this.obtenerConexion();
            sql = "select * from plan_entrenamiento where idPlan = ?";
            puente = conexion.prepareStatement(sql);
            puente.setString(1, idPlan);
            mensajero = puente.executeQuery();
            while (mensajero.next()) {

                planVO = new planEntrenamientoVO(
                        mensajero.getString(1),
                        mensajero.getString(2),
                        mensajero.getString(3),
                        mensajero.getString(4));
            }
        } catch (SQLException e) {
            Logger.getLogger(TipoEjercicioDAO.class.getName()).log(Level.SEVERE, null, e);
        } 
        return planVO;
    }
    
     public planEntrenamientoVO consultarEntrenador(String idEntrenador) {
        planEntrenamientoVO planVO = null;
        try {
            conexion = this.obtenerConexion();
            sql = "SELECT p.idPlan, p.idClienteFk, p.idEntrenadorFK, p.observaciones FROM plan_entrenamiento p INNER JOIN entrenador e ON p.idEntrenadorFK = e.idEntrenador WHERE e.idUsuarioFK = ?";
            puente = conexion.prepareStatement(sql);
            puente.setString(1, idEntrenador);
            mensajero = puente.executeQuery();
            while (mensajero.next()) {

                planVO = new planEntrenamientoVO(
                        mensajero.getString(1),
                        mensajero.getString(2),
                        mensajero.getString(3),
                        mensajero.getString(4));
            }
            
            
            
        } catch (SQLException e) {
            Logger.getLogger(TipoEjercicioDAO.class.getName()).log(Level.SEVERE, null, e);
        } 
        return planVO;
    }
     
     
     public planEntrenamientoVO consultarCliente(String idCliente) {
        planEntrenamientoVO planVO = null;
        try {
            conexion = this.obtenerConexion();
            sql = "SELECT p.idPlan, p.idClienteFk, p.idEntrenadorFK, p.observaciones FROM plan_entrenamiento p INNER JOIN cliente c ON p.idClienteFK = c.idCliente WHERE c.idUsuarioFK = ?";
            puente = conexion.prepareStatement(sql);
            puente.setString(1, idCliente);
            mensajero = puente.executeQuery();
            while (mensajero.next()) {

                planVO = new planEntrenamientoVO(
                        mensajero.getString(1),
                        mensajero.getString(2),
                        mensajero.getString(3),
                        mensajero.getString(4));
            }
               
        } catch (SQLException e) {
            Logger.getLogger(TipoEjercicioDAO.class.getName()).log(Level.SEVERE, null, e);
        } 
        return planVO;
    }
     
     public ArrayList<planEntrenamientoVO> listarUsuariosPlan(String idEntrenador) {

        ArrayList<planEntrenamientoVO> listUsuarioPl = new ArrayList<>();
        try {
            conexion = this.obtenerConexion();
            sql = "SELECT p.idPlan, CONCAT(u.nombre, '  ', u.apellido) , e.idEntrenador, p.observaciones FROM plan_entrenamiento p INNER JOIN cliente c ON c.idCliente = p.idClienteFk INNER JOIN usuario u ON u.idUsuario = c.idUsuarioFK INNER JOIN entrenador e ON e.idEntrenador = p.idEntrenadorFK WHERE e.idUsuarioFK = ?";
            puente = conexion.prepareStatement(sql);
            puente.setString(1, idEntrenador);
            mensajero = puente.executeQuery();
            while (mensajero.next()) {
                planEntrenamientoVO plaVO = new planEntrenamientoVO(
                        mensajero.getString(1),
                        mensajero.getString(2),
                        mensajero.getString(3),
                        mensajero.getString(4));
                listUsuarioPl.add(plaVO);
            }

        } catch (SQLException e) {
            Logger.getLogger(planEntrenamientoDAO.class.getName()).log(Level.SEVERE, null, e);
        } finally {
            try {
                this.cerrarConexion();
            } catch (SQLException e) {
                Logger.getLogger(planEntrenamientoDAO.class.getName()).log(Level.SEVERE, null, e);

            }

        }
        return listUsuarioPl;
    }
     
    public boolean registrarPlan() {

        try {
            conexion = this.obtenerConexion();
            sql = "INSERT INTO plan_entrenamiento (idClienteFK, idEntrenadorFK, observaciones) SELECT ?, idEntrenador, ? FROM Entrenador WHERE idUsuarioFK = ?";
            puente = conexion.prepareStatement(sql);
            puente.setString(1, idCliente);
            puente.setString(2, observaciones);
            puente.setString(3, idEntrenador);
            puente.executeUpdate();
            operacion = true;

        } catch (SQLException e) {
            Logger.getLogger(planEntrenamientoDAO.class.getName()).log(Level.SEVERE, null, e);
        }
        return operacion;
    }
     
    @Override
    public boolean eliminarRegistro() {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

}
