class balle_du_winner{
  
  PVector pos = new PVector(width/2, height/2);
  
  void affichage(){
    ellipse(pos.x, pos.y, 50, 50);
  }
  
  void Move(){
    pos.y += 1;
  }
  
}
