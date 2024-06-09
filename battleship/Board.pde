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
      pins = new ArrayList<Pin>();
      ships = new ArrayList<Ship>();
      xpos = x;
      ypos = y;
      target = new Target();      
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
        image(pin.pinImage, pin.xpos, pin.ypos);
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
    
    void addShip(Ship[] s){
      for(Ship ship : s) addShip(ship);
    }
    
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
}
