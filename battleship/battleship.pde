Player player;
Opponent opponent;
Board oppBoard;
Board plrBoard;
String phase;
PImage lines;

int bsize;
int setsize;

Ship target;
boolean t;

String mx="-1";
String my="-1";

void setup(){
  lines = loadImage("lines.png");
  lines.resize(width, height);
  // frame
  size(580,800);
  bsize = height/2 - 50;
  setsize = 130;
  phase = "setup";  
  // boards
  oppBoard = new Board(setsize+10, 5);
  plrBoard = new Board(setsize+10, 5 + height/2);
  player = new Player(plrBoard);
  opponent = new Opponent(oppBoard);  
  //boats
  // Ship(int x, int y, int l, boolean v)
   Ship s2a = new Ship(20, 20, 2, true);
   Ship s2b = new Ship(20, 95, 2, true);
   Ship s2c = new Ship(20, 200, 2, true);
   Ship s2d = new Ship(20, 305, 2, true);
   Ship s2e = new Ship(20, 440, 2, true);   
   plrBoard.addShip(new Ship[]{s2a, s2b, s2c, s2d, s2e});
   target = s2a;
  }

void draw(){
  background(255);
  image(lines, 0, 0);
  plrBoard.drawGrid();
  oppBoard.drawGrid();
  plrBoard.drawShips();
  showInfo();
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
  if(key == 'a'){
    mx= "" + mouseX;
    my = "" + mouseY;
  }
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
  String print = "Phase: " + phase + "\ntarget " + target.pins.length;
  fill(0,0,0);
  text(print, 20, height-30);//, height-200);
  text(mx + "," + my, 20, height-50);
  //textSize(400);
  //text("hello", 100, 100);
}
