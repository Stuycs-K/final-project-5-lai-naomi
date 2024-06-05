public class Pin{
  int xpos, ypos, startx, starty;
  PImage pinImage = loadImage("pinImage.png");
  
  public Pin(int x, int y){
    xpos = x;
    ypos = y;
    pinImage.resize(25,0);
  }
  
  public Pin(String letter1, int n1){
    startx = 168;
    starty = 445;
    xpos = alphabet.indexOf(letter1) * 34 + startx;
    ypos = starty + (n1-1) * 34;
    pins = new int[l];
    visible = v;
    image = loadImage("boat.png");
   image.resize(0, 34);
   b=false;
   if(n1 != n2) rotation = 1;
   else rotation = 2;
   
   locations = new ArrayList<String>();
   locations.add(letter1 + n1);
   locations.add(letter2 + n2);
  }
}
