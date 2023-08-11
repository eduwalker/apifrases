package com.example.walkerFrasesAtt;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

@Service
public class FraseServiceDb {
    private  final FrasesDataDbRepository frasesDataDbRepository;

    @Autowired
    public FraseServiceDb(FrasesDataDbRepository frasesDataDbRepository){
        this.frasesDataDbRepository = frasesDataDbRepository;
    }

    public List<FrasesDataDb> getAllFrases(){
        return frasesDataDbRepository.findAll();
    }

    public FrasesDataDb getFraseById(Integer id){
        Optional<FrasesDataDb> optionalFrase = frasesDataDbRepository.findById(id);
        return optionalFrase.orElse(null);
    }
}
