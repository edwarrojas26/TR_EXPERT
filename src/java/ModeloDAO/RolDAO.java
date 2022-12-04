package ModeloDAO;

import ModeloVO.RolVO;
import Util.ConexionBd;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

public class RolDAO extends ConexionBd {

    private Connection conexion;
    private PreparedStatement puente;
    private ResultSet mensajero;
    private String sql;


    public RolDAO() {
    }

    public RolVO sesiones(String correo) {
        RolVO rolVO = null;
        try {
            conexion = this.obtenerConexion();
            sql = "SELECT usuario.idUsuario, rol.rolTipo FROM rol INNER JOIN usuario_rol ON rol.id_Rol = usuario_rol.id_Rol INNER JOIN usuario ON usuario_rol.idUsuario = usuario.idUsuario WHERE usuario.correo=?";
            puente = conexion.prepareStatement(sql);
            puente.setString(1, correo);
            mensajero = puente.executeQuery();
            while (mensajero.next()) {
                rolVO = new RolVO(
                        mensajero.getString(1),
                        mensajero.getString(2)
                );
            }

        } catch (SQLException e) {
            Logger.getLogger(RolDAO.class.getName()).log(Level.SEVERE, null, e);
        } finally {
            try {
                this.cerrarConexion();
            } catch (SQLException e) {
                Logger.getLogger(RolDAO.class.getName()).log(Level.SEVERE, null, e);
            }
        }
        return rolVO;
    }
}
