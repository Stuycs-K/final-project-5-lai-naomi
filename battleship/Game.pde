public class Game{  
  int phase;
  PImage lines = loadImage("lines.png");
  boolean t, p, g; //if there is a target/popup/game over
  Player player;
  Opponent opponent;
  Draggable target;
  Button button;
  Popup popup;
  String winner;
    
  public Game(){
    lines.resize(width, height);    
    phase = 0;    
    
    player = new Player();
    opponent = new Opponent();  
    
    player.setOpp(opponent);
    player.ship();
    
    opponent.setOpp(player);
    opponent.ship();    
    toggle();
    
    t=false;
    g=false;
    p=false;
    button = new Button();
  }
  
  void d(){
    image(lines, 0, 0); 
    showInfo(); //updates text
    opponent.d(); //draws opponents board and pins. 
    player.d(); // draws player's board, ships, and pins. 
    button.d(); //draws button
    if(p) popup.d();
  }
  
  void showInfo(){
    String p = "phase";
    if(phase==0) p="setup";
    if (phase==1) p="player1's turn";
    if(phase==2) p="player2's turn";
    if(phase==4) p="player 2 wins!";
    if(phase==5) p = "player 1 wins!";
    
    String print = "Phase: " + p + "\nTarget: " + target;
    fill(0,0,0);
    text(print, 20, height-30);
  }  
  
  void move(){
    if(phase == 0 && !t){
        Board pboard = player.board;
        for(Ship ship : pboard.ships){
           if(ship.drag(mouseX, mouseY)){
             target = ship;
             t=true;
             break;
           }
         }
      }
    if(phase == 1){
      if(player.selection.drag(mouseX, mouseY)){
        target = player.selection;
        t=true;
      }
    }
     if(t) target.move(); 
    }  
  
  void release(){
    target = null;
    t=false;
  }
  
  void r(){
    if(t) target.r();
  }
    
  void nextPhase(){    
    if(possiblePhase()){
      if(performAction() == true){
        if(g) gameOver();
        return;
      }
      if(phase==0) phase = 1;
      else if(phase == 1) phase = 2;
      else if(phase == 2) phase = 1;
      updatePhase();
    }
    if(p){
     popup = new Popup(); 
    }
  }
  
  boolean performAction(){    
    boolean s = false;
    if(phase==1) s = player.confirmTarget();
    if(phase==2 && opponent.turn==true) s = opponent.confirmTarget();
    if(s) updateg();
    return s;
  }
  
  void updateg(){
   if(player.board.shipsLeft == 0){
     g=true;
     phase = 4;
   }
   if(opponent.board.shipsLeft == 0){
     g=true;
     phase = 5;
   }
  }
  
  boolean possiblePhase(){
    boolean ans=true;
    if(phase==0){
      ArrayList<Ship> shipArr = player.board.ships;
      for(Ship ship : shipArr){
        if(ship.onBoard() == false) return false;
      }
    }
    if(phase == 1){      
      ans =(player.possibleTarget()); 
    }
    if(phase==2){
      ans = false;
      while(!ans){        
        opponent.newTarget();
        ans = opponent.possibleTarget();
      }
      ans=true;
    }    
    return ans;
  }
  
  void prevPhase(){
    if(phase==0) phase = 2;
    if(phase == 1) phase = 0;
    if(phase == 2) phase = 1;
    updatePhase();
  }
  
  void updatePhase(){
    if(phase == 0) setupPhase();
    else if(phase == 2) player2Phase();
    else if(phase == 1) player1Phase();
    else gameOver();
  }
  
  void setupPhase(){
    player.setTurn(false);
    opponent.setTurn(false);
    button.setDisplay("End Setup");
  }
  
  void player1Phase(){ //end of player 2 functions
    player.setTurn(true);
    opponent.setTurn(false);
    button.setDisplay("Confirm\nTarget");
  }
  
  void player2Phase(){ // end of player 1 functions
    player.setTurn(false);
    opponent.setTurn(true);
    button.setDisplay("");
    //player.shipInfo();
  }
  
  void gameOver(){
    player.setTurn(false);
    player.setTurn(false);
    button.noClick();
    button.setDisplay("Game Over");
  }
  
  void b(){
    if(button.click(mouseX, mouseY)){
      nextPhase();
    }
  }
  
  void toggle(){
   opponent.shipVis(); 
  }
  
  void info(){
    System.out.print("\nplayer pins: ");
   for(Pin pin : player.board.pins){
    System.out.print(pin.location); 
   }
   System.out.print("\nopponent pins: ");
   for(Pin pin : opponent.board.pins){
    System.out.print(pin.location); 
   }
  }
  
  void randomShips(){
   if(phase == 0) player.randomShips();
  }
}
