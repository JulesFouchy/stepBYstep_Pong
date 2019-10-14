class Balle{
  
  PVector pos = new PVector(width/2, height/2);
  
  void affichage(){
    ellipse(pos.x, pos.y, 50, 50);
  }
  
  void deplacement(){
    pos.y += 1;
  }
  
}
