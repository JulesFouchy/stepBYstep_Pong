class Raquette {
  float hauteur = 150;
  float largeur = 30;
  float positionX;
  PVector position;
  
  Raquette(float positionDeLaRaquetteEnX) {
    positionX = positionDeLaRaquetteEnX;
    position = new PVector(positionX, 0);
  }
  
  void afficheToi() {
    noStroke();
    fill(255,255,255);
    rect(position.x, position.y, largeur, hauteur);
  }
  
  void suisLaSouris() {
    position.y = constrain(mouseY, hauteur/2, height-hauteur/2);
  }
  
  void deplacementAutomatique(Balle balle) {
     position.y = constrain(balle.position.y, hauteur/2, height-hauteur/2);
  }
}
