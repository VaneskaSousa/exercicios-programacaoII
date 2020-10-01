public class Onibus extends Automovel{
  private int numAssento = 60;
  
  public Onibus(){
    super();
    super.setTipoAutomovel("Onibus");
    super.setRenavam("10000000-30");
    super.setCombustivel(floor(random(70)));
  }
  
  public int getNumAssento(){
    return numAssento;
  }
  
  public void setNumAssento(int numAssento){
    this.numAssento = numAssento;
  }
}
