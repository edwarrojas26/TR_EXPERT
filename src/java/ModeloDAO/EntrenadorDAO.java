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

public class EntrenadorDAO extends ConexionBd  {
    
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

    
}
