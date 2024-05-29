public class Pin{
  int xpos;
  int ypos;
  PImage pinImage = loadImage("pinImage.png");
  
  public Pin(int x, int y){
    xpos = x;
    ypos = y;
    pinImage.resize(25,0);
  }
}
