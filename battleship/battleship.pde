int setsize;
Game game;

void setup(){
  size(580,800);
  setsize = 130; 
  
  game = new Game();
  }

void draw(){
  background(255);
  game.d();
}

void mouseDragged(){
  game.moveShip();
}

void mouseReleased(){
 game.releaseShip();
}

void keyPressed(){
  if(key == 'r'){
    game.r();
  }
  if(key == ' '){
   game.nextPhase();
  }  
  if(key == 'q'){
   game.prevPhase();
  }
  
  // testing
}
