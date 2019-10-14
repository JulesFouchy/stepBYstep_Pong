// il faut déclarer les objets ici
Raquette raquetteGauche;
Balle balle;

void setup(){
  size(1400,800); // on choisit la taille de la fenêtre (en pixels)
  raquetteGauche = new Raquette();
  balle = new Balle();
  rectMode(CENTER); // on change un paramètre parce que c'est mieux comme ça ^^
}

void draw(){
  // et c'est ici qu'on dit ce qu'il faut faire à chaque frame
  background(0);
  raquetteGauche.affichage();
  raquetteGauche.deplacement();
  balle.affichage();
  balle.deplacement();
}


void keyPressed(){
  if( keyCode == ENTER ){
    // si on veut que quelque chose se passe à chaque fois qu'on appuie sur ENTREE, c'est ici qu'il faut le dire
  }
  if( key == ' ' ){
    // et pour la barre d'espace c'est là ^^
  }
}
