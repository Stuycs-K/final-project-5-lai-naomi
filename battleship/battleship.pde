Game game;
boolean keyP;
int setsize;
// 168, 39: start for opp board
// 168, 446: start for player board

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

void mouseClicked(){
  game.b();
}

void mouseDragged(){
  game.move();
}

void mouseReleased(){
 game.release();
}

void keyPressed(){
  if(key == 'r'){ //rotates ship
    game.r();
  }
  if(key == '0'){ //resets game
    game = new Game();
  }
  if(key == 't'){ //toggles opp ship visibility
    game.toggle();
  }
   if(key=='s'){
    game.randomShips(); 
   }
}
