raquette raquetteDeGauche = new raquette();
balle baboule = new balle();

void setup(){
  size(1400,800); // on choisit la taille de la fenêtre (en pixels)
  rectMode(CENTER); // on change un paramètre parce que c'est mieux comme ça ^^
}

void draw(){
 //background(176,15,574 );
 fill(176,15,574, 0.001);
 rect(width/2, height/2, width, height);
  
 raquetteDeGauche.affichage();
 baboule.affichage();
 baboule.move();
 raquetteDeGauche.Move();
}


void keyPressed(){
  if( keyCode == ENTER ){
    // si on veut que quelque chose se passe à chaque fois qu'on appuie sur ENTREE, c'est ici qu'il faut le dire
  }
  if( key == ' ' ){
    // et pour la barre d'espace c'est là ^^
  }
}
