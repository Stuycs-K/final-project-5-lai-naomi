public class Team{
  boolean turn;
 Target selection;
 Board board, oppBoard;
 String alphabet = "ABCDEFGHIJK";
 
 boolean confirmTarget(String team){
    String tloc = selection.locations.get(0);
    boolean ans = oppBoard.addPin(new Pin(tloc, team));
    return ans;
  }
  
  boolean possibleTarget(){
   String tloc = selection.locations.get(0);
   return !oppBoard.hasPin(tloc); 
  }
  
  void setTurn(boolean t){
    turn = t;
    if(turn) selection.setVis(true);
    else selection.setVis(false);
  }
 
 void setOpp(Team t){
   oppBoard = t.board;
 }
 
 void ship(){
  ship(5);
 }
 
 void ship(int x){
   ship(x, 168, 446);
  }
  
  void ship(int x, int startx, int starty){
    for(int i=1; i<=x; i++){
      Ship s = new Ship(34, 34*3+34*3*i);
      s.setStartx(startx);
      s.setStarty(starty);
      board.addShip(s);
    }
  }
  
  void shipVis(){
   for(Ship ship : board.ships){
     ship.setVis(!ship.visible);
   }
 }
 
  void randomShips(){
   ArrayList<Ship> ships = board.ships;
   int startx = ships.get(0).startx;
   int starty = ships.get(0).starty;
   String shipLocs = "";
     
   for(int i=0; i<ships.size(); i++){
     boolean valid = false;
     String loc1 = "";
     String loc2 = "";   
     
     while(valid == false){      
      int index1 = (int)(Math.random() * 9);
       int index2 = index1;
       int n1 = (int)(Math.random() * 9 + 1);
       int n2 = n1;     
       
       int chance = (int)(Math.random() * 2);
       if(chance!=0) index2 = index1 + 1;
       else n2 = n1+1;
            
       String letter1 = alphabet.substring(index1, index1+1);
       String letter2 = alphabet.substring(index2, index2+1);
       
       loc1 = letter1+n1;
       loc2 = letter2+n2;
       
       if(shipLocs.indexOf(loc1) == -1 && shipLocs.indexOf(loc2) == -1){
         shipLocs += loc1;
         shipLocs += loc2;
         valid = true;
       }
     }
     
     Ship s = new Ship(loc1,loc2);
     s.setStartx(startx);
     s.setStarty(starty);
     s.updatexy();
     ships.set(i, s);
   }
 }
}
