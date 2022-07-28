/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ModeloDAO;

import ModeloVO.ValoracionVO;
import ConexionBD.ConexionBd;
import ConexionBD.Crud;
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
public class ValoracionDAO extends ConexionBd implements Crud {

    private Connection conexion;
    private PreparedStatement puente;
    private ResultSet mensajero;

    private boolean operacion = false;
    private String sql;

    private String idValoracion = "", idMedida = "", observacion = "";
    
    public ValoracionDAO() {
    }

    public ValoracionDAO(ValoracionVO valoracionVO) {
        super();

        try {
            conexion = this.obtenerConexion();
            
            idValoracion = valoracionVO.getIdValoracion();
            idMedida = valoracionVO.getIdMedida();
            observacion = valoracionVO.getObservacion();            

        } catch (Exception e) {
            Logger.getLogger(ValoracionDAO.class.getName()).log(Level.SEVERE, null, e);
        }

    }

    @Override
    public boolean agregarRegistro() {
        try {
            sql = "INSERT INTO valoracionmedidascliente VALUES (?, ?, ?)";
            puente = conexion.prepareStatement(sql);
            puente.setString(1, idValoracion);
            puente.setString(2, idMedida);
            puente.setString(3, observacion);
            puente.executeUpdate();
            operacion = true;
        } catch (SQLException e) {
            Logger.getLogger(ValoracionDAO.class.getName()).log(Level.SEVERE, null, e);
        } finally {
            try {
                this.cerrarConexion();
            } catch (Exception e) {
                Logger.getLogger(ValoracionDAO.class.getName()).log(Level.SEVERE, null, e);
            }
        }
        return operacion;
    }

    @Override
    public boolean actualizarRegistro() {
        try {
            sql = "UPDATE valoracionmedidascliente SET observacion = ? WHERE idValoracion = ?";
            puente = conexion.prepareStatement(sql);
            puente.setString(1, idValoracion);
            puente.setString(2, idMedida);
            puente.setString(3, observacion);
            puente.executeUpdate();
            operacion = true;
        } catch (SQLException e) {
            Logger.getLogger(ValoracionDAO.class.getName()).log(Level.SEVERE, null, e);
        } finally {
            try {
                this.cerrarConexion();
            } catch (Exception e) {
                Logger.getLogger(ValoracionDAO.class.getName()).log(Level.SEVERE, null, e);
            }
        }
        return operacion;
    }

    @Override
    public boolean eliminarRegistro() {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }
}
