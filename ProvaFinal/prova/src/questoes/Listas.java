package questoes;

import java.util.ArrayList;
import javax.swing.JOptionPane;

/*
 * Questão 01 (1 ponto) - Diferencie um array comum de um ArrayList. Em que
 * cenário é mais adequada a utilização de um ou de outro? Construa um método
 * estático que concatena dois ArrayList que armazenam Strings passados como
 * parâmetro.
 */
public class Listas {
    private static String diferencas = "Arrays: É uma lista de variaveis do mesmo tipo e possuí o seu tamanho fixo, ou seja, definido \n"
            + "na declaração da variavel. Sua superclasse é do tipo objeto e ele tem toda a sua estrutura direta com o java\n"
            + "por exemplo: ´float arr[] = new float[15]´\n\n"
            + "ArrayLists são listas dinamicas, que não possuem tamanho definido e são oferecidas atraves do java framework\n"
            + "com isso você obtem diversos metodos que facilitam o manuseio de dados como .add, .remove e etc. por exemplo\n"
            + "`ArrayList<String> arraylistinha = new ArrayList<String>();`\n\n"
            + "É melhor usar arrays quando você sabe a quantidade de dados com o qual vai precisar lidar, de forma simples\n"
            + "e use ArrayList quando você tiver que trabalhar com dados (retorno de database, entrada e saida de dados \n"
            + "do usuario e etc) onde você precisa adicionar, remover, checar e etc.";

    public Listas() {
    }

    public static void diferenciaArrays(String nome01, String nome02, String sobrenome01, String sobrenome02) {
        /*O código comentado seria para gerar um terceiro arraylist como resultado da concatenação dos outros dois
        * porem optei por concatenar em uma grande String e exibir na mensagem;
        * Também coloquei como parametro 4 strings pq pelo que eu entendi nao pede que seja um array e sim string como 
        * parametro.
        */

        ArrayList<String> nomes = new ArrayList<String>();
        nomes.add(nome01);
        nomes.add(nome02);
        ArrayList<String> sobrenomes = new ArrayList<String>();
        sobrenomes.add(sobrenome01);
        sobrenomes.add(sobrenome02);
        String textao = "";
        //ArrayList<String> nomesCompletos = new ArrayList<String>();
        for(int i = 0; i < nomes.size(); i++){
            //nomesCompletos.add(nomes.get(i)+" "+sobrenomes.get(i));
            textao = textao + "" +nomes.get(i)+" "+sobrenomes.get(i) + "\n";
        }

        JOptionPane.showMessageDialog(null, diferencas + "\n\nAbaixo o resultado da concatenação de ArraysLists\n\n"+textao, "Q1: Diferença entre Array e ArrayList", JOptionPane.INFORMATION_MESSAGE);
    }
}
