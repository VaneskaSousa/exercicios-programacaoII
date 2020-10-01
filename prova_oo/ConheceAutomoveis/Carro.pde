public class Carro extends Automovel{
  private int numPortas = 4;
  
  public Carro(){
    super();
    super.setTipoAutomovel("Carro");
    super.setRenavam("20000000-30");
    super.setCombustivel(floor(random(50)));
  }
  
  public int getNumPortas(){
    return numPortas;
  }
  
  public void setNumPortas(int numPortas){
    this.numPortas = numPortas;
  }
}
