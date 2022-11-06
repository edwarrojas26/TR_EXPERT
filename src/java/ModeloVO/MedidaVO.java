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
public class MedidaVO {

   private String idMedida, idPlanFk, idClienteFk, CodigoFk, valorI, valorF;
   
   public MedidaVO(){

   }

    public MedidaVO(String idMedida, String idPlanFk, String idClienteFk, String CodigoFk, String valorI, String valorF) {
        this.idMedida = idMedida;
        this.idPlanFk = idPlanFk;
        this.idClienteFk = idClienteFk;
        this.CodigoFk = CodigoFk;
        this.valorI = valorI;
        this.valorF = valorF;
    }

    public String getIdMedida() {
        return idMedida;
    }

    public void setIdMedida(String idMedida) {
        this.idMedida = idMedida;
    }

    public String getIdPlanFk() {
        return idPlanFk;
    }

    public void setIdPlanFk(String idPlanFk) {
        this.idPlanFk = idPlanFk;
    }

    public String getIdClienteFk() {
        return idClienteFk;
    }

    public void setIdClienteFk(String idClienteFk) {
        this.idClienteFk = idClienteFk;
    }

    public String getCodigoFk() {
        return CodigoFk;
    }

    public void setCodigoFk(String CodigoFk) {
        this.CodigoFk = CodigoFk;
    }

    public String getValorI() {
        return valorI;
    }

    public void setValorI(String valorI) {
        this.valorI = valorI;
    }

    public String getValorF() {
        return valorF;
    }

    public void setValorF(String valorF) {
        this.valorF = valorF;
    }
    
    
   
   
   

}
