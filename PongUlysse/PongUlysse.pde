
// il faut déclarer les objets ici
raquette raquette_de_gauche;
balle_du_winner Baballe;
raquette raquette_ennemie;
void setup(){
  size(1400,800); // on choisit la taille de la fenêtre (en pixels)
  // initialiser les objets ici
  raquette_de_gauche = new raquette(100, 500);
  Baballe = new balle_du_winner();
  rectMode(CENTER); // on change un paramètre parce que c'est mieux comme ça ^^
  raquette_ennemie =new raquette(1300,500);
}

void draw(){
  // et c'est ici qu'on dit ce qu'il faut faire à chaque frame
  fill(0, 0, 225, 60);
  rect(width/2, height/2, width, height);
  raquette_de_gauche.affichage();
  raquette_de_gauche.Move();
  Baballe.affichage();
  Baballe.Move();
  raquette_ennemie.moveIA(Baballe);
  raquette_ennemie.affichage();
  
  if (Baballe.collisionAvecRaquette(raquette_de_gauche) || Baballe.collisionAvecRaquette( raquette_ennemie) ){
  Baballe.rebondSurRaquette();
  }
  if (Baballe.collisionAvecUnMur()){
  Baballe.rebondSurMurHautOuBas();
  }
}


void keyPressed(){
  if( keyCode == ENTER ){
    // si on veut que quelque chose se passe à chaque fois qu'on appuie sur ENTREE, c'est ici qu'il faut le dire
  }
  if( key == ' ' ){
    // et pour la barre d'espace c'est là ^^
  }
}
