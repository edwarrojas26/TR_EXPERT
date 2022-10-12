
package ModeloDAO;

import ModeloVO.TipoEjercicioVO;
import Util.ConexionBd;
import Util.Crud;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;


public class TipoEjercicioDAO extends ConexionBd implements Crud {
    
     private Connection conexion;
    private PreparedStatement puente;
    private ResultSet mensajero;

    private boolean operacion = false;
    private String sql;
    
    private String idTE, nombreE, descripcionE, seriesE, repeticionesE, descansoE, pesoE;
    
    public TipoEjercicioDAO(){
    }
    
    
    public TipoEjercicioDAO(TipoEjercicioVO tipoejercicioVO) {
        super();
        try {
            conexion = this.obtenerConexion();
            idTE = tipoejercicioVO.getIdTE();
            nombreE = tipoejercicioVO.getNombre();
            descripcionE = tipoejercicioVO.getDescricpion();
            seriesE = tipoejercicioVO.getSeries();
            repeticionesE = tipoejercicioVO.getRepeticiones();
            descansoE = tipoejercicioVO.getDescanso();
            pesoE = tipoejercicioVO.getPeso();
        } catch (Exception e) {
            Logger.getLogger(TipoEjercicioDAO.class.getName()).log(Level.SEVERE, null, e);
        }
    }
    
    @Override
    public boolean agregarRegistro(){
        
        try {

            sql = "INSERT INTO tipoejercicio (nombreEjercicio, descripcionEjercicio, series, repeticiones, descanso, peso) VALUES (?,?,?,?,?,?)";
            puente = conexion.prepareStatement(sql);
            puente.setString(1, nombreE);
            puente.setString(2, descripcionE);
            puente.setString(3, seriesE);
            puente.setString(4, repeticionesE);
            puente.setString(5, descansoE);
            puente.setString(6, pesoE);
            puente.executeUpdate();
            operacion = true;

        } catch (SQLException e) {
            Logger.getLogger(TipoEjercicioDAO.class.getName()).log(Level.SEVERE, null, e);
        } finally {
            try {
                this.cerrarConexion();
            } catch (SQLException e) {
                Logger.getLogger(TipoEjercicioDAO.class.getName()).log(Level.SEVERE, null, e);
            }
        }
        return operacion;
    }
    
    @Override 
    public boolean actualizarRegistro(){
        
       try {

            sql = "UPDATE tipoejercicio SET nombreEjercicio=?, descripcionEjercicio=? ,series=? , repeticiones=? , descanso=? , peso=?  WHERE idTipoEjercicio=?";
            puente = conexion.prepareStatement(sql);
            puente.setString(1, nombreE);
            puente.setString(2, descripcionE);
            puente.setString(3, seriesE);
            puente.setString(4, repeticionesE);
            puente.setString(5, descansoE);
            puente.setString(6, pesoE);
            puente.setString(7, idTE);
            puente.executeUpdate();
            operacion = true;

        } catch (SQLException e) {
            Logger.getLogger(TipoEjercicioDAO.class.getName()).log(Level.SEVERE, null, e);
        } finally {
            try {
                this.cerrarConexion();
            } catch (SQLException e) {
                Logger.getLogger(TipoEjercicioDAO.class.getName()).log(Level.SEVERE, null, e);
            }
        }
        return operacion;
    }
    
    @Override 
    public boolean eliminarRegistro(){
        return operacion;
    }
    
    public ArrayList<TipoEjercicioVO> listar() {

        ArrayList<TipoEjercicioVO> listaTipoEjercicio= new ArrayList<>();
        try {
            conexion = this.obtenerConexion();
            sql = "SELECT * FROM tipoEjercicio";
            puente = conexion.prepareStatement(sql);
            mensajero = puente.executeQuery();
            while (mensajero.next()) {
                TipoEjercicioVO tejVO = new TipoEjercicioVO(
                        mensajero.getString(1),
                        mensajero.getString(2),
                        mensajero.getString(3),
                        mensajero.getString(4),
                        mensajero.getString(5),
                        mensajero.getString(6),
                        mensajero.getString(7));
                listaTipoEjercicio.add(tejVO);
            }

        } catch (SQLException e) {
            Logger.getLogger(TipoEjercicioDAO.class.getName()).log(Level.SEVERE, null, e);
        } finally {
            try {
                this.cerrarConexion();
            } catch (SQLException e) {
                Logger.getLogger(TipoEjercicioDAO.class.getName()).log(Level.SEVERE, null, e);

            }

        }
        return listaTipoEjercicio;
    }
    
    
    public TipoEjercicioVO eliminarTipoEjercicio(String idTE) {
        TipoEjercicioVO tejVO = null;
        try {
            sql = "DELETE FROM tipoEjercicio where idTipoEjercicio = ?";
            puente = conexion.prepareStatement(sql);
            puente.setString(1, idTE); 
            puente.executeUpdate();
            operacion = true;
        } catch (SQLException e) {
            Logger.getLogger(TipoEjercicioDAO.class.getName()).log(Level.SEVERE, null, e);
        } finally {
            try {
                this.cerrarConexion();
            } catch (Exception e) {
                Logger.getLogger(TipoEjercicioDAO.class.getName()).log(Level.SEVERE, null, e);
            }
        }
        return tejVO;
    }
    
    public TipoEjercicioVO consultarTipoEjercicio(String idTE) {
        TipoEjercicioVO tejVO = null;
        try {
            conexion = this.obtenerConexion();
            sql = "SELECT * FROM tipoEjercicio WHERE idTipoEjercicio = ?";
            puente = conexion.prepareStatement(sql);
            puente.setString(1, idTE);
            mensajero = puente.executeQuery();
            while (mensajero.next()) {
                tejVO = new TipoEjercicioVO(
                        mensajero.getString(1),
                        mensajero.getString(2),
                        mensajero.getString(3),
                        mensajero.getString(4),
                        mensajero.getString(5),
                        mensajero.getString(6),
                        mensajero.getString(7));
            }
        } catch (Exception e) {
            Logger.getLogger(TipoEjercicioDAO.class.getName()).log(Level.SEVERE, null, e);
        } finally {
            try {
                this.cerrarConexion();
            } catch (Exception e) {
                Logger.getLogger(TipoEjercicioDAO.class.getName()).log(Level.SEVERE, null, e);
            }
        }
        return tejVO;
    }
    
    
    
    
    
}
