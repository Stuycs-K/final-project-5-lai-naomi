public class Target extends Draggable{
  boolean visible;
  String alphabet = "ABCDEFGHIJK";
  
  public Target(){
    locations = new ArrayList<String>();
   locations.add("A1");
   visible = false;
   image = loadImage("outline.png");
   image.resize(34,34);
   xpos = getX() * 34 + 168;
   ypos = getY() * 34 + 445;
  }
  
  void setVis(boolean v){
    visible = v;  
  }
  
  int getX(){
    String location = locations.get(0);
    return (alphabet.indexOf(location.substring(0,1)));
  }
  
  int getY(){
    String location = locations.get(0);
   return (Integer.parseInt(location.substring(1)) - 1); 
  }
  
  String toString(){
    return "target";
  }
  
  void move(){
    super.move();    
  }
  
  void loc(){
    locations = new ArrayList<String>();
    String ans = "";
    ans += alphabet.substring(getX(), getX()+1);
    ans += getY();
    locations.add(ans);
  }
}
