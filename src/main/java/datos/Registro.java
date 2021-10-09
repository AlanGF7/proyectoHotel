package datos;

public class Registro {

    private int numHabitacion;
    private boolean activo;
    
    public Registro(){}
    
    //Guardar nueva habitación ocupada/desocupada
    public Registro(int num, boolean act){
        this.numHabitacion = num;
        this.activo = act;
    }
    
    public boolean isActivo() {
        return activo;
    }

    public void setActivo(boolean activo) {
        this.activo = activo;
    }
    
    public int getNumHabitacion() {
        return numHabitacion;
    }

    public void setNumHabitacion(int numHabitacion) {
        this.numHabitacion = numHabitacion;
    }
    
    
    
}
