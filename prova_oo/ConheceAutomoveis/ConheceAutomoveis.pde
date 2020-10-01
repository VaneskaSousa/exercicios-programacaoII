private int tipoAut;

public void settings(){
  size(50,50);
}

public void setup(){
  tipoAut = 3;
  print("Foi mal pela simplicidade, professor, mas essa semana foi complicada :/ \n\n\n");
  for(int i = 0;i < tipoAut;i++){
    switch(i){
        case 0:
          Caminhao caminhao = new Caminhao();
          caminhao.setCorPred("Vermelho");
          
          print(caminhao.getTipoAutomovel() + "\n"+
              "Cor: "+caminhao.getCorPred() + "\n" + 
              "Ano de fabricação: "+caminhao.getAnoFab()+ "\n" +
              "Combustivel: "+caminhao.getCombustivel()+ "\n" +
              "Numero de eixos: " + caminhao.getNumEixo() + "\n"+
              "RENAVAM: "+caminhao.getRenavam() + "\n\n\n"
          );
          break;
        case 1:
          Carro carro = new Carro();
          carro.setCorPred("Roxo");
          
          print(carro.getTipoAutomovel() + "\n"+
              "Cor: "+carro.getCorPred() + "\n" + 
              "Ano de fabricação: "+carro.getAnoFab()+ "\n" +
              "Combustivel: "+carro.getCombustivel()+ "\n" +
              "Numero de portas: " + carro.getNumPortas() + "\n"+
              "RENAVAM: "+carro.getRenavam() + "\n\n\n"
          );
          break;
        case 2:
          Onibus onibus = new Onibus();
          onibus.setCorPred("Vermelho");
          
          print(onibus.getTipoAutomovel() + "\n"+
              "Cor: "+onibus.getCorPred() + "\n" + 
              "Ano de fabricação: "+onibus.getAnoFab()+ "\n" +
              "Combustivel: "+onibus.getCombustivel()+ "\n" +
              "Numero de Assentos: " + onibus.getNumAssento() + "\n"+
              "RENAVAM: "+onibus.getRenavam() + "\n\n\n"
          );
          break;
      }
  }
}

public void draw(){
}
