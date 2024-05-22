public class Ship implements Rotate, Movable{
  String type;
  int[] pins;
  boolean visible;
  int xpos;
  int ypos;
  
  public Ship(String typeName, int length, boolean vis, int x, int y){
   type = typeName;
   pins = new int[length];
   visible = vis;   
   xpos = x;
   ypos = y;
  }
  
  void sink(){
    
  }
  
  void drag(){
    
  }
  
  void r(){
    
  }
}
