public class Board{
    ArrayList<Pin> pins = new ArrayList<Pin>();
    ArrayList<Ship> ships = new ArrayList<Ship>();
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
          translate(ship.xpos, ship.ypos);
          pushMatrix();
          if(ship.rotation == 2){
            rotate(PI/2.0);
            image(ship.image, 0, -34);
          }
          else image(ship.image, 0, 0);
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
    }
    
    void gridShips(){
     for(Ship ship : ships) ship.loc();
    }
}
