public class Opponent{
 boolean turn;
 Target selection;
 Board board;
 
 public Opponent(){
  turn = false;
  selection = new Target();
  board = new Board(setsize+10, 0);
 }
 
 void wait(int x){
   
 }
 
 void confirmTarget(){
   
 }
 
 void d(){
   board.drawGrid();
   board.drawPins();
   board.drawShips();
 }
 
 void ship(){
   String alphabet = "ABCDEFGHIJK";
   for(int i=0; i<5; i++){
     int index1, index2;
     int n1,n2;
     
     index1 = (int)(Math.random() * 9);
     index2=index1;
     n1 = (int)(Math.random() * 9 + 1);
     n2=n1;
     
     
     int chance = (int)(Math.random() * 2);
     if(chance!=0) index2 = index1 + 1;
     else n2 = n1+1;
     
     String letter1 = alphabet.substring(index1, index1+1);
     String letter2 = alphabet.substring(index2, index2+1);
     
     Ship s = new Ship(letter1, n1, letter2, n2, 2, true);
     System.out.println(letter1 + n1 + "," + letter2 + n2 + " chance: " + chance);
     board.addShip(s);
   }
 }
}
