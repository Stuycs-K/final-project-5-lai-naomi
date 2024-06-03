public class Game{  
  String phase;
  PImage lines;
  String mx="-1";
  String my="-1";
  boolean t; //if there is a target
  Player player;
  Opponent opponent;
  Draggable target;
    
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
    if(target != null){
      //System.out.println(target.xpos + "," + target.ypos);
    }
  }
  
  void showInfo(){
    String print = "Phase: " + phase + "\nTarget: " + target;
    fill(0,0,0);
    text(print, 20, height-30);
    //text(mx + "," + my, 20, height-50);
  }  
  
  void move(){
    if(phase == "setup"){
      if(!t){
        Board pboard = player.board;
        for(Ship ship : pboard.ships){
           if(ship.drag(mouseX, mouseY)){
           target = ship;
           t=true;
           break;
           }
         }
      }
    }
    if(phase == "player1"){
      if(player.selection.drag(mouseX, mouseY)){
        target = player.selection;
        t=true;
      }
    }
     if(t){
       //System.out.println("move");
       target.move();
     }
    }  
  
  void release(){
    target = null;
    t=false;
  }
  
  void r(){
    if(t){
      target.r();
    }
  }
    
  void nextPhase(){
    if(phase=="setup"){
      phase = "player1";
    }
    else if(phase == "player1"){
      phase = "player2";
    }
    else if(phase == "player2"){
      phase = "player1";
    }
    updatePhase();
  }
  
  void prevPhase(){
    if(phase=="setup") phase = "player2";
    if(phase == "player1") phase = "setup";
    if(phase == "player2") phase = "player1";
    updatePhase();
  }
  
  void updatePhase(){
    if(phase == "setup" || phase == "player2") player.setTurn(false);
    if(phase == "player1") player.setTurn(true);
  }
  
  void showLoc(){
    if(t){
      System.out.println("(x,y): " + target.xpos + "," + target.ypos);
      System.out.println("OnBoard: " + target.onBoard());
      System.out.println("Rotation: " + target.rotation);
      System.out.println("XN: " + target.getLoc() + "\n");      
    }
  }
  
  void showCoor(){
    System.out.println(mouseX + "," + mouseY);
  }
  
  void feature(){
   opponent.shipVis(); 
  }
}
