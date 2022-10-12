/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ModeloVO;

/**
 *
 * @author edwar
 */
public class EntrenadorVO {

    /*Atributos*/
    private String /*idEntrenador, numDoc,*/ area;

    /*Constructor*/
    public EntrenadorVO(String area) {
        /*this.idEntrenador = idEntrenador;
        this.numDoc = numDoc;*/
        this.area = area;
    }

    /*Getters y Setters*/
    /*public String getIdEntrenador() {
        return idEntrenador;
    }

    public void setIdEntrenador(String idEntrenador) {
        this.idEntrenador = idEntrenador;
    }

    public String getNumDoc() {
        return numDoc;
    }

    public void setNumDoc(String numDoc) {
        this.numDoc = numDoc;
    }*/

    public String getArea() {
        return area;
    }

    public void setArea(String area) {
        this.area = area;
    }

}
