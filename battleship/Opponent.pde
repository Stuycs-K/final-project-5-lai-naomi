public class Opponent extends Team{ 
 public Opponent(){
  turn = false;
  selection = new Target();
  board = new Board(setsize+10, 0);
  oppBoard = new Board(setsize+10, 0);
 }
 
 void confirmTarget(){
   board.randomT(); // random selection location
   confirmTarget("opp");   
 }
 
 void d(){
   board.drawGrid();   
   board.drawShips();
   board.drawPins();
 }
 
 void ship(){
   for(int i=1; i<=1; i++){
     int index1, index2;
     int n1,n2;
     
     index1 = (int)(Math.random() * 9);
     index2=index1;
     n1 = (int)(Math.random() * 9 + 1);
     n2=n1;
     
     
     int chance = (int)(Math.random() * 2);
     //System.out.println(chance);
     if(chance!=0) index2 = index1 + 1;
     else n2 = n1+1;
          
     String letter1 = alphabet.substring(index1, index1+1);
     String letter2 = alphabet.substring(index2, index2+1);
     //System.out.println("Ship setuP: " + letter1 + n1 + " " + letter2 + n2); 
     
     Ship s = new Ship(letter1, n1, letter2, n2, 2, false);
     s.setStartx(168);
     s.setStarty(39);
     //System.out.println(letter1 + n1 + "," + letter2 + n2 + " chance: " + chance);
     board.addShip(s);
     s.updateLoc();
   }
 }
 
 void shipVis(){
   for(Ship ship : board.ships){
     ship.setVis(!ship.visible);
   }
 }
}
