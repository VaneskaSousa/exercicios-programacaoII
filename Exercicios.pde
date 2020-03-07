import javax.swing.JOptionPane;
import java.util.Random;

class Exercicios {
  public Equacoes equacoes;
  public String opExerc;
  public String numExerc;


  public Exercicios() {
  }

  void opcExerc(String numExerc) {
    switch (numExerc) {
    case "1":
      exercUm();
      break;

    case "2":
      exercDois();      
      break;

    case "3":
      exercTres();      
      break;
    case "4":
      exercQuatro();
      break;

    case "5":
      exercCinco();      
      break;

    case "6":
      exercSeis();
      break;

    case "7":
      exercSete();
      break;

    case "8":
      exercOito();
      break;

    case "9":
      exercNove();
      break;

    case "10":
      exercDez();
      break;
    }
  }
  void refazer() {
    String numExerc = JOptionPane.showInputDialog(null, "Escolha qual exercicio quer testar agora (1 a 10)\nPara sair digite 0 ou clique em cancelar");
    if (numExerc == "0" || numExerc == null) {
      exit();
    } else {
      opcExerc(numExerc);
    }
  }

  void exercUm() {
    equacoes = new Equacoes();
    opExerc = JOptionPane.showInputDialog(null, "Digite qual item você deseja testar. \nAs opções são: a, b ou c").toLowerCase();

    switch (opExerc) {
    case "a":
      float nota1 = float(JOptionPane.showInputDialog(null, "Digite o valor da 1ª nota (0.0):"));
      float nota2 = float(JOptionPane.showInputDialog(null, "Digite o valor da 2ª nota (0.0):"));
      float media = equacoes.calcMedia(nota1, nota2);
      JOptionPane.showMessageDialog(null, "A média de "+nota1+" e "+nota2+" é: "+media);
      break;

    case "b":
      float raio = float(JOptionPane.showInputDialog(null, "Digite do raio:"));
      float areaCirc = equacoes.calcAreaCirc(raio);
      JOptionPane.showMessageDialog(null, "A área da circuferencia, cujo raio é de "+raio+", é de: "+areaCirc);
      break;

    case "c":
      int num = int(JOptionPane.showInputDialog(null, "Digite qualquer número inteiro:"));
      int tipo = equacoes.detectaNum(num);
      if (tipo == 1) {
        JOptionPane.showMessageDialog(null, "O número "+num+" é positivo");
      } else if (tipo == -1) {
        JOptionPane.showMessageDialog(null, "O número "+num+" é negativo");
      } else {
        JOptionPane.showMessageDialog(null, "O número "+num+" é zero");
      }
      break;
    default:
      JOptionPane.showMessageDialog(null, "Digite uma opção valida");
      refazer();
      break;
    }
    refazer();
  }
  void exercDois() {
    equacoes = new Equacoes();
    String descP = JOptionPane.showInputDialog(null, "Qual o nome (descrição) do produto desejado?");
    float preco = float(JOptionPane.showInputDialog(null, "Qual o preço unitario do produto?"));
    int qntd = int(JOptionPane.showInputDialog(null, "Qual a quantidade desejada?\nApenas número inteiro e positivo"));

    ArrayList<Float> array = equacoes.exercicio2(qntd, preco);

    JOptionPane.showMessageDialog(null, "Nome/descrição: "+descP+"\nPreço Unitario: "+preco+
      "\nQuantidade: "+qntd+"\nPreço sem desconto: R$ "+array.get(0)+"\nTotal a pagar com o desconto de "+array.get(1)+"% (R$ "+array.get(2)+") é de: "+array.get(3));
    refazer();
  }
  void exercTres() {
    equacoes = new Equacoes();
    ArrayList<String> opcoes = new ArrayList();

    opcoes.add(JOptionPane.showInputDialog(null, "Jogador 01 - Digite a LETRA da opção que você deseja:\na - Pedra\nb - Papel\nc - Tesoura\nLetra minuscula"));
    opcoes.add(JOptionPane.showInputDialog(null, "Jogador 02 - Digite a LETRA da opção que você deseja:\na - Pedra\nb - Papel\nc - Tesoura\nLetra minuscula"));
    ArrayList<String> resultado = equacoes.pedra_papel_tesoura(opcoes);

    JOptionPane.showMessageDialog(null, "Jogador 01: "+resultado.get(0)+"\nJogador 02: "+resultado.get(1)+"\nVencedor: "+resultado.get(2));
    refazer();
  }
  void exercQuatro() {
    JOptionPane.showMessageDialog(null, "A) Não sei o que é rastreio xinês, nem achei na internet kk. Mas o algoritmo basicamente "+
      "faz o i crescer 5 e o j decair 5 e conta quantas vezes i e j se encontram (são iguais);"+"\nB) j == 1\nC) i == 1\nD) contIguais == 5");
    refazer();
  }
  void exercCinco() {
    equacoes = new Equacoes();
    boolean matriz_result[][] = equacoes.retornaMatriz();

    //exibe
    println("Exercicio 5");
    for (int c = 0; c<7; c++) {
      for (int l = 0; l<3; l++) {
        print(matriz_result[c][l]+", ");
      }
      println("");
    }
    JOptionPane.showMessageDialog(null, "Confira o console");
    refazer();
  }

  void exercSeis() {
    equacoes = new Equacoes();
    int totalF = 0;

    while (totalF <= 2) {
      totalF = Integer.parseInt((JOptionPane.showInputDialog(null, "Digite um numero maior que 2 para ser calculado a serie de fibonacci")));
    }
    JOptionPane.showMessageDialog(null, "A sequencia de Fibonacci para "+totalF+" números é:\n"+ equacoes.calcFibonacci(totalF));
    refazer();
  }

  void exercSete() {
    equacoes = new Equacoes();
    float vetor[] = {1, 2, 5, 4.5, 3};
    ArrayList<String> result = equacoes.vetores(vetor);
    JOptionPane.showMessageDialog(null, "Elementos: "+result.get(0)+"\nMedia: "+result.get(1)+"\nMaior valor: "+result.get(2)+"\nPosição do maior valor: "+result.get(3)+"\nMenor valor: "
      +result.get(4)+"\nPosição do menor valor: "+result.get(5));
    refazer();
  }

  void exercOito() {
    equacoes = new Equacoes();

    String frase = JOptionPane.showInputDialog(null, "Digite a frase");
    println("====");
    println(frase);
    String palavra = JOptionPane.showInputDialog(null, "Digite a palavra que deseja contar as repetições");
    println(palavra);
    int repetido = equacoes.contadorPalavras(frase.toLowerCase(), palavra.toLowerCase());
    JOptionPane.showMessageDialog(null, "A palavra " + palavra + " é repetida " + repetido + " vezes na frase abaixo:\n"+frase);
    refazer();
  }

  void exercNove() {
    equacoes = new Equacoes();

    int matriz_result[][] = equacoes.criaMatrizAleatoria();
    println("Exercicio 9");
    for (int c = 0; c<5; c++) {
      for (int l = 0; l<5; l++) {
        print(matriz_result[c][l]+", ");
      }
      println("");
    }
    JOptionPane.showMessageDialog(null, "Cheque o console");
    refazer();
  }

  void exercDez() {
    equacoes = new Equacoes();
    Random r = new Random();

    int[][] matriz = new int[5][5];
    int[] posicoes = new int[2];

    //preenche e exibe matriz (Item a)
    println("\nItem A:");
    for (int c = 0; c <5; c++) {
      print("Coluna "+(c+1)+": ");
      for (int l = 0; l<5; l++) {
        matriz[c][l] = r.nextInt(99);
        print(matriz[c][l]+",");
      }
      println("");
    }

    for (int i = 0; i < 2; i++) {
      posicoes[i] = int(JOptionPane.showInputDialog("Digite o "+(i+1)+"º numero inteiro entre 1 e 5"))-1;
    }
    ArrayList<String> resultado = equacoes.manipulaMatriz(matriz, posicoes);
    
    println("\nItem B: O elemento na coluna "+(posicoes[0]+1)+" e na linha "+(posicoes[1]+1)+" é: "+matriz[posicoes[0]][posicoes[1]]);
    println("\nItem C:");
    
    for(int i = 0; i < resultado.size(); i++){
      println(resultado.get(i));
    }
    
    refazer();
  }
}
