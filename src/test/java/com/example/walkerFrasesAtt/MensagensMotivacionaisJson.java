package com.example.walkerFrasesAtt;

import java.util.List;

public class MensagensMotivacionaisJson {
    private List<String> mensagens;

    public MensagensMotivacionaisJson(List<String> mensagens){
        this.mensagens = mensagens;
    }

    public List<String> getMensagens(){
        return mensagens;
    }
}
