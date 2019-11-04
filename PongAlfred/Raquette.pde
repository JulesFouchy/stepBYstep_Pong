class Raquette{
  
  PVector pos = new PVector(100, 0);
  float largeur = 70;
  float hauteur = 300;

  void affichage(){
    rect(pos.x, pos.y, largeur, hauteur);
  }
 
  void deplacement(){
    pos.y = mouseY;    
    pos.x = mouseX;
  }

}
