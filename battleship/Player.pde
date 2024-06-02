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
    if(turn) board.drawTarget();
  }
  
  void ship(){
    for(int i=0; i<5; i++){
      Ship s = new Ship(20, 20+100*i, 2, true);
      board.addShip(s);
    }
  }
  
  void setTurn(boolean t){
    turn = t;
  }
}
