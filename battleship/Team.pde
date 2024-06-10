public class Team{
  boolean turn;
 Target selection;
 Board board, oppBoard;
 String alphabet = "ABCDEFGHIJK";
 
 boolean confirmTarget(String team){
    String tloc = selection.locations.get(0);
    return oppBoard.addPin(new Pin(tloc, team));
    //oppBoard.shipInfo();    
    // confirm pin -> get p1 pin location -> compare p1 pin location with p2 ship locations -> update p2 ship locations
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
  
   void wait(int x){
   
 }
 
 void setOpp(Team t){
   oppBoard = t.board;
 }
 
 void ship(){
    for(int i=1; i<=1; i++){
      Ship s = new Ship(34, 34*3+34*3*i);
      s.setStartx(168);
      s.setStarty(446);
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
   for(int i=0; i<ships.size(); i++){
     int startx = ships.get(0).startx;
     int starty = ships.get(0).starty;
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
     s.setStartx(startx);
     s.setStarty(starty);
     s.updatexy();
     s.info();
     ships.set(i, s);
   }
 }
}
