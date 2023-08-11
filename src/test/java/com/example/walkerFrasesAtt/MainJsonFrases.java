package com.example.walkerFrasesAtt;

import com.fasterxml.jackson.databind.ObjectMapper;

import java.util.List;
import java.util.Random;

public class MainJsonFrases {
    public static void main(String[] args) {


        String[] mensagensMotivacionais =
                {
                        "Parabéns! Você é tão produtivo quanto uma lesma em câmera lenta.",
                        "Lembre-se, mesmo que tudo pareça dar errado, você ainda pode culpar a má configuração do universo.",
                        "Seus erros são tão raros quanto um unicórnio dançando salsa.",
                        "Seja sempre você mesmo, a menos que você possa ser um unicórnio. Então, seja um unicórnio."};



        ObjectMapper objectMapper = new ObjectMapper();
        Random aleatoria = new Random();
        int indexMsg = aleatoria.nextInt(mensagensMotivacionais.length);
        String msgAleatoria = mensagensMotivacionais[indexMsg];


        MensagensMotivacionaisJson mensagensMotivacionaisJson = new MensagensMotivacionaisJson(
                List.of(msgAleatoria));

        try {

            String json = objectMapper.writeValueAsString(mensagensMotivacionaisJson);
            System.out.println(json);


        }catch (Exception e){
            e.printStackTrace();
        }

    }
}
