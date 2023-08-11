package com.example.walkerFrasesAtt;
import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RestController;

import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import java.util.Random;
@RestController
public class ControladorMensagem {

    private final FraseServiceDb fraseServiceDb;

    @Autowired
    public ControladorMensagem(FraseServiceDb fraseServiceDb){

        this.fraseServiceDb = fraseServiceDb;
    }


    @GetMapping("/motivacional/mensagem")
    public String getMensagemAleatoria(){
        List<FrasesDataDb> frases = fraseServiceDb.getAllFrases();
        if (frases.isEmpty()){
            return "Nenhuma frase encontrada no banco de Dados";
        }

        Random aleatorio = new Random();
        int index = aleatorio.nextInt(frases.size());
        return frases.get(index).getFrase();
    }



    @GetMapping("/motivacional/mensagem/all")
    public List<FrasesDataDb> getMensagemJson(){

        return fraseServiceDb.getAllFrases();
    }


    @GetMapping("/motivacional/mensagem/aleatoria")
    public String getMensagemAleatoriaJson() throws JsonProcessingException {
        ObjectMapper objectMapper = new ObjectMapper();
        List<FrasesDataDb> msgList = fraseServiceDb.getAllFrases();
        Collections.shuffle(msgList);

        Random aleatorio = new Random();
        int index = aleatorio.nextInt(msgList.size());
        var msgAleatoriaIdx = msgList.get(index).getFrase();

        MensagensMotivacionaisJson msgMotvParseJson = new MensagensMotivacionaisJson(List.of(msgAleatoriaIdx));
        return objectMapper.writeValueAsString(msgMotvParseJson);
    }

    @GetMapping("/motivacional/mensagem/{id}")
    public String getMensagemId(@PathVariable Integer id) throws JsonProcessingException {

       FrasesDataDb msgId = fraseServiceDb.getFraseById(id);
        if(msgId == null){
            return "ID da mensagem não encontrado!";
        }else {
            ObjectMapper objectMapper = new ObjectMapper();
            String msgSelect = msgId.getFrase();
            MensagensMotivacionaisJson msgMotvParseJson = new MensagensMotivacionaisJson(List.of(msgSelect));
            return objectMapper.writeValueAsString(msgMotvParseJson);
        }
    }

}
