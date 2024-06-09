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
  
  void randomxy(){
    int index;
     int n;     
     index = (int)(Math.random() * 9);
     n = (int)(Math.random() * 9 + 1);
          
     String letter = alphabet.substring(index, index+1);
     //System.out.println("Ship setuP: " + letter1 + n1 + " " + letter2 + n2); 
    
    locations.set(0, letter+n);
    System.out.println(xpos+ ","+ypos);
    updatexy();
    setVis(true);
  }
}
