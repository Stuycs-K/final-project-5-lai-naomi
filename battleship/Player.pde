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
}
