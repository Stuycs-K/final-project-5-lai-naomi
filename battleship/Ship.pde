public class Ship extends Draggable{
  int[] pins;
  boolean visible;
  int rotation;
  String alphabet = "ABCDEFGHIJK";
  
  
  public Ship(int x, int y, int l, boolean v){
   xpos = x;
   ypos = y;
   pins = new int[l];
   visible = v;
   rotation = 1;   
   locations = new ArrayList<String>();
   image = loadImage("boat.png");
   image.resize(0, 34);
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
        //System.out.println(letter + " " + num);
        locations.add("" + letter+num);
      }
    }
  }
  
  void info(){
   System.out.println("(" + xpos + "," + ypos + ")"); 
  }
  
  String toString(){
    return "ship";
  }
}
