public class RodaDeCores{
  private color[] cores = new color[3];
  private int indiceCorAtual = 0;
  
  RodaDeCores(color c1, color c2, color c3){
    this.cores[0] = c1;
    this.cores[1] = c2;
    this.cores[2] = c3;
  }
  
  public void mudaProximaCor(){
    this.indiceCorAtual = (this.indiceCorAtual + 1) % 3;
  }
  
  public color corAtual(){
    return cores[this.indiceCorAtual];
  } 
}
