public class Target extends Draggable{
  String alphabet = "ABCDEFGHIJK";
  
  public Target(){
   visible = false;
   image = loadImage("outline.png");
   image.resize(34,34);
   xpos = 169;
   ypos = 40;
   b=false;
  }
  
  String toString(){
    return "target";
  }
  
  void move(){
    super.move();    
  }
}
