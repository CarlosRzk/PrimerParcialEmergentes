package com.emergentes.modelo;

public class Persona {
    private int id;
    private String nombrecomp;
    private int parcial1;
    private int parcial2;
    private int parcial3;
    private int nota;
    
    public Persona(){
        this.id = 0;
        this.nombrecomp = "";
        this.parcial1 = 0;
        this.parcial2 = 0;
        this.parcial3 = 0;
        this.nota = 0;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getNombrecomp() {
        return nombrecomp;
    }

    public void setNombrecomp(String nombrecomp) {
        this.nombrecomp = nombrecomp;
    }

    public int getParcial1() {
        return parcial1;
    }

    public void setParcial1(int parcial1) {
        this.parcial1 = parcial1;
    }

    public int getParcial2() {
        return parcial2;
    }

    public void setParcial2(int parcial2) {
        this.parcial2 = parcial2;
    }

    public int getParcial3() {
        return parcial3;
    }

    public void setParcial3(int parcial3) {
        this.parcial3 = parcial3;
    }

    public int getNota() {
        return nota;
    }

    public void setNota(int nota) {
        this.nota = nota;
    }

}