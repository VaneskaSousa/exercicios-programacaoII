class Conta{
  public String extrato;
  public String nome;
  public float saldo;
  private int nroConta;
  
  Conta(int nroConta, String nome, float saldo){
    // continuar desenvolvimento do construtor. Adicionar nome da conta no extrato
    this.nome = nome;
    this.nroConta = nroConta;
    this.saldo = saldo;
    this.extrato = "CONTA CORRENTE DE NÚMERO: "+this.nroConta+" do "+this.nome;
  }
  
  public String printSaldo(){
    return str(this.saldo);
  }
  
  private void atualizaExtrato(String novaOperacao, String dataAtual){
    this.extrato += "\nDia\t" + dataAtual + " - " + novaOperacao + "\t" + this.printSaldo();
  }
  
  public void fazDeposito(float valor, String dataAtual){
    this.saldo += valor;
    this.atualizaExtrato("Depósito: " + str(valor), dataAtual);
  }
  
  public boolean fazSaque(float valor, String dataAtual){
    // TODO - FAZER
    // lembre de atualizar o extrado, dando certo ou errado
    boolean estado = false;
    if(this.saldo >= valor){
      this.saldo -= valor;
      this.atualizaExtrato("Saque: " + str(valor),dataAtual);
      estado = true;
    }else{
      this.atualizaExtrato("TENTATIVA DE SAQUE NO VALOR DE: " + str(valor),dataAtual);
    }
    return estado;
  }
  
  public String getExtrato(){
    return this.extrato;
  }
  
  public int getNmrConta(){
    return this.nroConta;
  }
}
