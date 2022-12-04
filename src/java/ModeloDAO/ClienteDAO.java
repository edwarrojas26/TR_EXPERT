package ModeloDAO;

import ModeloVO.ClienteVO;
import Util.ConexionBd;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

public class ClienteDAO extends ConexionBd {

    private Connection conexion;
    private PreparedStatement puente;
    private ResultSet mensajero;
    private String sql;

    private String idCliente = "", idUsuarioFK = "";

    public ClienteDAO() {

    }

    public ClienteDAO(ClienteVO clienteVO) {
        super();
        try {
            conexion = this.obtenerConexion();

            idCliente = clienteVO.getIdCliente();
            idUsuarioFK = clienteVO.getIdUsuarioFK();

        } catch (Exception e) {
            Logger.getLogger(UsuarioDAO.class.getName()).log(Level.SEVERE, null, e);
        }
    }

    public ClienteVO consultarEntrenadorUsuario(String idUsuarioFK) {
        ClienteVO cliVO = null;
        try {
            conexion = this.obtenerConexion();
            sql = "SELECT * FROM entrenador WHERE idUsuarioFK = ?";
            puente = conexion.prepareStatement(sql);
            puente.setString(1, idUsuarioFK);
            mensajero = puente.executeQuery();
            while (mensajero.next()) {

                cliVO = new ClienteVO(
                        mensajero.getString(1),
                        mensajero.getString(2));
            }

        } catch (SQLException e) {
            Logger.getLogger(TipoEjercicioDAO.class.getName()).log(Level.SEVERE, null, e);
        }
        return cliVO;
    }
    
    public ClienteVO consultarUsuario(String idCliente) {
        ClienteVO cliVO = null;
        try {
            conexion = this.obtenerConexion();
            sql = "SELECT c.idCliente, u.numDoc, u.tipoDoc, u.nombre, u.apellido, u.fechaNacimiento, u.edad, u.direccion, u.telefono, u.correo, u.Tipo_sangre, u.EPS, u.alergias, u.estado, u.sexo, u.rol, u.contraseña FROM usuario u INNER JOIN cliente c on c.idUsuarioFK = u.idUsuario WHERE c.idCliente = ?";
            puente = conexion.prepareStatement(sql);
            puente.setString(1, idCliente);
            mensajero = puente.executeQuery();
            while (mensajero.next()) {
                cliVO = new ClienteVO(
                        mensajero.getString(1),
                        mensajero.getString(2));
            }
        } catch (Exception e) {
            Logger.getLogger(UsuarioDAO.class.getName()).log(Level.SEVERE, null, e);
        } finally {
            try {
                this.cerrarConexion();
            } catch (Exception e) {
                Logger.getLogger(UsuarioDAO.class.getName()).log(Level.SEVERE, null, e);
            }
        }
        return cliVO;
    }

}
