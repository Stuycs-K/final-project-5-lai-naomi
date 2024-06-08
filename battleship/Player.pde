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
  
  void ship(){
    for(int i=0; i<5; i++){
      Ship s = new Ship(34, 34*3+34*3*i, 2, true);
      board.addShip(s);
    }
  }
}
