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
public class TipoMedidaVO {

    private String codigo, nombreParte, categoria;

    public TipoMedidaVO() {
    }

    public TipoMedidaVO(String codigo, String nombreParte, String categoria) {
        this.codigo = codigo;
        this.nombreParte = nombreParte;
        this.categoria = categoria;
    }

    public String getCodigo() {
        return codigo;
    }

    public void setCodigo(String codigo) {
        this.codigo = codigo;
    }

    public String getNombreParte() {
        return nombreParte;
    }

    public void setNombreParte(String nombreParte) {
        this.nombreParte = nombreParte;
    }

    public String getCategoria() {
        return categoria;
    }

    public void setCategoria(String categoria) {
        this.categoria = categoria;
    }

}
