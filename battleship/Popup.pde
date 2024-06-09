public class Popup extends Interactable{
 int xpos = (width-setsize)/2;
 int ypos = height/2;
 
 public Popup(){
   image = loadImage("popup.png");
 }
 
 void d(){
   image(image, xpos, ypos);
 }
}
