class Poupanca extends Conta{
  private float taxaDep = 0.2/100;
  private int dia;
  
  Poupanca(int nroConta, int dia, String nome, float saldo){
    super(nroConta, nome, saldo);
    this.dia = dia;
    this.saldo = saldo;
    this.extrato = "CONTA POUPANÇA DE NÚMERO: " + this.getNmrConta() + " DO(A) "+this.nome;
  }
  
  @Override
  public void fazDeposito(float valor, String dataAtual){
    float valorFinal = valor - (valor * taxaDep);
    super.saldo += valorFinal; //incrementa ao saldo o valor de deposito menos uma taxa de 0.2% 
    super.atualizaExtrato("Depósito realizado no dia "+dia+" no valor de:"  + str(valorFinal) +" (Deposito de " + str(valor) +" com a taxa de deposito de 0,2%)", dataAtual);
  }
}
