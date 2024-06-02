public class Opponent{
 boolean turn;
 Target selection;
 Board board;
 
 public Opponent(){
  turn = false;
  selection = new Target();
  board = new Board(setsize+10, 5);;
 }
 
 void wait(int x){
   
 }
 
 void confirmTarget(){
   
 }
 
 void d(){
   board.drawGrid();
   board.drawPins();
 }
 
 void ship(){
   
 }
}
