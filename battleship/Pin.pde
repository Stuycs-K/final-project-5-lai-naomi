public class Pin{
  int xpos, ypos, startx, starty;
  PImage pinImage = loadImage("pinImage.png");
  String alphabet = "ABCDEFGHIJK";
  
  public Pin(int x, int y){
    xpos = x;
    ypos = y;
    pinImage.resize(25,0);
  }
  
  public Pin(String letter1, int n1, String b){
    startx = 168;
    starty = 39;
    if(b=="opp"){
      starty = 446;
      System.out.println("opp");
    }
    xpos = alphabet.indexOf(letter1) * 34 + startx;
    ypos = starty + (n1-1) * 34;
    pinImage.resize(0, 34);
  }
}
