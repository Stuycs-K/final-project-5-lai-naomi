public class Team{
  boolean turn;
 Target selection;
 Board board, oppBoard;
 String alphabet = "ABCDEFGHIJK";
 
 void confirmTarget(String team){
    String tloc = selection.locations.get(0);
    oppBoard.addPin(new Pin(tloc, team));
    oppBoard.updateShips();
    //oppBoard.shipInfo();
    
    // confirm pin -> get p1 pin location -> compare p1 pin location with p2 ship locations -> update p2 ship locations
  }
  
  void setTurn(boolean t){
    turn = t;
    if(turn) selection.setVis(true);
    else selection.setVis(false);
  }
  
   void wait(int x){
   
 }
 
 void setOpp(Team t){
   oppBoard = t.board;
 }
 
 void ship(){
    for(int i=0; i<5; i++){
      Ship s = new Ship(34, 34*3+34*3*i);
      s.setStartx(168);
      s.setStarty(446);
      board.addShip(s);
    }
  }
}