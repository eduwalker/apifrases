package com.example.walkerFrasesAtt;
import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import java.util.Random;

@RestController
public class ControladorMensagem {


    private final String json;



    MensagensMotivacionaisData mensagensData = new MensagensMotivacionaisData();

     String[] mensagensMotivacionais = mensagensData.getMotivacionalMensagens();

    MensagensMotivacionaisJson mensagensMotivacionaisJson = new MensagensMotivacionaisJson(Arrays.asList(mensagensMotivacionais));


    ObjectMapper objectMapper = new ObjectMapper();



    public ControladorMensagem() throws JsonProcessingException {

        json = objectMapper.writeValueAsString(mensagensMotivacionaisJson);
    }


    @GetMapping("/motivacional-mensagem")
    public String getMensagemAleatoria() {
        Random aleatorio = new Random();
        int index = aleatorio.nextInt(mensagensData.getMotivacionalMensagens().length);
        return mensagensMotivacionais[index];
    }


    @GetMapping("/motivacional-mensagem-json")
    public String getMensagensJson() {
        return json;
    }



}
