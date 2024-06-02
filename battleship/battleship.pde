Player player;
Opponent opponent;
Board oppBoard;
Board plrBoard;
String phase;
PImage lines;

int setsize;

Ship target;
boolean t;

String mx="-1";
String my="-1";

void setup(){
  lines = loadImage("lines.png");
  lines.resize(width, height);

  size(580,800);
  setsize = 130;
  phase = "setup";  
  
  oppBoard = new Board(setsize+10, 5);
  plrBoard = new Board(setsize+10, 5 + height/2);
  player = new Player(plrBoard);
  opponent = new Opponent(oppBoard);  
  
  player.ship();
  opponent.ship();
  }

void draw(){
  background(255);
  image(lines, 0, 0);
  showInfo();
  opponent.d();
  player.d();
}

void mouseDragged(){
  if(phase == "setup"){
    if(!t){
      for(Ship ship: plrBoard.ships){
         if(ship.drag(mouseX, mouseY) == true){
           target = ship;
           //System.out.println("target " + target.pins.length);
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

void mouseReleased(){
 t=false; 
}

void keyPressed(){
  if(key == 'r' && t){
    //System.out.println("r");
    target.r();
  }
  //if(key == 'a'){
  //  mx= "" + mouseX;
  //  my = "" + mouseY;
  //  target.info();
  //}
  if(key == ' '){
   phase = "player 1 turn";
   plrBoard.gridShips();
  }
  
  if(key == 'q'){
   phase = "setup"; 
   System.out.println("\n\n\n\n");
  }
}

void showInfo(){
  String print = "Phase: " + phase;
  fill(0,0,0);
  text(print, 20, height-30);//, height-200);
  text(mx + "," + my, 20, height-50);
  //textSize(400);
  //text("hello", 100, 100);
}
