public class Target extends Draggable{
  String location;
  boolean visible;
  String alphabet = "ABCDEFGHIJK";
  
  public Target(){
   location = "A1";
   visible = false;
   image = loadImage("outline.png");
   image.resize(34,34);
   xpos = getX();
   ypos = getY();
  }
  
  void setVis(boolean v){
    visible = v;  
  }
  
  int getX(){
    return (alphabet.indexOf(location.substring(0,1))) * 34 + 168;
  }
  
  int getY(){
   return (Integer.parseInt(location.substring(1)) - 1) * 34 + 445; 
  }
  
  String toString(){
    return "target";
  }
}
