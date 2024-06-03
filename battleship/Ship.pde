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
  
  void sink(){
    
  }
  
  void r(){
    rotation++; //1: horizontal 2: vertical
    if(rotation >2) rotation = 1;
    loc();
  }
  
  void loc(){
    if(onBoard()){
      locations = new ArrayList<String>();
      int l = ((xpos-168)/34);// + 1;
      int num = ((ypos-446)/34 + 1);
      for(int i=0; i<pins.length; i++){
        if(i!=0){
          if(rotation==1) {
            l++;
          }
          else num+=1;
        }
        String letter = alphabet.substring(l,l+1);
        locations.add("" + letter+num);
      }
    }
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
   return super.onBoard() && xpos <= startx + 272; 
  }
  
  void stayOnBoard(){
    super.stayOnBoard();
    if(xpos >= startx + 272 && rotation !=2) xpos = startx + 272;
    if(xpos >= startx + 306 && rotation ==2) xpos = startx + 306;
  }
}
