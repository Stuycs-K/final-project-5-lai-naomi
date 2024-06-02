public class Target{
  String location;
  PImage tar = loadImage("outline.png");
  boolean visible;
  
  
  public Target(){
   location = "A1";
   visible = false;
  }
  
  void setVis(boolean v){
    visible = v;  
  }
  
  void drag(){
    
  }
}
