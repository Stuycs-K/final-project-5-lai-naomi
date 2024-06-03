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
  if(key == 'e'){
   game.nextPhase();
  }  
  if(key == 'q'){
   game.prevPhase();
  }
  if(key == 'a'){
   game.showLoc(); 
  }
  if(key == 'd'){
    System.out.println(mouseX + "," + mouseY);
  }  
  if(key == 'r'){
    System.out.println("reset");
    game = new Game();
  }
}
