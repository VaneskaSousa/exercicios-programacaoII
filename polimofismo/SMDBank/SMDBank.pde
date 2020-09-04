Conta contas[] ;
String nomes[] = new String[3];
int numContas, dia;

void setup(){
  numContas = 5;
  dia = 0;
  nomes[0] = "Vaneska";
  nomes[1] = "Larissa";
  nomes[2] = "Jonas";

  contas = new Conta[numContas];
  for(int i = 0;i < numContas;i++){
    int tipoConta = floor(random(3));
    int aleatorio = floor(random(3));
    float saldo = floor(random(1000));
    float limiteCheque = floor(random(300));
    switch(tipoConta){
      case 0:
        contas[i] = new Conta(i, nomes[aleatorio] ,saldo);
        break;
      case 1:
        // criar uma conta poupança
        contas[i] = new Poupanca(i,dia,nomes[aleatorio], saldo);
        break;
      case 2:
        // criar uma conta com cheque especial
        contas[i] = new CorrenteEspecial(i, nomes[aleatorio],saldo, limiteCheque);
        break;
    }
  }
}

void draw(){
  println("\n --- Dia " + str(++dia) + " ---");
  String  strDia = str(dia);
  
  int maxOp = ceil(random(2)); //ceil para que seja arredondado e dai vai ser sempre 1 ou 2, caso floor iria ser 0.
  for(int op = 1;op <= maxOp;op++){
    println("Operação " + str(op));
    
    int idxConta = floor(random(numContas));
    int operacao = floor(random(3));
    
    switch(operacao){
      case 0: // operação de depósito
        float valor = 1. + random(100);
        println("Fazendo depósito de " + str(valor) + " na conta " + idxConta);
        contas[idxConta].fazDeposito(valor, strDia);
        break;
      case 1:// operação de saque
        valor = random(100);
        println("Tentando fazer saque de " + str(valor) + " da conta " + idxConta);
         
        String fezSaque = (contas[idxConta].fazSaque(valor, strDia)) ? "Saque feito com sucesso!" : "Saque não efetuado!";
        println(fezSaque);
                
        //if (contas[idxConta].fazSaque(valor, strDia)){ //  Como você faria esse if-else usando um operador ternário?
        //  println("Saque feito com sucesso!");
        //}else{
        //  println("Saque não efetuado!");
        //}
        
        break;
      case 2: // operação de mostrar extrato
        println("----- Extrato dos ultimos "+ strDia + " dias ----- \n" + contas[idxConta].getExtrato()); 
        break;
    }
  } //fecha for do max de operacoes 
    
  // Imprima o extrato de todas as contas
  if(dia % 30 == 0){ //<>//
    println("\n--- Extrato de todas as contas ---"); //<>//
    for(int i = 0; i < contas.length; i++){ //<>//
      println(contas[i].getExtrato() + "\n"); //<>//
    } //<>//
  } //<>//
   //<>//
  delay(1000);
}
