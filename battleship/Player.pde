public class Player{
  boolean turn;
  Target selection;
  Board board;
  
  public Player(){
     turn = false;
     board = new Board(setsize+10, 5 + height/2);
     selection = board.target;
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
    board.drawTarget();
  }
  
  void ship(){
    for(int i=0; i<5; i++){
      Ship s = new Ship(34, 34*3+34*3*i, 2, true);
      board.addShip(s);
    }
  }
  
  void setTurn(boolean t){
    turn = t;
    if(turn) selection.setVis(true);
    else selection.setVis(false);
  }
}
