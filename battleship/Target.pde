public class Target extends Draggable{  
  public Target(){
   visible = false;
   image = loadImage("outline.png");
   image.resize(0,34);
   startx = 168;
   starty = 39;
   xpos=startx;
   ypos=starty;
   b=true;
   rotation = -1;
   
   locations = new ArrayList<String>();
   locations.add("");
   loc();
  }
  
  String toString(){
    return "target";
  }
  
  void move(){
    super.move();    
  }
  
  boolean onBoard(){
   return super.onBoard() && xpos <= startx + 306; 
  }
  
  void stayOnBoard(){
    super.stayOnBoard();
    if(xpos >= startx + 306) xpos = startx + 306;
  }
  
  void grid(){
   super.grid(); 
   xpos -= 1.5;
   ypos += 5;
  }
}
