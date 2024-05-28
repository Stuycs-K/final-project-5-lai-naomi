Player player;
Opponent opponent;
Board oppBoard;
Board plrBoard;
String phase;

int bsize;
int setsize;

void setup(){
  // frame
  size(580,800);
  bsize = height/2 - 50;
  setsize = 130;
  rect(0,0,setsize,height);
  rect(setsize,0,width-setsize,height/2);
  rect(setsize,height/2,width-setsize,height/2);
  phase = "setup";
  
  // boards
  oppBoard = new Board(setsize+10, 5);
  oppBoard.drawGrid();
  plrBoard = new Board(setsize+10, 5 + height/2);
  plrBoard.drawGrid();
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
  }

void draw(){
  plrBoard.drawShips();
}

void showInfo(){
  String print = "Phase: " + phase;
  text(print, height-200, 20);//, height-200);
}
