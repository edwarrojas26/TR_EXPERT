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
    
    private String idPlan, idCliente, idEntrenador,observaciones;

    public planEntrenamientoVO() {
    }

    public planEntrenamientoVO(String idPlan, String idCliente, String idEntrenador, String observaciones) {
        this.idPlan = idPlan;
        this.idCliente = idCliente;
        this.idEntrenador = idEntrenador;
        this.observaciones = observaciones;
    }

    public String getIdPlan() {
        return idPlan;
    }

    public void setIdPlan(String idPlan) {
        this.idPlan = idPlan;
    }

    public String getIdCliente() {
        return idCliente;
    }

    public void setIdCliente(String idCliente) {
        this.idCliente = idCliente;
    }

    public String getIdEntrenador() {
        return idEntrenador;
    }

    public void setIdEntrenador(String idEntrenador) {
        this.idEntrenador = idEntrenador;
    }

    public String getObservaciones() {
        return observaciones;
    }

    public void setObservaciones(String observaciones) {
        this.observaciones = observaciones;
    }
    
  

    
    
}
