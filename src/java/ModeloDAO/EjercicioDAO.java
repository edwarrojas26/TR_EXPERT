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

    private String idEjercicio = "", nombreEjercicio = "", descripcionEjercicio = "", series = "", repeticiones = "", descanso = "", peso = "";

    public EjercicioDAO() {
    }

    public EjercicioDAO(EjercicioVO ejerciciosVO) {
        super();
        try {
            conexion = this.obtenerConexion();

            idEjercicio = ejerciciosVO.getIdEjercicio();
            nombreEjercicio = ejerciciosVO.getNombreEjercicio();
            descripcionEjercicio = ejerciciosVO.getDescripcionEjercicio();
            series = ejerciciosVO.getSeries();
            repeticiones = ejerciciosVO.getRepeticiones();
            descanso = ejerciciosVO.getDescanso();
            peso = ejerciciosVO.getPeso();
        } catch (Exception e) {
            Logger.getLogger(EjercicioDAO.class.getName()).log(Level.SEVERE, null, e);
        }
    }

    @Override
    public boolean agregarRegistro() {
        try {

            sql = "INSERT INTO ejercicios (idEjercicio, nombreEjercicio, descripcionEjercicio, series, repeticiones, descanso, peso) VALUES (?,?,?,?,?,?,?)";
            puente = conexion.prepareStatement(sql);
            puente.setString(1, idEjercicio);
            puente.setString(2, nombreEjercicio);
            puente.setString(3, descripcionEjercicio);
            puente.setString(4, series);
            puente.setString(5, repeticiones);
            puente.setString(6, descanso);
            puente.setString(7, peso);
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

            sql = "UPDATE ejercicios SET nombreEjercicio=?, descripcionEjercicio=?, series=?, repeticiones=?, descanso=?, peso=? where idEjercicio=?";
            puente = conexion.prepareStatement(sql);
            puente.setString(1, nombreEjercicio);
            puente.setString(2, descripcionEjercicio);
            puente.setString(3, series);
            puente.setString(4, repeticiones);
            puente.setString(5, descanso);
            puente.setString(6, peso);
            puente.setString(7, idEjercicio);
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
