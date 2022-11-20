
package ModeloVO;

import java.io.InputStream;


public class TipoEjercicioVO {
    
    String idTE, nombre, descricpion, series, repeticiones, descanso, peso;
    InputStream img;
    
    public TipoEjercicioVO(){
    }
    
    public TipoEjercicioVO (String idTE, String nombre,InputStream img, String descripcion, String series, String repeticiones, String descanso, String peso) {
        this.idTE = idTE;
        this.nombre = nombre;
        this.img = img;
        this.descricpion = descripcion;
        this.series = series;
        this.repeticiones = repeticiones;
        this.descanso = descanso;
        this.peso = peso;
        
    }

    
    public String getIdTE() {
        return idTE;
    }

    public void setIdTE(String idTE) {
        this.idTE = idTE;
    }
    
    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }
    
    public InputStream getImg() {
        return img;
    }

    public void setImg(InputStream foto) {
        this.img = foto;
    }

    public String getDescricpion() {
        return descricpion;
    }

    public void setDescricpion(String descricpion) {
        this.descricpion = descricpion;
    }

    public String getSeries() {
        return series;
    }

    public void setSeries(String series) {
        this.series = series;
    }

    public String getRepeticiones() {
        return repeticiones;
    }

    public void setRepeticiones(String repeticiones) {
        this.repeticiones = repeticiones;
    }

    public String getDescanso() {
        return descanso;
    }

    public void setDescanso(String descanso) {
        this.descanso = descanso;
    }

    public String getPeso() {
        return peso;
    }

    public void setPeso(String peso) {
        this.peso = peso;
    }
    
    
}
