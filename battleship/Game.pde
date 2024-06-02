public class Game{
  Player player;
  Opponent opponent;
  String phase;
  PImage lines;
  
  Ship target;
  boolean t; //if there is a target
  
  String mx="-1";
  String my="-1";
  
  public Game(){
    lines = loadImage("lines.png");
    lines.resize(width, height);
    
    phase = "setup";
    
    player = new Player();
    opponent = new Opponent();  
    
    player.ship();
    opponent.ship();
    
    t=false;
  }
  
  void d(){
    image(lines, 0, 0); 
    showInfo();
    opponent.d();
    player.d();
  }
  
  void showInfo(){
    String print = "Phase: " + phase;
    fill(0,0,0);
    text(print, 20, height-30);
    text(mx + "," + my, 20, height-50);
  }  
  
  void moveShip(){
    if(phase == "setup"){
      if(!t){
        Board pboard = player.board;
        for(Ship ship : pboard.ships){
           if(ship.drag(mouseX, mouseY) == true){
           target = ship;
           t=true;
           break;
           }
         }
      }
     if(t){
      target.xpos = mouseX; 
      target.ypos = mouseY;
      target.grid();
      target.limitMovement();
     }
    }
  }
  
  void releaseShip(){
    t=false;
  }
  
  void r(){
    if(t){
      target.r();
    }
  }
    
  void nextPhase(){
    if(phase=="setup") phase = "player1";
    if(phase == "player1") phase = "player 2";
    if(phase == "player2") phase = "player1";
  }
  
  void prevPhase(){
     if(phase=="setup") phase = "player2";
    if(phase == "player1") phase = "setup";
    if(phase == "player2") phase = "player1";
  }
}
