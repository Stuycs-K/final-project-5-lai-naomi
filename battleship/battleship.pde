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
  if(key == 'r'){ //resets game
    game.r();
  }
  if(keyCode == RIGHT){
    System.out.println(1);
   game.nextPhase();
  }  
  if(keyCode == LEFT){
   game.prevPhase();
  }
  if(key == 'a'){
   game.showLoc(); 
  }
  if(key == 'd'){
    System.out.println(mouseX + "," + mouseY);
  }  
  if(key == '0'){
    System.out.println("reset");
    game = new Game();
  }
  if(key == 't'){
    game.toggle();
  }
}
