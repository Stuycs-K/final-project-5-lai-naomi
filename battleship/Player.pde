public class Player extends Team{  
  public Player(){
     turn = false;
     selection = new Target();
     board = new Board(setsize+10, 5 + height/2, selection);
     oppBoard = new Board(setsize+10, 5 + height/2);
     selection = board.target;
  }
  
  boolean confirmTarget(){
   return super.confirmTarget("player");
  }
  
  void d(){
    board.drawGrid();
    board.drawShips();
    board.drawPins();
    board.drawTarget();
  }
}
