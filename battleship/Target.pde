public class Target extends Draggable{  
  public Target(){
   visible = false;
   image = loadImage("outline.png");
   image.resize(0,34);
   xpos = 168;
   ypos = 39;
   startx = 168;
   starty = 39;
   b=false;
   rotation = -1;
   
   locations = new ArrayList<String>();
   locations.add("");
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
