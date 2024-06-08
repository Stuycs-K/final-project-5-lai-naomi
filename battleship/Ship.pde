public class Ship extends Draggable{
  int[] pins; 
  private Ship(){
    
  }

  public Ship(int x, int y){
   xpos = x;
   ypos = y;
   pins = new int[2];
   visible = true;
   rotation = 1;   
   image = loadImage("boat.png");
   image.resize(0, 34);
   startx = 168;
   starty = 446;
   b=false;
   
   locations = new ArrayList<String>();
   for(int i=0; i<pins.length; i++) locations.add("NA");
  }  
  
  public Ship(String loc1, String loc2){
    this(loc1.substring(0,1), Integer.parseInt(loc1.substring(1,2)), loc2.substring(0,1), Integer.parseInt(loc2.substring(1,2)));
  }
  
  public Ship(String letter1, int n1, String letter2, int n2){
    xpos = locX(letter1);
    ypos = locY(n1);
    pins = new int[2];
    visible = true;
    image = loadImage("boat.png");
    image.resize(0, 34);
    b=true;
    if(n1 != n2) rotation = 2;
    else rotation = 1;
     
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
  
  boolean onBoard(){
    if(rotation ==2) return ypos <= starty + 306;
   return super.onBoard() && xpos <= startx + 272; 
  }
  
  void stayOnBoard(){
    super.stayOnBoard();
    if(xpos >= startx + 272 && rotation !=2) xpos = startx + 272;
    if(xpos >= startx + 306 && rotation ==2) xpos = startx + 306;
  }
  
  void grid(){
    super.grid();    
   xpos -=2; 
    ypos += 4;
  }
  
  void addPin(int i){
    pins[i] = 1;
  }
  
  void d(){
    if(rotation == 2){
      rotate(PI/2.0);
      image(image, 0, -34);
    }
    else image(image, 0, 0);
  }
}
