/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ModeloDAO;

import ModeloVO.TipoMedidaVO;
import Util.ConexionBd;
import Util.Crud;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author DANIEL SIERRA
 */
public class TipoMedidaDAO extends ConexionBd implements Crud {

    private Connection conexion;
    private PreparedStatement puente;
    private ResultSet mensajero;

    private boolean operacion = false;
    private String sql;

    private String codigo = "", nombreParte = "", categoria = "";

    public TipoMedidaDAO() {
    }
    
    public TipoMedidaDAO(TipoMedidaVO tipomedidaVO) {
        super();
        try {
            conexion = this.obtenerConexion();

            codigo = tipomedidaVO.getCodigo();
            nombreParte = tipomedidaVO.getNombreParte();
            categoria = tipomedidaVO.getCategoria();
        } catch (Exception e) {
            Logger.getLogger(TipoMedidaDAO.class.getName()).log(Level.SEVERE, null, e);
        }
    }

    @Override
    public boolean agregarRegistro() {
                try {

            sql = "INSERT INTO tipomedida (nombreParte, categoria) VALUES (?,?)";
            puente = conexion.prepareStatement(sql);
            puente.setString(1, nombreParte);
            puente.setString(2, categoria);
            puente.executeUpdate();
            operacion = true;

        } catch (SQLException e) {
            Logger.getLogger(TipoMedidaDAO.class.getName()).log(Level.SEVERE, null, e);
        } finally {
            try {
                this.cerrarConexion();
            } catch (SQLException e) {
                Logger.getLogger(TipoMedidaDAO.class.getName()).log(Level.SEVERE, null, e);
            }
        }
        return operacion;
    }

    @Override
    public boolean actualizarRegistro() {
                try {

            sql = "UPDATE tipomedida SET nombreParte=?, categoria=? where Codigo=?";
            puente = conexion.prepareStatement(sql);
            puente.setString(1, nombreParte);
            puente.setString(2, categoria);
            puente.setString(3, codigo);
            puente.executeUpdate();
            operacion = true;

        } catch (SQLException e) {
            Logger.getLogger(TipoMedidaDAO.class.getName()).log(Level.SEVERE, null, e);
        } finally {
            try {
                this.cerrarConexion();
            } catch (SQLException e) {
                Logger.getLogger(TipoMedidaDAO.class.getName()).log(Level.SEVERE, null, e);
            }
        }
        return operacion;
    }
    
    public TipoMedidaVO eliminarTipoMedida(String codigo) {
        TipoMedidaVO medVO = null;
        try {
            sql = "DELETE FROM tipoMedida where Codigo = ?";
            puente = conexion.prepareStatement(sql);
            puente.setString(1, codigo); 
            puente.executeUpdate();
            operacion = true;
        } catch (SQLException e) {
            Logger.getLogger(TipoMedidaDAO.class.getName()).log(Level.SEVERE, null, e);
        } finally {
            try {
                this.cerrarConexion();
            } catch (Exception e) {
                Logger.getLogger(TipoMedidaDAO.class.getName()).log(Level.SEVERE, null, e);
            }
        }
        return medVO;
    }
    
    
    public ArrayList<TipoMedidaVO> listar() {

        ArrayList<TipoMedidaVO> listaTipoMedida = new ArrayList<>();
        try {
            conexion = this.obtenerConexion();
            sql = "SELECT * FROM tipoMedida";
            puente = conexion.prepareStatement(sql);
            mensajero = puente.executeQuery();
            while (mensajero.next()) {
                TipoMedidaVO medVO = new TipoMedidaVO(
                        mensajero.getString(1),
                        mensajero.getString(2),
                        mensajero.getString(3));
                listaTipoMedida.add(medVO);
            }

        } catch (SQLException e) {
            Logger.getLogger(TipoMedidaDAO.class.getName()).log(Level.SEVERE, null, e);
        } finally {
            try {
                this.cerrarConexion();
            } catch (SQLException e) {
                Logger.getLogger(TipoMedidaDAO.class.getName()).log(Level.SEVERE, null, e);

            }

        }
        return listaTipoMedida;
    }
    
    
    /*Listar Tren superior ---------------------------------------------------------------*/
    public ArrayList<TipoMedidaVO> listarTS() {

        ArrayList<TipoMedidaVO> listaTipoMedidaTS = new ArrayList<>();
        try {
            conexion = this.obtenerConexion();
            sql = "SELECT * FROM tipoMedida WHERE categoria = 'Tren superior';";
            puente = conexion.prepareStatement(sql);
            mensajero = puente.executeQuery();
            while (mensajero.next()) {
                TipoMedidaVO medVO = new TipoMedidaVO(
                        mensajero.getString(1),
                        mensajero.getString(2),
                        mensajero.getString(3));
                listaTipoMedidaTS.add(medVO);
            }

        } catch (SQLException e) {
            Logger.getLogger(TipoMedidaDAO.class.getName()).log(Level.SEVERE, null, e);
        } finally {
            try {
                this.cerrarConexion();
            } catch (SQLException e) {
                Logger.getLogger(TipoMedidaDAO.class.getName()).log(Level.SEVERE, null, e);

            }

        }
        return listaTipoMedidaTS;
    }
   /*Listar tre inferior----------------------------------------------------------------------------------------------*/
    public ArrayList<TipoMedidaVO> listarTI() {

        ArrayList<TipoMedidaVO> listaTipoMedidaTI = new ArrayList<>();
        try {
            conexion = this.obtenerConexion();
            sql = "SELECT * FROM tipoMedida WHERE categoria = 'Tren Inferior';";
            puente = conexion.prepareStatement(sql);
            mensajero = puente.executeQuery();
            while (mensajero.next()) {
                TipoMedidaVO medVO = new TipoMedidaVO(
                        mensajero.getString(1),
                        mensajero.getString(2),
                        mensajero.getString(3));
                listaTipoMedidaTI.add(medVO);
            }

        } catch (SQLException e) {
            Logger.getLogger(TipoMedidaDAO.class.getName()).log(Level.SEVERE, null, e);
        } finally {
            try {
                this.cerrarConexion();
            } catch (SQLException e) {
                Logger.getLogger(TipoMedidaDAO.class.getName()).log(Level.SEVERE, null, e);

            }

        }
        return listaTipoMedidaTI;
    }
    
    /*Listar factor de riesgro ------------------------------------------------------------------------------------------------------*/
    
    public ArrayList<TipoMedidaVO> listarFR() {

        ArrayList<TipoMedidaVO> listaTipoMedidaFR = new ArrayList<>();
        try {
            conexion = this.obtenerConexion();
            sql = "SELECT * FROM tipoMedida WHERE categoria = 'factorRiesgo';";
            puente = conexion.prepareStatement(sql);
            mensajero = puente.executeQuery();
            while (mensajero.next()) {
                TipoMedidaVO medVO = new TipoMedidaVO(
                        mensajero.getString(1),
                        mensajero.getString(2),
                        mensajero.getString(3));
                listaTipoMedidaFR.add(medVO);
            }

        } catch (SQLException e) {
            Logger.getLogger(TipoMedidaDAO.class.getName()).log(Level.SEVERE, null, e);
        } finally {
            try {
                this.cerrarConexion();
            } catch (SQLException e) {
                Logger.getLogger(TipoMedidaDAO.class.getName()).log(Level.SEVERE, null, e);

            }

        }
        return listaTipoMedidaFR;
    }
    /*Listar salud*/
    
    public ArrayList<TipoMedidaVO> listarS() {

        ArrayList<TipoMedidaVO> listaTipoMedidaS = new ArrayList<>();
        try {
            conexion = this.obtenerConexion();
            sql = "SELECT * FROM tipoMedida WHERE categoria = 'saludAlimentacion';";
            puente = conexion.prepareStatement(sql);
            mensajero = puente.executeQuery();
            while (mensajero.next()) {
                TipoMedidaVO medVO = new TipoMedidaVO(
                        mensajero.getString(1),
                        mensajero.getString(2),
                        mensajero.getString(3));
                listaTipoMedidaS.add(medVO);
            }

        } catch (SQLException e) {
            Logger.getLogger(TipoMedidaDAO.class.getName()).log(Level.SEVERE, null, e);
        } finally {
            try {
                this.cerrarConexion();
            } catch (SQLException e) {
                Logger.getLogger(TipoMedidaDAO.class.getName()).log(Level.SEVERE, null, e);

            }

        }
        return listaTipoMedidaS;
    }
    
    
    /*Fin listados*/
    public TipoMedidaVO consultarTipoMedida(String codigo) {
        TipoMedidaVO medVO = null;
        try {
            conexion = this.obtenerConexion();
            sql = "SELECT * FROM tipoMedida WHERE Codigo = ?";
            puente = conexion.prepareStatement(sql);
            puente.setString(1, codigo);
            mensajero = puente.executeQuery();
            while (mensajero.next()) {
                medVO = new TipoMedidaVO(
                        mensajero.getString(1),
                        mensajero.getString(2),
                        mensajero.getString(3));
            }
        } catch (Exception e) {
            Logger.getLogger(TipoMedidaDAO.class.getName()).log(Level.SEVERE, null, e);
        } finally {
            try {
                this.cerrarConexion();
            } catch (Exception e) {
                Logger.getLogger(TipoMedidaDAO.class.getName()).log(Level.SEVERE, null, e);
            }
        }
        return medVO;
    }
    
     public TipoMedidaVO consultarParte(String codigo) {
        TipoMedidaVO tiVO = null;
        try {
            conexion = this.obtenerConexion();
            sql = "select * from tipomedida where codigo = ?";
            puente = conexion.prepareStatement(sql);
            puente.setString(1, codigo);
            mensajero = puente.executeQuery();
            while (mensajero.next()) {

                tiVO = new TipoMedidaVO(
                        mensajero.getString(1),
                        mensajero.getString(2),
                        mensajero.getString(3));
            }
        } catch (SQLException e) {
            Logger.getLogger(TipoEjercicioDAO.class.getName()).log(Level.SEVERE, null, e);
        } /*finally {
            try {
                this.cerrarConexion();
            } catch (Exception e) {
                Logger.getLogger(TipoEjercicioDAO.class.getName()).log(Level.SEVERE, null, e);
            }
        }*/
        return tiVO;
    }
    
    /*Cantidad de iteraciones*/
    public String cantidadTI(String categoria) {
        String medTIVO = null;
         
        
        try {
            sql = "SELECT COUNT(categoria) FROM tipomedida WHERE categoria = ?";
            puente = conexion.prepareStatement(sql);
            puente.setString(1, categoria);
            mensajero = puente.executeQuery();
            while (mensajero.next()) {
                medTIVO =  mensajero.getString(1);
            }
        } catch (SQLException e) {
            Logger.getLogger(UsuarioDAO.class.getName()).log(Level.SEVERE, null, e);
        } finally {
            try {
                this.cerrarConexion();
            } catch (Exception e) {
                Logger.getLogger(UsuarioDAO.class.getName()).log(Level.SEVERE, null, e);
            }
        }
        return medTIVO;
    }
    
    

    @Override
    public boolean eliminarRegistro() {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

}
