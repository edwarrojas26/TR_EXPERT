/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ModeloDAO;

import ModeloVO.UsuarioVO;
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
 * @author edwar
 */
public class UsuarioDAO extends ConexionBd implements Crud {

    private Connection conexion;
    private PreparedStatement puente;
    private ResultSet mensajero;

    private boolean operacion = false;
    private String sql;

    private String idUsuario = "", numDoc = "", tipoDoc = "", nombre = "", apellido = "", fechaNacimiento = "", edad = "", direccion = "", telefono = "", correo = "", TS = "", EPS = "", alergia = "", estado = "", sexo = "", rol = "", contraseña = "";

    public UsuarioDAO() {
    }

    public UsuarioDAO(UsuarioVO usuarioVO) {
        super();

        try {
            conexion = this.obtenerConexion();

            idUsuario = usuarioVO.getIdUsuario();
            numDoc = usuarioVO.getNumDoc();
            tipoDoc = usuarioVO.getTipoDoc();
            nombre = usuarioVO.getNombre();
            apellido = usuarioVO.getApellido();
            fechaNacimiento = usuarioVO.getFechaNacimiento();
            edad = usuarioVO.getEdad();
            direccion = usuarioVO.getDireccion();
            telefono = usuarioVO.getTelefono();
            correo = usuarioVO.getCorreo();
            TS = usuarioVO.getTS();
            EPS = usuarioVO.getEPS();
            alergia = usuarioVO.getAlergia();
            estado = usuarioVO.getEstado();
            sexo = usuarioVO.getSexo();
            rol = usuarioVO.getRol();
            contraseña = usuarioVO.getContraseña();

        } catch (Exception e) {
            Logger.getLogger(UsuarioDAO.class.getName()).log(Level.SEVERE, null, e);
        }

    }

    @Override
    public boolean agregarRegistro() {
        try {

            sql = "call nuevousuario (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";

            puente = conexion.prepareStatement(sql);
            puente.setString(1, numDoc);
            puente.setString(2, tipoDoc);
            puente.setString(3, nombre);
            puente.setString(4, apellido);
            puente.setString(5, fechaNacimiento);
            puente.setString(6, edad);
            puente.setString(7, direccion);
            puente.setString(8, telefono);
            puente.setString(9, correo);
            puente.setString(10, TS);
            puente.setString(11, EPS);
            puente.setString(12, alergia);
            puente.setString(13, estado);
            puente.setString(14, sexo);
            puente.setString(15, rol);
            puente.setString(16, contraseña);
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
            sql = "call actualizarusuario (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";

            puente = conexion.prepareStatement(sql);
            puente.setString(1, tipoDoc);
            puente.setString(2, nombre);
            puente.setString(3, apellido);
            puente.setString(4, fechaNacimiento);
            puente.setString(5, edad);
            puente.setString(6, direccion);
            puente.setString(7, telefono);
            puente.setString(8, correo);
            puente.setString(9, TS);
            puente.setString(10, EPS);
            puente.setString(11, alergia);
            puente.setString(12, estado);
            puente.setString(13, sexo);
            puente.setString(14, rol);
            puente.setString(15, contraseña);
            puente.setString(16, numDoc);
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

    public UsuarioVO modificarEstadoUsuario(String numDoc) {
        UsuarioVO usuVO = null;
        try {
            sql = "CALL inhabilitarusuario(?)";
            puente = conexion.prepareStatement(sql);
            puente.setString(1, numDoc);

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
        return usuVO;
    }

    public UsuarioVO consultarUsuario(String numDoc) {
        UsuarioVO usuVO = null;
        try {
            conexion = this.obtenerConexion();
            sql = "CALL consultarUsuario(?)";
            puente = conexion.prepareStatement(sql);
            puente.setString(1, numDoc);
            mensajero = puente.executeQuery();
            while (mensajero.next()) {
                usuVO = new UsuarioVO(
                        mensajero.getString(1),
                        mensajero.getString(2),
                        mensajero.getString(3),
                        mensajero.getString(4),
                        mensajero.getString(5),
                        mensajero.getString(6),
                        mensajero.getString(7),
                        mensajero.getString(8),
                        mensajero.getString(9),
                        mensajero.getString(10),
                        mensajero.getString(11),
                        mensajero.getString(12),
                        mensajero.getString(13),
                        mensajero.getString(14),
                        mensajero.getString(15),
                        mensajero.getString(16),
                        mensajero.getString(17));
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
        return usuVO;
    }

    public ArrayList<UsuarioVO> listar() {

        ArrayList<UsuarioVO> listaUsuario = new ArrayList<>();
        try {
            conexion = this.obtenerConexion();
            sql = "CALL listarUsuarios";
            puente = conexion.prepareStatement(sql);
            mensajero = puente.executeQuery();
            while (mensajero.next()) {
                UsuarioVO usuVO = new UsuarioVO(
                        mensajero.getString(1),
                        mensajero.getString(2),
                        mensajero.getString(3),
                        mensajero.getString(4),
                        mensajero.getString(5),
                        mensajero.getString(6),
                        mensajero.getString(7),
                        mensajero.getString(8),
                        mensajero.getString(9),
                        mensajero.getString(10),
                        mensajero.getString(11),
                        mensajero.getString(12),
                        mensajero.getString(13),
                        mensajero.getString(14),
                        mensajero.getString(15),
                        mensajero.getString(16),
                        mensajero.getString(17));
                listaUsuario.add(usuVO);
            }

        } catch (SQLException e) {
            Logger.getLogger(UsuarioDAO.class.getName()).log(Level.SEVERE, null, e);
        } finally {
            try {
                this.cerrarConexion();
            } catch (SQLException e) {
                Logger.getLogger(UsuarioDAO.class.getName()).log(Level.SEVERE, null, e);

            }

        }
        return listaUsuario;
    }

    public boolean iniciarSesion(String correo, String contraseña) {
        try {
            conexion = this.obtenerConexion();
            sql = "SELECT correo, contraseña FROM usuario WHERE correo=? AND contraseña=?;";
            puente = conexion.prepareStatement(sql);
            puente.setString(1, correo);
            puente.setString(2, contraseña);
            
            mensajero = puente.executeQuery();
            
            if (mensajero.next()) {
                operacion = true;
            }

        } catch (SQLException e) {
            Logger.getLogger(UsuarioDAO.class.getName()).log(Level.SEVERE, null, e);

        } finally {
            try {
                this.cerrarConexion();
            } catch (SQLException e) {
                Logger.getLogger(UsuarioDAO.class.getName()).log(Level.SEVERE, null, e);
            }
        }
        return operacion;
    }

    @Override
    public boolean eliminarRegistro() {

        return operacion;
    }

}
