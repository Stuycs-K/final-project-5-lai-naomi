public class Opponent extends Team{ 
 public Opponent(){
  turn = false;
  selection = new Target();
  board = new Board(setsize+10, 0, selection);
  oppBoard = new Board(setsize+10, 0);
 }
 
 void newTarget(){
   board.randomT();
 }
 
 boolean confirmTarget(){
   return confirmTarget("opp");   
 }
 
 void d(){
   board.drawGrid();   
   board.drawShips();
   board.drawPins();
 }
 
 void ship(){
   super.ship(1, 168, 39);
   randomShips();
 }
}
