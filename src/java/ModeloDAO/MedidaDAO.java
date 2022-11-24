/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ModeloDAO;

import ModeloVO.MedidaVO;
import ModeloVO.RolVO;
import ModeloVO.TipoMedidaVO;
import ModeloVO.UsuarioVO;
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
    ConexionBd con = new ConexionBd();
    private PreparedStatement puente;
    private ResultSet mensajero;
    int med;

    private boolean operacion = false;
    private String sql;
    private String idMedida = "", idPlanFK = "", idClienteFk = "", CodigoFk = "", valorI = "", valorF = "";

    public MedidaDAO() {
    }

    public MedidaDAO(MedidaVO medidaVO) {
        super();
        try {

            conexion = this.obtenerConexion();

            idMedida = medidaVO.getIdMedida();
            idPlanFK = medidaVO.getIdPlanFk();
            idClienteFk = medidaVO.getIdClienteFk();
            CodigoFk = medidaVO.getCodigoFk();
            valorI = medidaVO.getValorI();
            valorF = medidaVO.getValorF();
        } catch (Exception e) {
            Logger.getLogger(MedidaDAO.class.getName()).log(Level.SEVERE, null, e);
        }
    }

    public boolean registrarMedida(MedidaVO medi) {

        try {

            conexion = this.obtenerConexion();
            sql = "call registrarMedida(?, ?, ?, ?)";
            puente = conexion.prepareStatement(sql);
            puente.setString(1, medi.getIdPlanFk());
            puente.setString(2, medi.getIdClienteFk());
            puente.setString(3, medi.getCodigoFk());
            puente.setString(4, medi.getValorI());
            puente.executeUpdate();
            operacion = true;

        } catch (SQLException e) {
            Logger.getLogger(MedidaDAO.class.getName()).log(Level.SEVERE, null, e);
        }
        return operacion;
    }

    @Override
    public boolean actualizarRegistro() {
        try {

            sql = "UPDATE medida SET valorF = ? where idMedida = ?";
            puente = conexion.prepareStatement(sql);
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

    public MedidaVO consultarPlan(String idMedida) {
        MedidaVO medidVO = null;
        try {
            sql = "select * from medida where idMedida = ?";
            puente = conexion.prepareStatement(sql);
            puente.setString(1, idMedida);
            puente.executeUpdate();
        } catch (SQLException e) {
            Logger.getLogger(TipoEjercicioDAO.class.getName()).log(Level.SEVERE, null, e);
        } finally {
            try {
                this.cerrarConexion();
            } catch (Exception e) {
                Logger.getLogger(TipoEjercicioDAO.class.getName()).log(Level.SEVERE, null, e);
            }
        }
        return medidVO;
    }
    
    public MedidaVO consultarMedida(String idClienteFk) {
        MedidaVO medidVO = null;
        try {
            sql = "select * from medida where idClienteFk = ?";
            puente = conexion.prepareStatement(sql);
            puente.setString(1, idClienteFk);
            puente.executeUpdate();
        } catch (SQLException e) {
            Logger.getLogger(TipoEjercicioDAO.class.getName()).log(Level.SEVERE, null, e);
        } finally {
            try {
                this.cerrarConexion();
            } catch (Exception e) {
                Logger.getLogger(TipoEjercicioDAO.class.getName()).log(Level.SEVERE, null, e);
            }
        }
        return medidVO;
    }
    
    public MedidaVO consultarEntrenador(String idCliente) {
        MedidaVO medidaCVO = null;
        try {
            conexion = this.obtenerConexion();
            sql = "SELECT m.valorI FROM medida m INNER JOIN cliente c ON m.idClienteFk = c.idCliente WHERE c.idUsuarioFK = ?";
            puente = conexion.prepareStatement(sql);
            puente.setString(1, idCliente);
            mensajero = puente.executeQuery();
            while (mensajero.next()) {

                medidaCVO = new MedidaVO(
                        mensajero.getString(1),
                        mensajero.getString(2),
                        mensajero.getString(3),
                        mensajero.getString(4),
                        mensajero.getString(5),
                        mensajero.getString(6));
            }
            
            
            
        } catch (SQLException e) {
            Logger.getLogger(MedidaVO.class.getName()).log(Level.SEVERE, null, e);
        } /*finally {
            try {
                this.cerrarConexion();
            } catch (Exception e) {
                Logger.getLogger(TipoEjercicioDAO.class.getName()).log(Level.SEVERE, null, e);
            }
        }*/
        return medidaCVO;
    }

    @Override
    public boolean eliminarRegistro() {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public boolean agregarRegistro() {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

}
