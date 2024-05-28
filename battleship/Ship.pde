public class Ship{
  int[] pins;
  boolean visible;
  int xpos;
  int ypos;
  String rotation;
  PImage testShip = loadImage("boat.png");
  
  
  public Ship(int x, int y, int l, boolean v){
   xpos = x;
   ypos = y;
   pins = new int[l];
   visible = v;
   rotation = "up";
   testShip.resize(100, 0);//pins.length * 30);
   //rect(xpos, ypos, 10, 10);
  }
  
  void sink(){
    
  }
  
  boolean drag(int x, int y){
    int lx = xpos;
    int rx = xpos + testShip.width;
    int uy = ypos;
    int dy = ypos + testShip.height;
    return(x >= lx && x <= rx && y >= uy && y <= dy);
  }
  
  void r(){
    
  }
}
