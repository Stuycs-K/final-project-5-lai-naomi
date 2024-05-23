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
  setsize = 180;
  rect(0,0,setsize,height);
  rect(setsize,0,width-setsize,height/2);
  rect(setsize,height/2,width-setsize,height/2);
  // boards
  oppBoard = new Board(setsize+10, 5);
  oppBoard.drawGrid();
  plrBoard = new Board(setsize+10, 5 + height/2);
  plrBoard.drawGrid();
  
  player = new Player(plrBoard);
  opponent = new Opponent(oppBoard);
}

void draw(){
  
}

void showInfo(){
  
}
