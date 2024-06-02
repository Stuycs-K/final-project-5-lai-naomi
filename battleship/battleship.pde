int setsize;
Game game;
boolean keyP;

void setup(){
  size(580,800);
  setsize = 130; 
  keyP = false;
  
  game = new Game();
  }

void draw(){
  background(255);
  game.d();
}

void mouseDragged(){
  game.move();
}

void mouseReleased(){
 game.release();
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
  if(key == 'e'){
   game.showLoc(); 
  }
}
