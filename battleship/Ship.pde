public class Ship{
  int[] pins;
  boolean visible;
  int xpos;
  int ypos;
  int rotation;
  PImage testShip = loadImage("boat.png");
  ArrayList<String> locations;
  String alphabet = "ABCDEFGHIJK";
  
  
  public Ship(int x, int y, int l, boolean v){
   xpos = x;
   ypos = y;
   pins = new int[l];
   visible = v;
   rotation = 1;
   testShip.resize(0, 34);
   locations = new ArrayList<String>();
  }
  
  void sink(){
    
  }
  
  boolean drag(int x, int y){
    int lx = xpos;
    int rx = xpos + testShip.width;
    int uy = ypos;
    int dy = ypos + testShip.height;
    return(x >= lx && x <= rx && y >= uy && y <= dy);
  }
  
  void r(){
    rotation++;
    if(rotation >2) rotation = 1;
  }
  
  void limitMovement(){
   if(xpos >= width) xpos = width-30; 
   if(xpos <= 0) xpos = 0;
   if(ypos >= height) ypos = height-30;
   if(ypos <= 0) ypos = 0;
  }
  
  void grid(){
   xpos /= 34;
   xpos *= 34;
   ypos /= 34;
   ypos *= 34;
   ypos += 5;
   //System.out.println(xpos +"," + ypos);
  }
  
  void loc(){
    for(int p : pins){
      String letter = alphabet.substring((xpos - 169)/34,(xpos-169)/34+1);
      String num = "" + (((ypos - 445)/34) + 1);
      System.out.println(letter + " " + num);
      locations.add(letter+num);
    }
  }
}
