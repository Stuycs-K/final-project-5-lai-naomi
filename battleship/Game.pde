public class Game{  
  int phase;
  PImage lines = loadImage("lines.png");
  boolean t, p, s; //if there is a target/popup/successful pin
  Player player;
  Opponent opponent;
  Draggable target;
  Button button;
  Popup popup;
    
  public Game(){
    lines.resize(width, height);    
    phase = 0;    
    
    player = new Player();
    opponent = new Opponent();  
    
    player.setOpp(opponent);
    player.ship();
    
    opponent.setOpp(player);
    opponent.ship();    
    
    t=false;
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
      if(phase==0) phase = 1;
      else if(phase == 1) phase = 2;
      else if(phase == 2) phase = 1;
      updatePhase();
    }
    if(p){
     popup = new Popup(); 
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
      if(s==true){
        System.out.println(s);
        s=false;
        return false;
      }
      ans =(player.possibleTarget()); 
    }
    if(phase==2){
      ans = false;
      while(!ans){
        ans = opponent.possibleTarget();
        opponent.newTarget();
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
    if(phase == 2) player2Phase();
    if(phase == 1) player1Phase();
  }
  
  void setupPhase(){
    player.setTurn(false);
    opponent.setTurn(false);
    button.setDisplay("End Setup");
  }
  
  void player1Phase(){ //end of player 2 functions
    if(opponent.turn==true) s = opponent.confirmTarget();
    player.setTurn(true);
    opponent.setTurn(false);
    button.setDisplay("Confirm\nTarget");
  }
  
  void player2Phase(){ // end of player 1 functions
    s = player.confirmTarget();
    player.setTurn(false);
    opponent.setTurn(true);
    button.setDisplay("");
    //player.shipInfo();
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
    System.out.println(pin.location); 
   }
  }
}
