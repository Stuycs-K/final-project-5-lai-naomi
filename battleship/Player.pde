public class Player{
  boolean turn;
  Target selection;
  Board board;
  
  public Player(){
     turn = false;
     selection = new Target();
     board = new Board(setsize+10, 5 + height/2);
  }
  
  void confirmTarget(){
    
  }
  
  void confirmSetup(){
 
  }
  
  void addShip(Ship s){
    board.addShip(s);
  }
  
  void d(){
    board.drawGrid();
    board.drawShips();
    board.drawPins();
  }
  
  void ship(){
    Ship s1 = new Ship(20, 20, 2, true);
    board.addShip(s1);
  }
}
