import java.util.Arrays;
public class Board{
    ArrayList<Pin> pins;
    String pinLocs;
    ArrayList<Ship> ships;
    int xpos;
    int ypos;
    PImage grid = loadImage("grid.png");    
    Target target;
    
    public Board(int x, int y){
      this(x,y,new Target());
    }
    
    public Board(int x, int y, Target t){
      pins = new ArrayList<Pin>();
      ships = new ArrayList<Ship>();
      xpos = x;
      ypos = y;
      target = t;      
      grid.resize(380,0);
      pins = new ArrayList<Pin>();
      ships = new ArrayList<Ship>();
      pinLocs = "";
    }
    
    void drawGrid(){      
      image(grid, xpos, ypos);
    }
    
    void drawPins(){
      for(Pin pin : pins){
        String location = pin.getLetter();
        int num = pin.getNum();
        int px = pin.alphabet.indexOf(location) * 34 + pin.startx;
        int py = pin.starty + (num-1) * 34;
        image(pin.pinImage, px,py);
      }
    }
    
    void drawShips(){
      for(Ship ship : ships){
        if(ship.visible){
          translate(ship.xpos, ship.ypos);
          pushMatrix();
          ship.d();
          popMatrix();
          translate(-ship.xpos, -ship.ypos);
        }
      }
    }
    
    void drawTarget(){
      if(target.visible) image(target.image, target.xpos, target.ypos);
    }
    
    void addShip(Ship s){
      ships.add(s);
    }
    
    //void addShip(Ship[] s){
    //  for(Ship ship : s) addShip(ship);
    //}
    
    void addPin(Pin p){
      pins.add(p);
      pinLocs += p.location;
    }
    
    void gridShips(){
     for(Ship ship : ships) ship.loc();
    }
    
    void updateShips(){
      for(Ship ship : ships){
        String loc1 = ship.locations.get(0);
        String loc2 = ship.locations.get(1);
        if(pinLocs.indexOf(loc1) != -1){
          ship.addPin(0);
        }
        if(pinLocs.indexOf(loc2) != -1){
          ship.addPin(1);
      }
    }
    }
    
  void shipInfo(){
    for(Ship ship : ships){
      ship.info();
    }
  }
  
  void randomT(){
    target.randomxy();
  }
  
  boolean hasPin(String tloc){
   return !(pinLocs.indexOf(tloc) == -1);
  }
}
