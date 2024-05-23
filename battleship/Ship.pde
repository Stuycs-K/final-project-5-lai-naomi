public class Ship{
  String type;
  int[] pins;
  boolean visible;
  int xpos;
  int ypos;
  String rotation;
  
  public Ship(String typeName, int length, boolean vis, int x, int y){
   type = typeName;
   pins = new int[length];
   visible = vis;   
   xpos = x;
   ypos = y;
   rotation = "up";
  }
  
  void sink(){
    
  }
  
  void drag(){
    
  }
  
  void r(){
    
  }
}
