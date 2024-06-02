public class Player{
  boolean turn;
  Target selection;
  Board board;
  
  public Player(Board b){
     turn = false;
     phase = "setup";
     selection = new Target();
     board = b;
  }
  
  void confirmTarget(){
    
  }
  
  void confirmSetup(){
 
  }
  
  void addShip(Ship s){
    board.addShip(s);
  }
  
  void d(){
    plrBoard.drawGrid();
    plrBoard.drawShips();
    plrBoard.drawPins();
  }
  
  void ship(){
    Ship s1 = new Ship(20, 20, 2, true);
    board.addShip(s1);
  }
}
