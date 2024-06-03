public class Draggable{
  int xpos, ypos, startx, starty;
  PImage image;
  ArrayList<String> locations;
  boolean visible, b; // b: if the object is on the board  
  String alphabet = "ABCDEFGHIJK";
 
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
    //loc();
    
  }
  
  void grid(){
   xpos /= 34;
   xpos *= 34;
   ypos /= 34;
   ypos *= 34;
  }
  
  void limitMovement(){
    if(b){
      stayOnBoard();
    }
   if(xpos >= width) xpos = width-30; 
   if(xpos <= 0) xpos = 0;
   if(ypos >= height) ypos = height-30;
   if(ypos <= 0) ypos = 0;
  }
  
  void stayOnBoard(){
    if(xpos <= startx) xpos=startx;
    if(ypos <= starty) ypos = starty;
    if (ypos >= starty+306) ypos = starty+306;
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
    for(String loc : locations){
      ans = ans + loc + " ";
    }
    ans = ans.substring(0,ans.length());
   if(ans!="") return ans;
   return "null";
  }
  
  void loc(){
    
  }
  
  boolean onBoard(){
    return (xpos >= startx &&  ypos >= starty && ypos <= starty + 340);
  }
  
  void setVis(boolean v){
    visible = v;
  }
}
