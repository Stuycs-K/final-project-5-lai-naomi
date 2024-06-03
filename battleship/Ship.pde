public class Ship extends Draggable{
  int[] pins;
  int rotation;  
  
  public Ship(int x, int y, int l, boolean v){
   xpos = x;
   ypos = y;
   pins = new int[l];
   visible = v;
   rotation = 1;   
   locations = new ArrayList<String>();
   image = loadImage("boat.png");
   image.resize(0, 34);
   startx = 168;
   starty = 445;
   b=false;
  }
  
  void sink(){
    
  }
  
  void r(){
    rotation++;
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
}
