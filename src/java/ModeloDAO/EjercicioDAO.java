/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ModeloDAO;

import ModeloVO.EjercicioVO;
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
 * @author DANIEL SIERRA
 */
public class EjercicioDAO extends ConexionBd implements Crud {

    private Connection conexion;
    private PreparedStatement puente;
    private ResultSet mensajero;

    private boolean operacion = false;
    private String sql;

    private String idEjercicio = "", idPlanFK = "", idClienteFK = "", idTipoEjercicioFK = "";

    public EjercicioDAO() {
    }

    public EjercicioDAO(EjercicioVO ejerciciosVO) {
        super();
        try {
            conexion = this.obtenerConexion();

            idEjercicio = ejerciciosVO.getIdEjercicio();
            idPlanFK = ejerciciosVO.getIdPlanFK();
            idClienteFK = ejerciciosVO.getIdClienteFK();
            idTipoEjercicioFK = ejerciciosVO.getIdTipoEjercicioFK();
        } catch (Exception e) {
            Logger.getLogger(EjercicioDAO.class.getName()).log(Level.SEVERE, null, e);
        }
    }

    @Override
    public boolean agregarRegistro() {
        try {

            sql = "INSERT INTO ejercicio (idEjercicio, idPlanFK, idClienteFK, idTipoEjercicioFK) VALUES (?,?,?,?)";
            puente = conexion.prepareStatement(sql);
            puente.setString(1, idEjercicio);
            puente.setString(2, idPlanFK);
            puente.setString(3, idClienteFK);
            puente.setString(4, idTipoEjercicioFK);
            puente.executeUpdate();
            operacion = true;

        } catch (SQLException e) {
            Logger.getLogger(EjercicioDAO.class.getName()).log(Level.SEVERE, null, e);
        } finally {
            try {
                this.cerrarConexion();
            } catch (SQLException e) {
                Logger.getLogger(EjercicioDAO.class.getName()).log(Level.SEVERE, null, e);
            }
        }
        return operacion;
    }

    @Override
    public boolean actualizarRegistro() {
        try {

            sql = "UPDATE ejercicios SET where idEjercicio=?";
            puente = conexion.prepareStatement(sql);
            
            puente.setString(1, idTipoEjercicioFK);
            
            puente.executeUpdate();
            operacion = true;

        } catch (SQLException e) {
            Logger.getLogger(EjercicioDAO.class.getName()).log(Level.SEVERE, null, e);
        } finally {
            try {
                this.cerrarConexion();
            } catch (SQLException e) {
                Logger.getLogger(EjercicioDAO.class.getName()).log(Level.SEVERE, null, e);
            }
        }
        return operacion;
    }

    @Override
    public boolean eliminarRegistro() {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

}
