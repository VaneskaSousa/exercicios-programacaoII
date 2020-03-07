class Equacoes {

  public Equacoes() {
  }

  //1.a
  float calcMedia(float nota1, float nota2) {
    float media = (nota1+nota2)/2;
    return media;
  }
  //1.b
  float calcAreaCirc(float raio) {
    float areaCirc = (raio*raio)*PI;
    return areaCirc;
  }
  //1.c
  int detectaNum(int num) {
    int tipo;
    if (num > 0) {
      tipo = 1; //positivo
    } else if (num < 0) {
      tipo = -1;
    } else {
      tipo = 0;
    }
    return tipo;
  }
  //2
  ArrayList<Float> exercicio2(int qntd, float preco) {
    ArrayList<Float> array = new ArrayList();
    float total = qntd*preco;
    array.add(total); //valor a pagar sem o desconto (posição 0)
    float porcentagem = 0;
    if (qntd <= 5) {
      porcentagem = 2;
    } else if (qntd > 5 && qntd <= 10) {
      porcentagem = 3;
    } else {
      porcentagem = 5;
    }
    array.add(porcentagem); //% do desconto posição 1
    float valorP = (porcentagem*total)/100;
    array.add(valorP); // valor do desconto na posição 2
    float totalFinal = total-valorP; 
    array.add(totalFinal); //total a pagar, posição 3
    return array;
  }
  //3
  ArrayList<String> pedra_papel_tesoura(ArrayList<String> opcoes) {
    ArrayList<String> resultado = new ArrayList();
    switch(opcoes.get(0)) {
    case "a":
      resultado.add("Pedra");
      switch (opcoes.get(1)) {
      case "a":
        resultado.add("Pedra");
        resultado.add("Empate");
        break;
      case "b":
        resultado.add("Papel");
        resultado.add("Jogador 2");
        break;
      case "c":
        resultado.add("Tesoura");
        resultado.add("Jogador 1");
        break;
      default: 
        resultado.add("Deu ruim no jogador 2");
      } 
      break;
    case "b":
      resultado.add("Papel");
      switch (opcoes.get(1)) {
      case "a":
        resultado.add("Pedra");
        resultado.add("Jogador 01");
        break;
      case "b":
        resultado.add("Papel");
        resultado.add("Empate");
        break;
      case "c":
        resultado.add("Tesoura");
        resultado.add("Jogador 2");
        break;
      default: 
        resultado.add("Deu ruim no jogador 2");
      } 
      break;
    case "c":
      resultado.add("Tesoura");
      switch (opcoes.get(1)) {
      case "a":
        resultado.add("Pedra");
        resultado.add("Jogador 2");
        break;
      case "b":
        resultado.add("Papel");
        resultado.add("Jogador 1");
        break;
      case "c":
        resultado.add("Tesoura");
        resultado.add("Empate");
        break;
      default: 
        resultado.add("Deu ruim no jogador 2");
      } 
      break;
    default:
      resultado.add("Deu ruim no jogador 1");

      break;
    }
    return resultado;
  }
  //5
  boolean[][] retornaMatriz() {

    String matriz[][] = new String[3][3];
    matriz[0][0] = "3";
    matriz[0][1] = "5";
    matriz[0][2] = "2.5";
    matriz[1][0] = "16";
    matriz[1][1] = "64";
    matriz[1][2] = "9";
    matriz[2][0] = "a";
    matriz[2][1] = "b";
    matriz[2][2] = "c";

    boolean matriz_result[][] = new boolean[7][3];
    boolean teste = false;
    boolean teste2 = false;

    for (int l = 0; l < 3; l++) {
      float cond = float(matriz[0][l])+1;
      float mod = float(matriz[1][l])% 2;

      //coluna a
      if (cond >= sqrt(float(matriz[1][l])) || matriz[2][l] == "a") {
        teste2 = true;
      } else {
        teste2 = false;
      }
      matriz_result[0][l] = teste2;

      //coluna b
      if (cond >= sqrt(float(matriz[1][l])) && matriz[2][l] == "c") {
        teste2 = true;
      } else {
        teste2 = false;
      }
      matriz_result[1][l] = teste2;

      //coluna c
      if (matriz[2][l] != "a" && cond >= sqrt(float(matriz[1][l])) || mod != 0) {
        teste2 = true;
      } else {
        teste2 = false;
      }
      matriz_result[2][l] = teste2;

      //coluna d
      if (matriz[2][l] != "a" && (cond >= sqrt(float(matriz[1][l])) || mod != 0.0)) {
        teste2 = true;
      } else {
        teste2 = false;
      }
      matriz_result[3][l] = teste2;

      //coluna e
      if (!teste && (cond >= sqrt(float(matriz[1][l])) || matriz[2][l] != "b")) {
        teste2 = true;
      } else {
        teste2 = false;
      }
      matriz_result[4][l] = teste2;

      //coluna f
      if (!teste && cond >= sqrt(float(matriz[1][l])) || matriz[2][l] != "b") {
        teste2 = true;
      } else {
        teste2 = false;
      }
      matriz_result[5][l] = teste2;

      //coluna g
      if (!(cond >= sqrt(float(matriz[1][l]))) && !(teste)) {
        teste2 = true;
      } else {
        teste2 = false;
      }
      matriz_result[6][l] = teste2;
    }
    return matriz_result;
  }
  //6
  String calcFibonacci(int n) {
    ArrayList<Integer> fibonacci = new ArrayList();
    String seq = null;

    int num1 = 1, num2 = 0;

    fibonacci.add(num2);
    fibonacci.add(num1);

    for (int i = 0; i < n; i++) {
      num1 = num1 + num2;
      num2 = num1 - num2;
      fibonacci.add(num1);
    }
    //retorna a string
    for (int i = 0; i < n; i++) {
      if (seq == null) {
        seq = String.valueOf(fibonacci.get(i+1))+",";
      } else {
        seq = seq + String.valueOf(fibonacci.get(i+1))+", ";
      }
    }
    return seq;
  }
  //7
  ArrayList<String> vetores(float vetor[]) {
    ArrayList<String> vetor_result = new ArrayList();
    String vetor_l = null;
    float media = 0;
    int posMaior = 1;
    int posMenor = 1;
    float maior = vetor[0];
    float menor = vetor[0];


    for (int i = 0; i < 5; i++) {
      if (vetor_l == null) {
        vetor_l = String.valueOf(vetor[i])+", ";
      } else if (vetor_l == (String.valueOf(vetor[i])+", ")) {
        vetor_l = String.valueOf(vetor[i])+", ";
      } else {
        vetor_l = vetor_l + String.valueOf(vetor[i])+", ";
      }
      if (vetor[i] > maior) {
        maior = vetor[i];
        posMaior = i+1;
      } else if (vetor[i] < menor) {
        menor = vetor[i];
        posMenor = i+1;
      }
      media = media + vetor[i];
    }
    media = media/5;
    vetor_result.add(vetor_l);
    vetor_result.add(String.valueOf(media));
    vetor_result.add(String.valueOf(maior));
    vetor_result.add(String.valueOf(posMaior));
    vetor_result.add(String.valueOf(menor));
    vetor_result.add(String.valueOf(posMenor));

    return vetor_result;
  }
  //8
  int contadorPalavras(String frase, String palavra) {
    int repetido = 0;
    int ultimoId = 0;
    for (int x = 0; x < frase.length(); x++) {
      ultimoId = frase.indexOf(palavra, x);
      if (ultimoId == x) {
        repetido++;
      }
    }
    return repetido;
  }
  //9
  int[][] criaMatrizAleatoria() {
    int matrizAle[][] = new int[5][5];
    Random random = new Random();
    for (int c = 0; c <5; c++) {
      for (int l = 0; l <5; l++) {
        int int_random = random.nextInt(100);
        matrizAle[c][l] = int_random;
      }
    }

    return matrizAle;
  }
  //10
  ArrayList<String> manipulaMatriz(int[][] matriz, int[] posicoes) {
    ArrayList<String> array = new ArrayList();
    String acima, abaixo, direito, esquerdo;

    //teste acima e abaixo
    if (posicoes[0]==0) {
      acima = "Valor acima: Não possui";
      abaixo = "Valor abaixo: "+String.valueOf(matriz[posicoes[0]+1][posicoes[1]]);
    } else if (posicoes[0] == 4) {
      acima = "Valor acima: "+String.valueOf(matriz[posicoes[0]-1][posicoes[1]]);
      abaixo = "Valor abaixo: Não possuí";
    } else {
      acima = "Valor acima: "+String.valueOf(matriz[posicoes[0]-1][posicoes[1]]);
      abaixo = "Valor abaixo: "+String.valueOf(matriz[posicoes[0]+1][posicoes[1]]);
    }
    array.add(acima);
    array.add(abaixo);

    //teste lado direito e lado esquerdo
    if (posicoes[1] == 4) {
      direito = "Valor no lado direito: Não possuí";
      esquerdo = "Valor no lado esquerdo: "+String.valueOf(matriz[posicoes[0]][posicoes[1]-1]);
    } else if (posicoes[1] == 0) {
      direito = "Valor no lado direito: "+String.valueOf(matriz[posicoes[0]][posicoes[1]+1]);  
      esquerdo = "Valor ao lado esquerdo: Não possuí";
    } else {
      direito = "Valor no lado direito: "+String.valueOf(matriz[posicoes[0]][posicoes[1]+1]);  
      esquerdo = "Valor no lado esquerdo: "+String.valueOf(matriz[posicoes[0]][posicoes[1]-1]);
    }
    array.add(direito);
    array.add(esquerdo);

    return array;
  }
}
