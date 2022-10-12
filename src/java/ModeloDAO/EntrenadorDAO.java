/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ModeloDAO;

import ModeloVO.EntrenadorVO;
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
 * @author edwar
 */
public class EntrenadorDAO extends ConexionBd implements Crud {
    
    private Connection conexion;
    private PreparedStatement puente;
    private ResultSet mensajero;

    private boolean operacion = false;
    private String sql;
    
    private String area = "";
    
    public EntrenadorDAO(){
    }
    
    public EntrenadorDAO(EntrenadorVO entrenadorVO) {
        super();

        try {
            conexion = this.obtenerConexion();
            
            /*idEntrenador = entrenadorVO.getIdEntrenador();
            numDoc = entrenadorVO.getNumDoc();*/
            area = entrenadorVO.getArea();

        } catch (Exception e) {
            
            Logger.getLogger(UsuarioDAO.class.getName()).log(Level.SEVERE, null, e);
        }

    }

    @Override
    public boolean agregarRegistro() {
        try {
            sql = "INSERT INTO Entrenador (area) VALUES (?)";
            puente = conexion.prepareStatement(sql);
            /*puente.setString(1, idEntrenador);
            puente.setString(2, numDoc);*/
            puente.setString(1, area);
            
            
            
            
            puente.executeUpdate();
            operacion = true;
        } catch (SQLException e) {
            Logger.getLogger(UsuarioDAO.class.getName()).log(Level.SEVERE, null, e);
        } finally {
            try {
                this.cerrarConexion();
            } catch (Exception e) {
                Logger.getLogger(UsuarioDAO.class.getName()).log(Level.SEVERE, null, e);
            }
        }
        return operacion;
    }

    @Override
    public boolean actualizarRegistro() {
        try {
            sql = "UPDATE usuario SET observacion = ? WHERE numDoc = ?";
            puente = conexion.prepareStatement(sql);
            /*puente.setString(1, idEntrenador);
            puente.setString(2, numDoc);*/
            puente.setString(1, area);

            
            puente.executeUpdate();
            operacion = true;
        } catch (SQLException e) {
            Logger.getLogger(UsuarioDAO.class.getName()).log(Level.SEVERE, null, e);
        } finally {
            try {
                this.cerrarConexion();
            } catch (Exception e) {
                Logger.getLogger(UsuarioDAO.class.getName()).log(Level.SEVERE, null, e);
            }
        }
        return operacion;
    }

    @Override
    public boolean eliminarRegistro() {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }
    
}
