Partie partie;

void setup(){
  fullScreen();
  rectMode(CENTER);
  textAlign(CENTER);
  
  partie = new Partie();
  partie.commencer();
}

void draw(){
  // nettoie l'écran
  fill(0, 50);
  rect(width/2,height/2,width,height);
  // jouer
  partie.actualiser();
}

void keyPressed(){
  if( keyCode == ENTER ){
    partie.commencer();
  }
  if( key == ' ' ){
    partie.balle.pause = !partie.balle.pause;
  }
}
