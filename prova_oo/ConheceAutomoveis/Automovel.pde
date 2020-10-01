public class Automovel{
  private String renavam = "01000000-59";
  private String anoFab = "2014";
  private String tipoAutomovel;
  private String corPred = "Preto";
  private int combustivel = 0;
  
  public Automovel(){
  }
  
  //Getters e setters
  public String getRenavam(){
    return renavam;
  }
  public void setRenavam(String renavam){
    this.renavam = renavam;
  }
  
  public String getAnoFab(){
    return anoFab;
  }
  public void setAnoFab(String anoFab){
    this.anoFab = anoFab;
  }
  
  public String getTipoAutomovel(){
    return tipoAutomovel;
  }
  
  public void setTipoAutomovel(String tipoAutomovel){
    this.tipoAutomovel = tipoAutomovel;
  }
  
  public String getCorPred(){
    return corPred;
  }
  public void setCorPred(String corPred){
    this.corPred = corPred;
  }
  
  public int getCombustivel(){
    return combustivel;
  }
  
  public void setCombustivel(int combustivel){
    this.combustivel = combustivel;
  }
}
