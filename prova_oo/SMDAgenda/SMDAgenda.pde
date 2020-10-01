Data d1,d2;
void settings(){
  size(50,50);
}

void setup(){
  d1 = new Data(28,9,2000);
  d2 = new Data(29,9,2000);

  int testaData = d1.comparaDatas(d2);
  switch (testaData){
    case 0:
      print(d1.toString() +" é a mesma data que " + d2.toString());
      break;
    case 1:
      println("A primeira data é " + d1.toString());
      break;
    case -1:
      print(d1.toString() +" é posterior de " + d2.toString());
      break;
    case 3:
      print("Deu ruim, não entrou em if nenhum");
      break;
    default:
      print("vesh");
      break;
  }
}

void draw(){
}
