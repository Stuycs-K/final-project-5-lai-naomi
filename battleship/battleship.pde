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
   Ship s2 = new Ship(20, 20, 2, true);
   Ship s3a = new Ship(20, 95, 3, true);
   Ship s3b = new Ship(20, 200, 3, true);
   Ship s4 = new Ship(20, 305, 4, true);
   Ship s5 = new Ship(20, 440, 5, true);   
   plrBoard.addShip(new Ship[]{s2, s3a, s3b, s4, s5});
   target = s2;
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
  target.limitMovement();
 }
}

void mouseReleased(){
 t=false; 
}

void showInfo(){
  String print = "Phase: " + phase + "\ntarget " + target.pins.length + "\nt " + t;
  fill(0,0,0);
  text(print, 20, height-30);//, height-200);
  //textSize(400);
  //text("hello", 100, 100);
}
