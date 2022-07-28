/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ModeloDAO;

import ModeloVO.UsuarioVO;
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
 * @author edwar
 */
public class UsuarioDAO extends ConexionBd implements Crud{
    private Connection conexion;
    private PreparedStatement puente;
    private ResultSet mensajero;

    private boolean operacion = false;
    private String sql;

    private String numDoc = "", tipoDoc = "", nombre = "", apellido = "", fechaNacimiento = "", fechaIngreso = "", edad = "", direccion = "", telefono = "", correo = "", RH = "", EPS = "", alergia = "", estado = "", sexo = "", rol = "", contraseña = "";

    public UsuarioDAO() {
    }

    public UsuarioDAO(UsuarioVO usuarioVO) {
        super();

        try {
            conexion = this.obtenerConexion();
            
            numDoc = usuarioVO.getNumDoc();
            tipoDoc = usuarioVO.getTipoDoc();
            nombre = usuarioVO.getNombre();
            apellido = usuarioVO.getApellido();
            fechaNacimiento = usuarioVO.getFechaNacimiento();
            fechaIngreso = usuarioVO.getFechaIngreso();
            edad = usuarioVO.getEdad();
            direccion = usuarioVO.getDireccion();
            telefono = usuarioVO.getTelefono();
            correo = usuarioVO.getCorreo();
            RH = usuarioVO.getRH();
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
            sql = "call nuevousuario (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
            puente = conexion.prepareStatement(sql);
            puente.setString(1, numDoc);
            puente.setString(2, tipoDoc);
            puente.setString(3, nombre);
            puente.setString(4, apellido);
            puente.setString(5, fechaNacimiento);
            puente.setString(6, fechaIngreso);
            puente.setString(7, edad);
            puente.setString(8, direccion);
            puente.setString(9, telefono);
            puente.setString(10, correo);
            puente.setString(11, RH);
            puente.setString(12, EPS);
            puente.setString(13, alergia);
            puente.setString(14, estado);
            puente.setString(15, sexo);
            puente.setString(16, rol);
            puente.setString(17, contraseña);
            
            
            
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
            sql = "call actualizarusuario (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
            puente = conexion.prepareStatement(sql);
            puente.setString(1, numDoc);
            puente.setString(2, tipoDoc);
            puente.setString(3, nombre);
            puente.setString(4, apellido);
            puente.setString(5, fechaNacimiento);
            puente.setString(6, fechaIngreso);
            puente.setString(7, edad);
            puente.setString(8, direccion);
            puente.setString(9, telefono);
            puente.setString(10, correo);
            puente.setString(11, RH);
            puente.setString(12, EPS);
            puente.setString(13, alergia);
            puente.setString(14, estado);
            puente.setString(15, sexo);
            puente.setString(16, rol);
            puente.setString(17, contraseña);
            
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
        try {
            sql = "call inhabilitarusuario (?, ?)";
            puente = conexion.prepareStatement(sql);
            puente.setString(1, numDoc);
            puente.setString(14, estado);
            
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
}
