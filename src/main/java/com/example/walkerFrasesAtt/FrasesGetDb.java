package com.example.walkerFrasesAtt;


import jakarta.annotation.PostConstruct;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import java.util.List;

@Component
public class FrasesGetDb {

    private final FrasesDataDbRepository frasesDataDbRepository;

    @Autowired
    public FrasesGetDb(FrasesDataDbRepository frasesDataDbRepository){
        this.frasesDataDbRepository = frasesDataDbRepository;
    }

    @PostConstruct
    public void exibirFrases(){
        List<FrasesDataDb> frases = frasesDataDbRepository.findAll();

        for (FrasesDataDb frase: frases){
            System.out.println(frase.getFrase());
        }
    }
}
