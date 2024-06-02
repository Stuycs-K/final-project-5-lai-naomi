public class Draggable{
  int xpos;
  int ypos;
  PImage image;
  ArrayList<String> locations;
  int startx;
  int starty;
  boolean visible;
 
 void r(){
   
 }
 
 String toString(){
  return "draggable"; 
 }
 
 void move(){
    xpos = mouseX; 
    ypos = mouseY;
    grid();
    limitMovement();
    loc();
  }
  
  void grid(){
   xpos /= 34;
   xpos *= 34;
   xpos -= 2;
   ypos /= 34;
   ypos *= 34;
   ypos += 4;
   //System.out.println(xpos +"," + ypos);
  }
  
  void limitMovement(){
    if(onBoard()){
      if(xpos <= startx) xpos=startx;
      if(xpos >= startx + 340) xpos = startx + 340;
      
    }
   if(xpos >= width) xpos = width-30; 
   if(xpos <= 0) xpos = 0;
   if(ypos >= height) ypos = height-30;
   if(ypos <= 0) ypos = 0;
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
    return (xpos >= startx && xpos <= startx + 272 &&  ypos >= starty && ypos <= starty + 340);
  }
  
  void setVis(boolean v){
    visible = v;
  }
}
