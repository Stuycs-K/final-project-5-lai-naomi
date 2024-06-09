public class Player extends Team{  
  public Player(){
     turn = false;
     board = new Board(setsize+10, 5 + height/2);
     oppBoard = new Board(setsize+10, 5 + height/2);
     selection = board.target;
  }
  
  void confirmTarget(){
   super.confirmTarget("player");
  }
  
  void d(){
    board.drawGrid();
    board.drawShips();
    board.drawPins();
    board.drawTarget();
  }
}
