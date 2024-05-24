public class Board{
    ArrayList<Pin> pins = new ArrayList<Pin>();
    ArrayList<Ship> ships = new ArrayList<Ship>();
    int xpos;
    int ypos;
    PImage grid = loadImage("grid.png");
    PImage pinImage = loadImage("pinImage.png");
    PImage testShip = loadImage("testship.jpg");
    
    public Board(int x, int y){
      pins = new ArrayList<Pin>();
      ships = new ArrayList<Ship>();
      xpos = x;
      ypos = y;
      
      grid.resize(380,0);
      pinImage.resize(25,0);
    }
    
    void drawGrid(){      
      image(grid, xpos, ypos);
    }
    
    void drawPins(){
      for(Pin pin : pins){
        image(pinImage, pin.xpos, pin.ypos);
      }
    }
    
    void drawShips(){
      for(Ship ship : ships){
        if(ship.visible==true){
          testShip.resize(ship.pins.length * 30, 25);
          image(testShip, ship.xpos, ship.ypos);
        }
      }
    }
    
    void addShip(Ship s){
      ships.add(s);
    }
    
    void addPin(Pin p){
      pins.add(p);
    }
}
