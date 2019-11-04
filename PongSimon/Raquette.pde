class Raquetteuh{
  float largeur = 30;
  float hauteur = 210;
  PVector pos = new PVector(50, 70);
  
  void VienFrer() {
    rect(pos.x, pos.y, 30, 210, 110);
  }
  
  void Djadja (){
    pos.y=mouseY;
  }
  void moveIA(Bouboule Boule){
  pos.y = Boule.pos.y;
  }
}
