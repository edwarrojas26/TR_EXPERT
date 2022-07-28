/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ModeloDAO;

import ModeloVO.ValorVO;
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
public class ValorDAO extends ConexionBd implements Crud {

    private Connection conexion;
    private PreparedStatement puente;
    private ResultSet mensajero;

    private boolean operacion = false;
    private String sql;

    private String idMedida = "", idCliente = "", fecha = "", valor = "";

    public ValorDAO() {
    }

    public ValorDAO(ValorVO valorVO) {
        super();

        try {
            conexion = this.obtenerConexion();

            idMedida = valorVO.getIdMedida();
            idCliente = valorVO.getIdCliente();
            valor = valorVO.getValor();
            fecha = valorVO.getFecha();

        } catch (Exception e) {
            Logger.getLogger(ValorDAO.class.getName()).log(Level.SEVERE, null, e);
        }

    }

    @Override
    public boolean agregarRegistro() {
        try {
            sql = "INSERT INTO valor VALUES (?, ?, ?, ?)";
            puente = conexion.prepareStatement(sql);
            puente.setString(1, idMedida);
            puente.setString(2, idCliente);
            puente.setString(3, valor);
            puente.setString(4, fecha);
            puente.executeUpdate();
            operacion = true;
        } catch (SQLException e) {
            Logger.getLogger(ValorDAO.class.getName()).log(Level.SEVERE, null, e);
        } finally {
            try {
                this.cerrarConexion();
            } catch (Exception e) {
                Logger.getLogger(ValorDAO.class.getName()).log(Level.SEVERE, null, e);
            }
        }
        return operacion;
    }

    @Override
    public boolean actualizarRegistro() {
        try {
            sql = "UPDATE valor SET nombreMedida = ?, valor = ?, descripcion = ?, tipoMedida = ? WHERE idMedida = ?";
            puente = conexion.prepareStatement(sql);
            puente.setString(1, idMedida);
            puente.setString(2, idCliente);
            puente.setString(3, valor);
            puente.setString(4, fecha);
            puente.executeUpdate();
            operacion = true;
        } catch (SQLException e) {
            Logger.getLogger(MedidaDAO.class.getName()).log(Level.SEVERE, null, e);
        } finally {
            try {
                this.cerrarConexion();
            } catch (Exception e) {
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
