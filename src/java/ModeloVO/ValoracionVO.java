/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ModeloVO;

/**
 *
 * @author DANIEL SIERRA
 */
public class ValoracionVO {

    private String idValoracion, idMedida, observacion;

    public ValoracionVO(String idValoracion, String idMedida, String observacion) {
        this.idValoracion = idValoracion;
        this.idMedida = idMedida;
        this.observacion = observacion;
    }

    public String getIdValoracion() {
        return idValoracion;
    }

    public void setIdValoracion(String idValoracion) {
        this.idValoracion = idValoracion;
    }

    public String getIdMedida() {
        return idMedida;
    }

    public void setIdMedida(String idMedida) {
        this.idMedida = idMedida;
    }

    public String getObservacion() {
        return observacion;
    }

    public void setObservacion(String observacion) {
        this.observacion = observacion;
    }

}
