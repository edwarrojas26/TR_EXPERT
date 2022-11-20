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
public class EjercicioVO {

    private String idEjercicio, idPlanFK, idClienteFK, idTipoEjercicioFK;

    public EjercicioVO(String idEjercicio, String idPlanFK, String idClienteFK, String idTipoEjercicioFK) {
        this.idEjercicio = idEjercicio;
        this.idPlanFK = idPlanFK;
        this.idClienteFK = idClienteFK;
        this.idTipoEjercicioFK = idTipoEjercicioFK;
    }
    
    public EjercicioVO(){
    }

    public String getIdEjercicio() {
        return idEjercicio;
    }

    public void setIdEjercicio(String idEjercicio) {
        this.idEjercicio = idEjercicio;
    }

    public String getIdPlanFK() {
        return idPlanFK;
    }

    public void setIdPlanFK(String idPlanFK) {
        this.idPlanFK = idPlanFK;
    }

    public String getIdClienteFK() {
        return idClienteFK;
    }

    public void setIdClienteFK(String idClienteFK) {
        this.idClienteFK = idClienteFK;
    }

    public String getIdTipoEjercicioFK() {
        return idTipoEjercicioFK;
    }

    public void setIdTipoEjercicioFK(String idTipoEjercicioFK) {
        this.idTipoEjercicioFK = idTipoEjercicioFK;
    }
    
}
