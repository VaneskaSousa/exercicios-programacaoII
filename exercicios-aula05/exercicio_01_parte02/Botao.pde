class Botao extends SwitchAleatorio{
  private PImage on;
  private PImage off;
  private int posX;
  private int posY;
  
  Botao(int x, int y, String fileOn, String fileOff, int max){
    super(int(random(500, max)));
    this.on = loadImage(fileOn);
    this.off = loadImage(fileOff);
    this.posX = x;
    this.posY = y;
  }

  
  public void plotBotao(){
    if(estado == true){
      image(this.on, this.posX, this.posY);
    }else{
      image(this.off, this.posX, this.posY);
    }
  }
}
