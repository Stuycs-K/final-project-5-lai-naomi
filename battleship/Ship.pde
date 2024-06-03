public class Ship extends Draggable{
  int[] pins; 
 
  public Ship(int x, int y, int l, boolean v){
   xpos = x;
   ypos = y;
   pins = new int[l];
   visible = v;
   rotation = 1;   
   image = loadImage("boat.png");
   image.resize(0, 34);
   startx = 168;
   starty = 445;
   b=false;
   
   locations = new ArrayList<String>();
   for(int i=0; i<pins.length; i++) locations.add("NA");
  }
  
  public Ship(String letter1, int n1, String letter2, int n2, int l, boolean v){
    startx = 168;
    starty = 445;
    xpos = alphabet.indexOf(letter1) * 34 + startx;
    ypos = starty + (n1-1) * 34;
    pins = new int[l];
    visible = v;
    image = loadImage("boat.png");
   image.resize(0, 34);
   b=false;
   if(n1 != n2) rotation = 1;
   else rotation = 2;
   
   locations = new ArrayList<String>();
   locations.add(letter1 + n1);
   locations.add(letter2 + n2);
  }
  
  void sink(){
    
  }
  
  void r(){
    rotation++; //1: horizontal 2: vertical
    if(rotation >2) rotation = 1;
    loc();
  }
  
  String toString(){
    return "ship";
  }
  
  void grid(){
    super.grid();
    xpos -=2; 
    ypos += 4;
  }
  
  boolean onBoard(){
    if(rotation ==2) return ypos <= starty + 306;
   return super.onBoard() && xpos <= startx + 272; 
  }
  
  void stayOnBoard(){
    super.stayOnBoard();
    if(xpos >= startx + 272 && rotation !=2) xpos = startx + 272;
    if(xpos >= startx + 306 && rotation ==2) xpos = startx + 306;
  }
  
  void setStartx(int x){
    startx = x;
  }
  
  void setStarty(int y){
    starty = y;
  }
}
