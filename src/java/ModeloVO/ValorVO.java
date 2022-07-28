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
public class ValorVO {

    private String idMedida, idCliente, fecha, valor;

    public ValorVO(String idMedida, String idCliente, String fecha, String valor) {
        this.idMedida = idMedida;
        this.idCliente = idCliente;
        this.fecha = fecha;
        this.valor = valor;
    }

    public String getIdMedida() {
        return idMedida;
    }

    public void setIdMedida(String idMedida) {
        this.idMedida = idMedida;
    }

    public String getIdCliente() {
        return idCliente;
    }

    public void setIdCliente(String idCliente) {
        this.idCliente = idCliente;
    }

    public String getFecha() {
        return fecha;
    }

    public void setFecha(String fecha) {
        this.fecha = fecha;
    }

    public String getValor() {
        return valor;
    }

    public void setValor(String valor) {
        this.valor = valor;
    }

}
