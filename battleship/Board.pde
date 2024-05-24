public class Board{
    ArrayList<Pin> pins = new ArrayList<Pin>();
    ArrayList<Ship> ships = new ArrayList<Ship>();
    int xpos;
    int ypos;
    PImage grid = loadImage("grid.png");    
    
    public Board(int x, int y){
      pins = new ArrayList<Pin>();
      ships = new ArrayList<Ship>();
      xpos = x;
      ypos = y;
      
      grid.resize(380,0);
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
        if(ship.visible==true){
          image(ship.testShip, ship.xpos, ship.ypos);
        }
      }
    }
    
    void addShip(Ship s){
      ships.add(s);
    }
    
    void addShip(Ship[] s){
      for(Ship ship : s){
        ships.add(ship);
      }
    }
    
    void addPin(Pin p){
      pins.add(p);
    }
}
