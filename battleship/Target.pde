public class Target extends Draggable{  
  //int xpos, ypos, startx, starty;
  //PImage image;
  //ArrayList<String> locations;
  //boolean visible, b; // b: if the object is on the board  
  //String alphabet = "ABCDEFGHIJK";
  public Target(){
   visible = false;
   image = loadImage("outline.png");
   image.resize(0,34);
   xpos = 168;
   ypos = 39;
   startx = 168;
   starty = 39;
   b=false;
   locations = new ArrayList<String>();
  }
  
  String toString(){
    return "target";
  }
  
  void move(){
    super.move();    
  }
  
  void grid(){
    super.grid();
    xpos -= 2;
    ypos += 6;
  }
  
  boolean onBoard(){
   return super.onBoard() && xpos <= startx + 306; 
  }
  
  void stayOnBoard(){
    super.stayOnBoard();
    if(xpos >= startx + 306) xpos = startx + 306;
  }
}
