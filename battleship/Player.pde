public class Player{
  boolean turn;
  Target selection;
  Board board;
  
  public Player(){
     turn = false;
     phase = "setup";
     selection = new Target();
     board = new Board();
  }
  
  void confirmTarget(){
    
  }
  
  void confirmSetup(){
 
  }
}