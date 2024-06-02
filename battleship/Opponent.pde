public class Opponent{
 boolean turn;
 Target selection;
 Board board;
 
 public Opponent(Board b){
  turn = false;
  selection = new Target();
  board = b;
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
