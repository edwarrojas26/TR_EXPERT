/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ModeloVO;

/**
 *
 * @author milena
 */
public class planEntrenamientoVO {
    
    private String idPlan, idTrabajo, idMedida,idEntrenador,idCliente,infoPlan;
    
    public planEntrenamientoVO(String idPlan, String idTrabajo, String idMedida, String idEntrenador, String idCliente, String infoPlan) {
        this.idPlan = idPlan;
        this.idTrabajo = idTrabajo;
        this.idMedida = idMedida;
        this.idEntrenador = idEntrenador;
        this.idCliente = idCliente;
        this.infoPlan = infoPlan;
    }

    public String getIdPlan() {
        return idPlan;
    }

    public void setIdPlan(String idPlan) {
        this.idPlan = idPlan;
    }

    public String getIdTrabajo() {
        return idTrabajo;
    }

    public void setIdTrabajo(String idTrabajo) {
        this.idTrabajo = idTrabajo;
    }

    public String getIdMedida() {
        return idMedida;
    }

    public void setIdMedida(String idMedida) {
        this.idMedida = idMedida;
    }

    public String getIdEntrenador() {
        return idEntrenador;
    }

    public void setIdEntrenador(String idEntrenador) {
        this.idEntrenador = idEntrenador;
    }

    public String getIdCliente() {
        return idCliente;
    }

    public void setIdCliente(String idCliente) {
        this.idCliente = idCliente;
    }

    public String getInfoPlan() {
        return infoPlan;
    }

    public void setInfoPlan(String infoPlan) {
        this.infoPlan = infoPlan;
    }

    
    
}
