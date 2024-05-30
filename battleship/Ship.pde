public class Ship{
  int[] pins;
  boolean visible;
  int xpos;
  int ypos;
  int rotation;
  PImage testShip = loadImage("boat.png");
  
  
  public Ship(int x, int y, int l, boolean v){
   xpos = x;
   ypos = y;
   pins = new int[l];
   visible = v;
   rotation = 1;
   testShip.resize(0, 30);//pins.length * 30);
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
    rotation++;
    if(rotation >2) rotation = 1;
  }
  
  void limitMovement(){
   if(xpos >= width) xpos = width-30; 
   if(xpos <= 0) xpos = 0;
   if(ypos >= height) ypos = height-30;
   if(ypos <= 0) ypos = 0;
  }
}
