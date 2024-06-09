public class Opponent extends Team{ 
 public Opponent(){
  turn = false;
  selection = new Target();
  board = new Board(setsize+10, 0, selection);
  oppBoard = new Board(setsize+10, 0);
 }
 
 boolean confirmTarget(){
   board.randomT(); // random selection location
   return confirmTarget("opp");   
 }
 
 void d(){
   board.drawGrid();   
   board.drawShips();
   board.drawPins();
 }
 
 void ship(){
   for(int i=1; i<=1; i++){
     int index1 = (int)(Math.random() * 9);
     int index2 = index1;
     int n1 = (int)(Math.random() * 9 + 1);
     int n2 = n1;     
     
     int chance = (int)(Math.random() * 2);
     if(chance!=0) index2 = index1 + 1;
     else n2 = n1+1;
          
     String letter1 = alphabet.substring(index1, index1+1);
     String letter2 = alphabet.substring(index2, index2+1);
     
     String loc1 = letter1+n1;
     String loc2 = letter2+n2;
     
     Ship s = new Ship(loc1,loc2);
     s.setStartx(168);
     s.setStarty(39);
     s.updatexy();
     board.addShip(s);
     //s.info();
   }
 }
}
