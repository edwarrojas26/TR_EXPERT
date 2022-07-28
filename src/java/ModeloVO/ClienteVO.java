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
public class ClienteVO {

    /*Atributos*/
    private String idCliente, numDoc;

    /*Constructor*/
    public ClienteVO(String idCliente, String numDoc) {
        this.idCliente = idCliente;
        this.numDoc = numDoc;
    }

    /*Getters y Setters*/
    public String getIdCliente() {
        return idCliente;
    }

    public void setIdCliente(String idCliente) {
        this.idCliente = idCliente;
    }

    public String getNumDoc() {
        return numDoc;
    }

    public void setNumDoc(String numDoc) {
        this.numDoc = numDoc;
    }

}
