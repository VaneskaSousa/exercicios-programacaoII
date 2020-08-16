public class Quadrado{
  private int inferiorDX;
  private int inferiorDY;
  private int tamanhoLado;
  
  Quadrado(int inferiorDX, int inferiorDY, int tamanhoLado){
    this.tamanhoLado = tamanhoLado;
    this.inferiorDX = inferiorDX;
    this.inferiorDY = inferiorDY;
  }
  
  public int getXSuperiorEsquerdo(){
    return this.inferiorDX - tamanhoLado;
    
  }
  public int getYSuperiorEsquerdo(){
    return this.inferiorDY - tamanhoLado;
  
  }
  public int getLado(){
    return this.tamanhoLado;
  }
  
  public String toString(){
    return "ahoi";
  }

}
