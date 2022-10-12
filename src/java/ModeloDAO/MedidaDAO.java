/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ModeloDAO;

import ModeloVO.MedidaVO;
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
public class MedidaDAO extends ConexionBd implements Crud {

    private Connection conexion;
    private PreparedStatement puente;
    private ResultSet mensajero;

    private boolean operacion = false;
    private String sql;

    private String idMedida = "", codigoFK = "", valorI = "", valorF = "";

    public MedidaDAO() {
    }

    public MedidaDAO(MedidaVO medidaVO) {
        super();
        try {
            conexion = this.obtenerConexion();

            idMedida = medidaVO.getIdMedida();
            codigoFK = medidaVO.getCodigoFK();
            valorI = medidaVO.getValorI();
            valorF = medidaVO.getValorF();
        } catch (Exception e) {
            Logger.getLogger(MedidaDAO.class.getName()).log(Level.SEVERE, null, e);
        }
    }

    @Override
    public boolean agregarRegistro() {
        try {

            sql = "INSERT INTO medida (idMedida, codigoFK, valorI, valorF) VALUES (?,?,?,?)";
            puente = conexion.prepareStatement(sql);
            puente.setString(1, idMedida);
            puente.setString(2, codigoFK);
            puente.setString(3, valorI);
            puente.setString(4, valorF);
            puente.executeUpdate();
            operacion = true;

        } catch (SQLException e) {
            Logger.getLogger(MedidaDAO.class.getName()).log(Level.SEVERE, null, e);
        } finally {
            try {
                this.cerrarConexion();
            } catch (SQLException e) {
                Logger.getLogger(MedidaDAO.class.getName()).log(Level.SEVERE, null, e);
            }
        }
        return operacion;
    }

    @Override
    public boolean actualizarRegistro() {
        try {

            sql = "UPDATE medida SET valorI=?, valorF=? where idMedida=?";
            puente = conexion.prepareStatement(sql);
            puente.setString(1, valorI);
            puente.setString(2, valorF);
            puente.setString(3, idMedida);
            puente.executeUpdate();
            operacion = true;

        } catch (SQLException e) {
            Logger.getLogger(MedidaDAO.class.getName()).log(Level.SEVERE, null, e);
        } finally {
            try {
                this.cerrarConexion();
            } catch (SQLException e) {
                Logger.getLogger(MedidaDAO.class.getName()).log(Level.SEVERE, null, e);
            }
        }
        return operacion;
    }

    @Override
    public boolean eliminarRegistro() {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

}
