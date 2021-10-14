package datos;

import java.util.List;

public class Registro {

    private int numHabitacion;
    private boolean activo;
    private int[] habitacion;
    private List<Registro> GuardaList;

    public List<Registro> getGuardaList() {
        return GuardaList;
    }

    public void setGuardaList(List<Registro> GuardaList) {
        this.GuardaList = GuardaList;
    }

    public int[] getHabitacion() {
        return habitacion;
    }

    public void setHabitacion(int[] habitacion) {
        this.habitacion = habitacion;
    }

    public Registro() {
    }

    //Guardar nueva habitación ocupada/desocupada
    public Registro(int num) {
        this.numHabitacion = num;
        GuardaList.add(this);
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

    public String getCuarto0() {
        return cuarto0;
    }

    // LA IDEA MALA IDEA // MODO MEXICANO 
    private String cuarto0;
    private String cuarto1;
    private String cuarto2;
    private String cuarto3;
    private String cuarto4;
    private String cuarto5;
    private String cuarto6;
    private String cuarto7;
    private String cuarto8;
    private String cuarto9;

    public void setCuarto0(String cuarto0) {
        this.cuarto0 = cuarto0;
    }

    public String getCuarto1() {
        return cuarto1;
    }

    public void setCuarto1(String cuarto1) {
        this.cuarto1 = cuarto1;
    }

    public String getCuarto2() {
        return cuarto2;
    }

    public void setCuarto2(String cuarto2) {
        this.cuarto2 = cuarto2;
    }

    public String getCuarto3() {
        return cuarto3;
    }

    public void setCuarto3(String cuarto3) {
        this.cuarto3 = cuarto3;
    }

    public String getCuarto4() {
        return cuarto4;
    }

    public void setCuarto4(String cuarto4) {
        this.cuarto4 = cuarto4;
    }

    public String getCuarto5() {
        return cuarto5;
    }

    public void setCuarto5(String cuarto5) {
        this.cuarto5 = cuarto5;
    }

    public String getCuarto6() {
        return cuarto6;
    }

    public void setCuarto6(String cuarto6) {
        this.cuarto6 = cuarto6;
    }

    public String getCuarto7() {
        return cuarto7;
    }

    public void setCuarto7(String cuarto7) {
        this.cuarto7 = cuarto7;
    }

    public String getCuarto8() {
        return cuarto8;
    }

    public void setCuarto8(String cuarto8) {
        this.cuarto8 = cuarto8;
    }

    public String getCuarto9() {
        return cuarto9;
    }

    public void setCuarto9(String cuarto9) {
        this.cuarto9 = cuarto9;
    }

    //NO FUNCIONA 
    private int hab0;
    private int hab1;
    private int hab2;
    private int hab3;
    private int hab4;
    private int hab5;
    private int hab6;
    private int hab7;
    private int hab8;
    private int hab9;

    public int getHab0() {
        return hab0;
    }

    public void setHab0(int hab0) {
        this.hab0 = hab0;
    }

    public int getHab1() {
        return hab1;
    }

    public void setHab1(int hab1) {
        this.hab1 = hab1;
    }

    public int getHab2() {
        return hab2;
    }

    public void setHab2(int hab2) {
        this.hab2 = hab2;
    }

    public int getHab3() {
        return hab3;
    }

    public void setHab3(int hab3) {
        this.hab3 = hab3;
    }

    public int getHab4() {
        return hab4;
    }

    public void setHab4(int hab4) {
        this.hab4 = hab4;
    }

    public int getHab5() {
        return hab5;
    }

    public void setHab5(int hab5) {
        this.hab5 = hab5;
    }

    public int getHab6() {
        return hab6;
    }

    public void setHab6(int hab6) {
        this.hab6 = hab6;
    }

    public int getHab7() {
        return hab7;
    }

    public void setHab7(int hab7) {
        this.hab7 = hab7;
    }

    public int getHab8() {
        return hab8;
    }

    public void setHab8(int hab8) {
        this.hab8 = hab8;
    }

    public int getHab9() {
        return hab9;
    }

    public void setHab9(int hab9) {
        this.hab9 = hab9;
    }

}
