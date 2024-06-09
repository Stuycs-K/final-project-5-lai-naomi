public class Draggable{
  int xpos, ypos, startx, starty;
  PImage image;
  ArrayList<String> locations;
  boolean visible, b; // b: if the object is on the board  
  String alphabet = "ABCDEFGHIJK";
  int rotation;
 
 void r(){
   
 }
 
 String toString(){
  return "draggable"; 
 }
 
 void move(){
    xpos = mouseX; 
    ypos = mouseY;    
    grid();
    if(onBoard()) b=true;
    limitMovement();
    loc(); //updates locations according to x and y  
    info();
  }
  
  void grid(){
   xpos = (xpos/34)*34;
   ypos = (ypos/34)*34;
  }
  
  void limitMovement(){
   if(b) stayOnBoard();
   if(xpos >= width) xpos = width-30; 
   if(xpos <= 0) xpos = 0;
   if(ypos >= height) ypos = height-30;
   if(ypos <= 0) ypos = 0;
  }
  
  void stayOnBoard(){
    if(xpos <= startx) xpos=startx;
    if(ypos <= starty) ypos = starty;
    if(ypos >= starty+304){
      if(rotation != 2) ypos = starty+304;
      else ypos = starty+274;
    }
  }
  
  boolean drag(int x, int y){
    int lx = xpos;
    int rx = xpos + image.width;
    int uy = ypos;
    int dy = ypos + image.height;
    return(x >= lx && x <= rx && y >= uy && y <= dy);
  }
  
  String getLoc(){
    String ans = "";
    for(String loc : locations) ans = ans + loc + " ";
    ans = ans.substring(0,ans.length());
    if(ans!="") return ans;
    return "null";
  }
  
  void loc(){
    if(b) {
      String letter = toLocx(xpos);
      int num = toLocy(ypos);
      for(int i=0; i<locations.size(); i++){
        if(i!=0){
          if(rotation==1) letter = toLocx(xpos+34);
          else if(rotation==2) num+=1;
        }
        locations.set(i,"" + letter+num);
      }
    }
  }
  
  boolean onBoard(){
    if(rotation ==2) return (xpos >= startx && ypos >= starty && ypos <= starty+272);
    return (xpos >= startx &&  ypos >= starty && ypos <= starty + 340);
  }
  
  void setVis(boolean v){
    visible = v;
  }
  
  void info(){
    System.out.print(
      "xpos,ypos: " + xpos + "," + ypos +
      "\nstartx,starty: " + startx + "," + starty +       
      "\nrotation " + rotation +
      "\nloc: " + locations.get(0)
      );
  }
  
  void updatexy(){
    String letter = locations.get(0).substring(0,1);
    int n = Integer.parseInt(locations.get(0).substring(1));
    xpos = locX(letter);
    ypos = locY(n);
  }
  
  void setStartx(int x){
    startx = x;
  }
  
  void setStarty(int y){
    starty = y;
  }
  
  //takes "A1" and converts to its xpos/ypos  
  int locX(String letter){
     return alphabet.indexOf(letter) * 34 + startx;
  }
  
  int locY(int num){
    return starty + (num-1) * 34;
  }
  
  //takes xpos/ypos and converts to "A1"
  String toLocx(int xpos){
    int index = ((xpos-startx)/34);
    return alphabet.substring(index,index+1);
  }
  
  int toLocy(int ypos){
    return ((ypos-starty)/34 + 1);
  }
}
