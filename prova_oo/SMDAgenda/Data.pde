public class Data{
  private int dia;
  private int mes;
  private int ano;
  
  public Data(int dia, int mes, int ano){
    this.dia = dia;
    this.mes = mes;
    this.ano = ano;
  }
  
  public int comparaDatas(Data d2){
    int estado = 3;
    boolean diaAnt = (this.dia < d2.getDia()) ? true : false;
    boolean mesAnt = (this.mes < d2.getMes()) ? true : false;
    boolean anoAnt = (this.ano < d2.getAno()) ? true : false;
    
    if(this.dia == d2.getDia() && this.mes == d2.getMes() && this.ano == d2.getAno()){
      estado = 0;
    } else{
      if(anoAnt){
        estado = 1;
      }else{
        if(mesAnt){
          estado = 1;
        }else{
          if(diaAnt && this.mes == d2.getMes()){
            estado = 1;
          }else{
            estado = -1;
          }
        }
      }
    }
    
    return estado;
  }
  
  public String toString(){
    String dataS = str(getDia())+"/"+str(getMes())+"/"+str(getAno());
    return dataS;
  }
  
  public int getDia(){
    return dia;
  }
  
  public int getMes(){
    return mes;
  }
  
  public int getAno(){
    return ano;
  }
}
