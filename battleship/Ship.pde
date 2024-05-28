public class Ship{
  int[] pins;
  boolean visible;
  int xpos;
  int ypos;
  String rotation;
  PImage testShip = loadImage("testship.jpg");
  
  public Ship(int x, int y, int l, boolean v){
   xpos = x;
   ypos = y;
   pins = new int[l];
   visible = v;
   rotation = "up";
   testShip.resize(25, pins.length * 30);
  }
  
  void sink(){
    
  }
  
  void drag(){
    
  }
  
  void r(){
    
  }
}
