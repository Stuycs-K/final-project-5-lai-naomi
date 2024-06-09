public class Interactable{
  int xpos = 15;
 int ypos = 15;
 PImage image;
 
  boolean click(int x, int y){
    int lx = xpos;
    int rx = xpos + image.width;
    int uy = ypos;
    int dy = ypos + image.height;
    return(x >= lx && x <= rx && y >= uy && y <= dy);
  }
}
