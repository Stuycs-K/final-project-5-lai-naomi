Player player;
Opponent opponent;
Board oppBoard;
Board plrBoard;
String phase;

int bsize;
int setsize;

void setup(){
  size(580,800);
  bsize = height - 150;
  setsize = 180;
  rect(0,0,setsize,height);
  rect(setsize,0,width-setsize,height/2);
  rect(setsize,height/2,width-setsize,height/2);
  
  oppBoard = new Board(setsize + 50, 50);
  //plrBoard = new Board();
  player = new Player(plrBoard);
  opponent = new Opponent(oppBoard);
}

void draw(){
  
}

void showInfo(){
  
}
