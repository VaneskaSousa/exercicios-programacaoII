// Fonte das imagens https://br.freepik.com/vetores-premium/icone-on-e-off-botao-interruptor_3620022.htm
import javax.swing.JOptionPane;

Botao botoes[];

int numBotoes, numPorLinha, ladoImagem = 40;
int maxWidth, maxHeight;
int pontuacao;

void settings(){
  size(600, 480);
}

void setup(){
  maxWidth = 600;
  maxHeight = 480;
  
  numPorLinha = maxWidth / ladoImagem;
  numBotoes = numPorLinha * maxHeight / ladoImagem; //num botoes é calculado de acordo com o maxWidth e maxHeight, que no caso eu coloquei para ser o mesmo tamanho da tela.
  
  pontuacao = 1; //Por nenhum motivo em particular, mudei para iniciar com 1 ponto =)
  
  botoes = new Botao[numBotoes];
  for(int i = 0;i < numBotoes;i++)
    botoes[i] = new Botao(posicionaNEsimoBotaoX(i), posicionaNEsimoBotaoY(i), "verde.png", "vermelho.png", 1500);
    
  JOptionPane.showMessageDialog(null, "Bem vindo ao jogo fique-com-dor-de-cabeça!\nSe você fizer 21 pontos, você ganha e se você zerar, você perde :/");
}


/*
* Draw vai ficar sendo chamada repetidamente, 60vezes por segundo e nele vai ser alterado os estados (e imagens) do botao, 
* desenhando os botoes na tela e fica mudando o estado, de acordo com o numero de botoes (que foi calculado no setup). 
*/
void draw(){
  // Game loop  
  for(int i = 0;i < numBotoes;i++){
    botoes[i].atualizaEstado();
    botoes[i].plotBotao();
  }
}

/* Achei bacana a forma que foi usado o resto da divisão para calcular o numero de fileiras, de forma que sempre fique alternado e nao fique nenhuma img cortada. 
* Vale para o botao posicionaNEsimoBotaoX, posicionaNEsimoBotaoY e qualBotao;
*/
int posicionaNEsimoBotaoX(int indice){
  int linha = indice % numPorLinha;
  return linha * ladoImagem;
}


int posicionaNEsimoBotaoY(int indice){
  int coluna = indice / numPorLinha;
  
  return coluna * ladoImagem;
}

int qualBotao(int x, int y){
  int linha = x / ladoImagem;
  int coluna = y / ladoImagem;
  
  return linha + numPorLinha * coluna;
}

//Este metodo é chamado cada vez que há o evento de clique
void mouseClicked(){
  if(mouseX >= maxWidth) //Aqui ele testa se o clique foi dentro da interface ou nem
    return;
  
  int indiceBotao = qualBotao(mouseX, mouseY); //Aqui pega o posicionamento do botao, para poder saber logo no proximo if se foi um clique num botao on ou off
  
  if (botoes[indiceBotao].getEstado() == true){ 
    pontuacao++;  // caso tenha sido num botao on, voce ganha 1 ponto
    if(pontuacao == 21){ //testa se teve 21 pontos, se sim, voce ganhou! Não pude testar isso aqui pq me deu dor de cabeça :rocket:
      JOptionPane.showMessageDialog(null, "VOCÊ GANHOU\nATINGIU 21 PONTOS!!");
      pontuacao = 1; //se vc ganhar e depois voltar, vai resetar pra 1 novamente
    }
    botoes[indiceBotao].trocaEstado(); //Cada vez que ele acerta, troca o estado daquele botao pra nao ter apelao 
  } else{
    pontuacao--; //caso nao tenha sido, perde ponto
    if(pontuacao <= 0){ //Se zerar, voce perdeu (so conheço esse aviso)
      JOptionPane.showMessageDialog(null, "Você Perdeu!");
      pontuacao = 1; //e se você voltar a jogar, reseta o estado =)
    }
  }
  println("Atualização da pontuação: " + str(pontuacao)); //para poder acompanhar o placar
}
