/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ModeloDAO;

import ModeloVO.planEntrenamientoVO;
import Util.ConexionBd;
import Util.Crud;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author milena
 */
public class planEntrenamientoDAO extends ConexionBd implements Crud {
    
    private Connection conexion;
    private PreparedStatement puente;
    private ResultSet mensajero;

    private boolean operacion = false;
    private String sql;

     private String idPlan = "", idTrabajo = "", idMedida = "",idEntrenador = "",idCliente = "",infoPlan = "";

    public planEntrenamientoDAO() {
    }

    public planEntrenamientoDAO(planEntrenamientoVO planentrenamientoVO) {
        super();

        try {
            conexion = this.obtenerConexion();

            idPlan = planentrenamientoVO.getIdPlan();
            idTrabajo = planentrenamientoVO.getIdTrabajo();
            idMedida = planentrenamientoVO.getIdMedida();
            idEntrenador = planentrenamientoVO.getIdEntrenador();
            idCliente = planentrenamientoVO.getIdCliente();
            infoPlan = planentrenamientoVO.getInfoPlan();

        } catch (Exception e) {
            Logger.getLogger(planEntrenamientoDAO.class.getName()).log(Level.SEVERE, null, e);
        }

    }

    @Override
    public boolean agregarRegistro() {
        try {
            sql = "INSERT INTO medida VALUES (?, ?, ?, ?, ?)";
            puente = conexion.prepareStatement(sql);
            puente.setString(1, idPlan);
            puente.setString(2, idTrabajo);
            puente.setString(3, idMedida);
            puente.setString(4, idEntrenador);
            puente.setString(5, idCliente);
            puente.setString(6, infoPlan);
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
            puente.setString(2, idTrabajo);
            puente.setString(3, idMedida);
            puente.setString(4, idEntrenador);
            puente.setString(5, idCliente);
            puente.setString(6, infoPlan);
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
    public boolean eliminarRegistro() {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }
    
    
}