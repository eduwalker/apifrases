package com.example.walkerFrasesAtt;

import jakarta.persistence.*;


@Entity
@Table(name = "frases")
public class FrasesDataDb {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id_frase")
    private Integer id_frase;

    @Column(name = "frase")
    private String frase;

    public String getFrase() {
        return frase;
    }

    public void setFrase(String frase) {
        this.frase = frase;
    }

    public Integer getId_frase() {
        return id_frase;
    }

    public void setId_frase(Integer id) {

        this.id_frase = id;
    }
}
