public class Board{
    ArrayList<Pin> pins = new ArrayList<Pin>();
    ArrayList<Ship> ships = new ArrayList<Ship>();
    int xpos;
    int ypos;
    PImage grid;
    
    public Board(int x, int y){
      pins = new ArrayList<Pin>();
      ships = new ArrayList<Ship>();
      xpos = x;
      ypos = y;
      grid = loadImage("grid.png");
      grid.resize(380,0);
    }
    
    void drawGrid(){
      
      image(grid, xpos, ypos);
    }
    
    void drawPins(){
      
    }
    
    void drawShips(){
      
    }  
}
