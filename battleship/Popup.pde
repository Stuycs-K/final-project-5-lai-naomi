public class Popup extends Interactable{
 int xpos = (width-setsize)/2;
 int ypos = height/2;
 
 public Popup(){
   image = loadImage("popup.png");
  image(image, xpos, ypos);
 }
}
