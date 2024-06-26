import java.util.Arrays;
public class Board{
    ArrayList<Pin> pins;
    String pinLocs;
    ArrayList<Ship> ships;
    int xpos;
    int ypos;
    PImage grid = loadImage("grid.png");    
    Target target;
    int shipsLeft;
    
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
      shipsLeft = ships.size();
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
      shipsLeft++;
    }
    
    boolean addPin(Pin p){
      pins.add(p);
      pinLocs += p.location;
      pinLocs += ",";
      return updateShips(p.location.length() + 1);
    }
    
    void gridShips(){
     for(Ship ship : ships) ship.loc();
    }    
    
    boolean updateShips(int x){
      boolean ans = false;
      for(Ship ship : ships){
        if(ship.sunk() == false){
          String loc1 = ship.locations.get(0) + ",";
          String loc2 = ship.locations.get(1)+ ",";
          if(pinLocs.indexOf(loc1) != -1){
            ship.addPin(0);
            if(pinLocs.indexOf(loc1) == pinLocs.length()-x) ans=true;
          }
          if(pinLocs.indexOf(loc2) != -1){
            ship.addPin(1);
            if(pinLocs.indexOf(loc2) == pinLocs.length()-x) ans=true;
          }      
          if(ans){
            if(ship.sink()) shipsLeft--;
          }
        }
      }
      return ans;
    }
  
  void randomT(){
    target.randomxy();
  }
  
  boolean hasPin(String tloc){
   return !(pinLocs.indexOf(tloc) == -1);
  }
}
