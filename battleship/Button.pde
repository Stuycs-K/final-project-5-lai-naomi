public class Button{
 PImage image = loadImage("rectangle.png");
 String display = "";
 int xpos = 15;
 int ypos = 15;
 
 public Button(){
   display = "End Setup";
   image.resize(100, 0);
 }
 
 void d(){
   image(image, xpos, ypos);
   int dx = xpos + image.width/4;
   int dy = ypos + image.height/2;
   fill(255,255,255);
   text(display, dx, dy);
 }
 
 boolean click(int x, int y){
    int lx = xpos;
    int rx = xpos + image.width;
    int uy = ypos;
    int dy = ypos + image.height;
    return(x >= lx && x <= rx && y >= uy && y <= dy);
  }
  
  void setDisplay(String str){
    display = str;
  }
}
