void settings(){
  size(50,50);
}
void setup(){
  defineConceitos();
  explicaUML();
}
void draw(){

}

void defineConceitos(){
  print("|-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------|\n");
  print(" Questão 01 (1 ponto) - Defina o que é: \n\n" +
        " a) Classe: É a ferramenta usada para organizar em um mesmo arquivo/lugar todas\n"+
            "    as caracteristicas (atributos, propriedades, métodos) e abstrações de um objeto, ditando suas caracteristicas e comportamento;\n" + 
        " b) Objeto: São características definidas pelas casses, através da utilização destes podemos utilizar as ações e ter acesso as caracteristicas de uma classe.\n" +
            " Por exemplo: objeto é carro e a classe carro tem atributos como cor do pneu, tipo do carro, marca, ano e ações como trocar pneu e checar tanque de gasolina;\n"+ 
        " c) Construtor: Quando inicializamos um objeto é chamado o construtor, um método 'especial' que leva apenas o nome da classe (e consequentemente do objeto) e \n"+
            " nele são inicializados os atributos. Os metodos contrutores podem ou não exigir algo como parametro e podem haver metodos construtores diferente, desde que os parametros mudem.\n" + 
        " d) Método: São ações, como procedimentos e funções que vimos em MAMI;\n" + 
        " e) encapsulamento: É o ato/prática de separar a classe em partes, deixando o seu conteúdo/atributos isolados, permitindo o acesso apenas atraves de metodos (getters e setters).\n"
  );
  print("|-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------|\n");

} 
void explicaUML(){
  print(
        " Questão 03 (1 ponto) - Que tipo de relação está definida entre as classes abaixo? Defina quais elementos são comuns a todas as classes e quais são únicos de cada uma delas.\n\n"
        +" Servidor e estudante são classes filhas de Pessoa, ou seja, herdam os atributos nome, cpf, nascimento e email mas so podem modificalos atráves dos metodos de acesso (get e set) \n"
        +" O numero do siape (int nroSiape) é um atributo exclusivo dos objetos do tipo Servidor assim como o numero da matricula (int nroMatricula) é exclusivo do objeto do tipo estudante \n"
        +" Todos os atributos são privados, logo só podem ser acessados através dos metodos publico de acesso (get e set) \n"
  );
  print("|-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------|\n");
}
