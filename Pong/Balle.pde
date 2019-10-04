class Balle {
  float hauteur = 50;
  float largeur = 50;
  PVector position;
  PVector direction;
  float vitesse = 10;
  boolean pause = true;
  
  Balle(float x, float y, PVector directionInitiale) {
    position = new PVector(x, y);
    direction = directionInitiale;
  }
  
  void afficheToi() {
    noStroke();
    fill(255,120,255);
    rect(position.x, position.y, largeur, hauteur);
  }
  
  void deplaceToi() {
    if( !pause){
      position.add(PVector.mult(direction, vitesse));
    }
  }
  
  void augmenteTaVitesse(){
    vitesse += 2;
  }
  
  boolean collisionAvecUnMur() {
    boolean collisionEnHaut = position.y < hauteur/2;
    boolean collisionEnBas  = position.y > height - hauteur/2;
    return collisionEnHaut || collisionEnBas;
  }
  
  void rebondiSurLeMur() {
    direction.y *= -1;
    deplaceToi();
  }
  
  boolean collisionAvecRaquette(Raquette raquette){
    return abs( position.x - raquette.position.x ) < largeur/2 + raquette.largeur/2
        && abs( position.y - raquette.position.y ) < hauteur/2 + raquette.hauteur/2;
  }
  
  void rebondiSurUneRaquette() {
    direction.x *= -1;
    deplaceToi();
    deplaceToi();
  }
}
