public class Caminhao extends Automovel{
  private int numEixo = 8;
  
  public Caminhao(){
    super();
    super.setTipoAutomovel("Caminhão");
    super.setRenavam("59000000-40");
    super.setCombustivel(100);
  }
  
  public int getNumEixo(){
    return numEixo;
  }
  
  public void setNumEixo(int numEixo){
    this.numEixo = numEixo;
  }
}
