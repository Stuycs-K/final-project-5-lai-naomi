public class Button extends Interactable{ 
 String display = ""; 
 
 public Button(){
   image = loadImage("rectangle.png");
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
  
  void setDisplay(String str){
    display = str;
  }
}
