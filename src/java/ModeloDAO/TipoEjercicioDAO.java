package ModeloDAO;

import ModeloVO.TipoEjercicioVO;
import Util.ConexionBd;
import Util.Crud;
import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.http.HttpServletResponse;

public class TipoEjercicioDAO extends ConexionBd implements Crud {

    private Connection conexion;
    private PreparedStatement puente;
    private ResultSet mensajero;

    private boolean operacion = false;
    private String sql;

    TipoEjercicioVO tipoejercicioVO = new TipoEjercicioVO();

    private String idTE, nombreE, descripcionE, seriesE, repeticionesE, descansoE, pesoE;
    private InputStream img;

    public TipoEjercicioDAO() {
    }

    public TipoEjercicioDAO(TipoEjercicioVO tipoejercicioVO) {
        super();
        try {
            conexion = this.obtenerConexion();
            idTE = tipoejercicioVO.getIdTE();
            nombreE = tipoejercicioVO.getNombre();
            img = tipoejercicioVO.getImg();
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
    public boolean agregarRegistro() {

        try {

            sql = "INSERT INTO tipoejercicio (nombreEjercicio, descripcionEjercicio, series, repeticiones, descanso, peso, foto) VALUES (?,?,?,?,?,?,?)";
            puente = conexion.prepareStatement(sql);
            puente.setString(1, nombreE);
            puente.setString(2, descripcionE);
            puente.setString(3, seriesE);
            puente.setString(4, repeticionesE);
            puente.setString(5, descansoE);
            puente.setString(6, pesoE);
            puente.setBlob(7, tipoejercicioVO.getImg());
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
    public boolean actualizarRegistro() {

        try {

            sql = "UPDATE tipoejercicio SET nombreEjercicio=?,foto=?,  descripcionEjercicio=? ,series=? , repeticiones=? , descanso=? , peso=?  WHERE idTipoEjercicio=?";
            puente = conexion.prepareStatement(sql);
            puente.setString(1, nombreE);
            puente.setString(2, descripcionE);
            puente.setString(3, pesoE);
            puente.setString(4, seriesE);
            puente.setString(5, repeticionesE);
            puente.setString(6, descansoE);
            puente.setBlob(7, img);
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
    public boolean eliminarRegistro() {
        return operacion;
    }

    public ArrayList<TipoEjercicioVO> listar() {
        InputStream inputStream = null;
        OutputStream outputStream = null;
        BufferedInputStream bufferedInputStream = null;
        BufferedOutputStream bufferedOutputStream = null;

        ArrayList<TipoEjercicioVO> listaTipoEjercicio = new ArrayList<>();
        try {
            conexion = this.obtenerConexion();
            sql = "SELECT * FROM tipoEjercicio";
            puente = conexion.prepareStatement(sql);
            mensajero = puente.executeQuery();
            /*if (mensajero.next()) {
                inputStream=mensajero.getBinaryStream("txtFoto");
            }
            bufferedInputStream = new BufferedInputStream(inputStream);
            bufferedOutputStream = new BufferedOutputStream(outputStream);
            int i=0;*/

            while (mensajero.next()) {
                TipoEjercicioVO tejVO = new TipoEjercicioVO(
                        mensajero.getString(1),
                        mensajero.getString(2),
                        mensajero.getBinaryStream(3),
                        mensajero.getString(4),
                        mensajero.getString(5),
                        mensajero.getString(6),
                        mensajero.getString(7),
                        mensajero.getString(8));
                listaTipoEjercicio.add(tejVO);
            }

            /*while((i=bufferedInputStream.read())!=-1){
                bufferedOutputStream.write(i);
            }*/
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
                        mensajero.getBinaryStream(3),
                        mensajero.getString(4),
                        mensajero.getString(5),
                        mensajero.getString(6),
                        mensajero.getString(7),
                        mensajero.getString(8));
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

    public TipoEjercicioVO consultarEjercicio(String idTE) {
        TipoEjercicioVO tiEVO = null;
        try {
            conexion = this.obtenerConexion();
            sql = "select * from tipomedida where codigo = ?";
            puente = conexion.prepareStatement(sql);
            puente.setString(1, idTE);
            mensajero = puente.executeQuery();
            while (mensajero.next()) {

                tiEVO = new TipoEjercicioVO(
                        mensajero.getString(1),
                        mensajero.getString(2),
                        mensajero.getBinaryStream(3),
                        mensajero.getString(4),
                        mensajero.getString(5),
                        mensajero.getString(6),
                        mensajero.getString(7),
                        mensajero.getString(8));
            }
        } catch (SQLException e) {
            Logger.getLogger(TipoEjercicioDAO.class.getName()).log(Level.SEVERE, null, e);
        }
        /*finally {
            try {
                this.cerrarConexion();
            } catch (Exception e) {
                Logger.getLogger(TipoEjercicioDAO.class.getName()).log(Level.SEVERE, null, e);
            }
        }*/
        return tiEVO;
    }

}
