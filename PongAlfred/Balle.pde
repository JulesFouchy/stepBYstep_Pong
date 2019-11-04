class Balle{
  
  PVector pos = new PVector(width/2, height/2);
  PVector direction = PVector.fromAngle(0.1*TAU);
float largeur =50;
float hauteur =70; 
  void affichage(){
    rect(pos.x, pos.y, largeur, hauteur);
  }
  
  void deplacement(){
    pos.y += direction.y;
    pos.x += direction.x;
  }
  
  void rebondX(){
     direction.x  = - direction.x;
  }
  
  boolean RebondOuPasX(Raquette raq){
    return abs( pos.x - raq.pos.x ) < raq.largeur/2 + largeur/2 ;
    
  }
  
   void rebondY(){
     direction.y  = - direction.y;
  }
  
  boolean RebondOuPasY(Raquette raq){
    return abs( pos.y - raq.pos.y ) < raq.hauteur/2 + hauteur/2 ;
  }
  
}  
