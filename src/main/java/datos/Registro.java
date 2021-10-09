package datos;

import java.util.List;

public class Registro {

    private int numHabitacion;
    private boolean activo;
    List Ocupada = null ;
    
    public Registro(){}
    
    //Guardar nueva habitación ocupada/desocupada
    public Registro(int num, boolean act){
        this.numHabitacion = num;
        this.activo = act;
        getHab(act);
    }
    
    public boolean isActivo() {
        return activo;
    }

    public void setActivo(boolean activo) {
        getHab(activo);
        this.activo = activo;
    }
    
    public int getNumHabitacion() {
        return numHabitacion;
    }

    public void setNumHabitacion(int numHabitacion) {
        this.numHabitacion = numHabitacion;
    }
    
    public void getHab(boolean llave){
        Ocupada.add(llave);
    }
    
}
