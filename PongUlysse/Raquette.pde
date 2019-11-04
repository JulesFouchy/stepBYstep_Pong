class raquette{
  
  PVector pos;
  float largeur;
  float hauteur;
  
  raquette( float x, float y){
    pos = new PVector(x, y);
  }

  void affichage(){
    fill (0,0,0);
    
    rect(pos.x, pos.y, 40, 200, 70);
  }
 
  void Move(){
    pos.y = mouseY;    
  }
void moveIA(balle_du_winner balle){
  pos.y=balle.pos.y;
}
}
