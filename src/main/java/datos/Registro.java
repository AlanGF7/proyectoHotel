package datos;

import java.util.List;

public class Registro {

    private int numHabitacion;
    private boolean activo;
    private int[] habitacion;

    public int[] getHabitacion() {
        return habitacion;
    }

    public void setHabitacion(int[] habitacion) {
        this.habitacion = habitacion;
    }

    public Registro() {
    }

    //Guardar nueva habitación ocupada/desocupada
    public Registro(int num, boolean act) {
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
