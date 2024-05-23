public class Ship{
  String type;
  int[] pins;
  boolean visible;
  int xpos;
  int ypos;
  String rotation;
  PImage boat;
  
  public Ship(String typeName, int length, boolean vis, int x, int y, String imageName){
   type = typeName;
   pins = new int[length];
   visible = vis;   
   xpos = x;
   ypos = y;
   rotation = "up";
   boat = loadImage(imageName);
  }
  
  void sink(){
    
  }
  
  void drag(){
    
  }
  
  void r(){
    
  }
}
