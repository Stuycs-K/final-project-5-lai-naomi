public class Team{
  boolean turn;
 Target selection;
 Board board;
 
 void confirmTarget(){
    String tloc = selection.locations.get(0);
    board.addPin(new Pin(tloc, ""));
  }
  
  void setTurn(boolean t){
    turn = t;
    if(turn) selection.setVis(true);
    else selection.setVis(false);
  }
  
   void wait(int x){
   
 }
}
