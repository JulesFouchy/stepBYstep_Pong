class balle_du_winner{
  
  PVector pos = new PVector(width/2, height/2);
  PVector direction = PVector.fromAngle(0.45*TAU);
  float rayon = 50;
  
  void affichage(){
    ellipse(pos.x, pos.y, rayon, rayon);
  }
  
  void Move(){
    pos.y += direction.y*10;
    pos.x += direction.x*10;
    
  }
  
  void rebondSurRaquette() {
  direction.x *= -1;
  }
  
    void mur() {
  direction.y *= -1;
  }
  
   void rebondSurMurHautOuBas(){
  direction.y *= -1;
  
   }
   
    boolean collisionAvecUnMur(){
      boolean collisionEnHaut = pos.y < rayon;
      boolean collisionEnBas  = pos.y > height - rayon;
      return collisionEnHaut || collisionEnBas;
    }
  
   boolean collisionAvecRaquette(raquette raq){
    return abs( pos.x - raq.pos.x ) < rayon + raq.largeur/2
     && abs( pos.y - raq.pos.y ) < rayon + raq.hauteur/2;
  }



  

}
