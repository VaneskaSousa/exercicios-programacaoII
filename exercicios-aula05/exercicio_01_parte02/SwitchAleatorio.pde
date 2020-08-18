class SwitchAleatorio{
  boolean estado;
  int maxTempo, lastTimepoint;
  
  SwitchAleatorio(int max){
    this.estado = false;
    this.maxTempo = max;
    this.lastTimepoint = 0;
  }
  
  public void atualizaEstado(){
    int curTimepoint = millis();
  
    //Testa se chegou ao tempo maximo 
    if(curTimepoint - this.lastTimepoint >= this.maxTempo){
      this.lastTimepoint = curTimepoint;
      
      this.trocaEstado();
    }
  }
  
  public void trocaEstado(){
    // Inverte a situação do estado atual (positivo vira negativo, negatvo vira positivo
    this.estado = !this.estado; 
    
    this.lastTimepoint = millis(); //Guarda o ultimo milisegundo
  }
  
  public boolean getEstado(){
    return this.estado;
  }
}
