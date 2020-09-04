class CorrenteEspecial extends Conta{
  private float limite;
  
  CorrenteEspecial(int nroConta, String nome, float saldo, float limite){
    super(nroConta, nome, saldo);
    this.limite = limite;
    this.saldo = saldo;
    this.extrato = "CONTA CORRENTE COM CHEQUE ESPECIAL DE NÚMERO: " + this.getNmrConta() + " DO(A) "+this.nome + " COM LIMITE DE: " + this.limite;
  }
  
  @Override
  public boolean fazSaque(float valor, String dataAtual){
    boolean estado = false;
    
    if(this.saldo >= valor){ //saque sem usar o limite especial
      this.saldo -= valor;
      super.atualizaExtrato("Saque: " + str(valor),dataAtual);
      estado = true;
    }else{
      if((valor > saldo) && (this.limite >= valor)){
        this.limite -= valor;
        super.atualizaExtrato("Saldo em conta insuficiente, saque realizado com cheque especial no valor de: " + str(valor) +" Limite restante do cheque especial: "+this.limite,dataAtual);
      }else{
        super.atualizaExtrato("TENTATIVA DE SAQUE NO VALOR DE: " + str(valor),dataAtual);
      }
    }
    return estado;
  }
  
}
