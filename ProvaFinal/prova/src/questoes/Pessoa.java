package questoes;

/*
 * Construa uma classe Pessoa cujo estado é definido pelos atributos
nome e idade e cujo comportamento é definido pelos seus getters() e setters(). Nesta
classe, construa também um método estático maisNovo() que recebe como parâmetro 2
objetos do tipo Pessoa e retorna aquele com o menor valor de idade. ATENÇÃO: seu
método deve retornar uma Pessoa, qualquer retorno diferente disso será desconsiderado
(um inteiro, uma String, por exemplo).
 */
public class Pessoa {
    private String nome;
    private int idade;

    public Pessoa(){

    }

    public Pessoa maisVelho(Pessoa p1, Pessoa p2) throws Exception{
        Pessoa p = new Pessoa();
        if(p1.getIdade() > p2.getIdade()){
            p = p1;
        }else if(p1.getIdade() < p2.getIdade()){
            p = p2;
        } else{
            throw new Exception("Idades iguais ou dado incompativel");    
        }
        return p;
    }

    public Pessoa maisNovo(Pessoa p1, Pessoa p2) throws Exception{
        Pessoa p = new Pessoa();
        if(p1.getIdade() > p2.getIdade()){
            p = p2;
        }else if(p1.getIdade() < p2.getIdade()){
            p = p1;
        } else{
            throw new Exception("Idades iguais ou dado incompativel");    
        }
        return p;
    }

    public String getNome() {
        return this.nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public int getIdade() {
        return this.idade;
    }

    public void setIdade(int idade) {
        this.idade = idade;
    }

}
