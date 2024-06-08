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
      pinLocs += p.location;
    }
    
    void gridShips(){
     for(Ship ship : ships) ship.loc();
    }
    
    void updateShips(){
      for(Ship ship : ships){
        String loc1 = ship.locations.get(0);
        String loc2 = ship.locations.get(1);
        //System.out.println(loc1 + " " + loc2);
        //System.out.println(pinLocs);
        if(pinLocs.indexOf(loc1) != -1){
          ship.addPin(0);
          //System.out.println(1);
        }
        if(pinLocs.indexOf(loc2) != -1){
          ship.addPin(1);
          //System.out.println(2);
      }
    }
    }
    
  void shipInfo(){
    for(Ship ship : ships){
      //for(String loc : ship.locations){
      //  System.out.println("loc: " + loc);
      //}
      System.out.println(Arrays.toString(ship.pins));
    }
  }
  
  void randomT(){
    target.randomxy();
  }
}
