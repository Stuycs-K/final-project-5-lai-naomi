public class Target extends Draggable{
  String location;
  PImage tar = loadImage("outline.png");
  boolean visible;
  String alphabet = "ABCDEFGHIJK";
  
  
  public Target(){
   location = "A1";
   visible = false;
   tar.resize(34,34);
  }
  
  void setVis(boolean v){
    visible = v;  
  }
  
  void drag(){
    
  }
  
  float getX(){
    return (alphabet.indexOf(location.substring(0,1))) * 34 + 168;
  }
  
  float getY(){
   return (Integer.parseInt(location.substring(1)) - 1) * 34 + 445; 
  }
  
  void move(){
    
  }
  
  String toString(){
    return "target";
  }
  
  //boolean drag(int x, int y){
  //  int lx = xpos;
  //  int rx = xpos + testShip.width;
  //  int uy = ypos;
  //  int dy = ypos + testShip.height;
  //  return(x >= lx && x <= rx && y >= uy && y <= dy);
  //}
}
