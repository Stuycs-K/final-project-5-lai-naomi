public class Pin{
  int startx, starty;
  PImage pinImage = loadImage("pinImage.png");
  String alphabet = "ABCDEFGHIJK";
  String location;
  
  public Pin(String letter1, int n1, String b){
    startx = 168;
    starty = 39;
    if(b=="opp"){
      starty = 446;
      //System.out.println("opp");
    }
    pinImage.resize(0, 34);
    location = letter1 + n1;
  }
  
  public Pin(String loc, String b){
    this(loc.substring(0,1), Integer.parseInt(loc.substring(1)), b);
  }
  
  String getLetter(){
   return location.substring(0,1); 
  }
  
  int getNum(){
   return Integer.parseInt(location.substring(1)); 
  }
}
