class Bouboule{
  
  float rayon = 30;
  float vitesse = 13;
  PVector direction = PVector.fromAngle(0.45*TAU);
  PVector pos = new PVector(700,400);
 

  void JeanPaul() {
    ellipse(pos.x, pos.y, 30, 30);
  }

 void Move(){
    pos.add(PVector.mult(direction, vitesse));
  }
  void Boop() {
  direction.y *= -1;
}
void Boopa() {
  direction.x *= -1;
}
 boolean Boope() {
    boolean Up = pos.y < rayon;
    boolean Down  = pos.y > height - rayon;
    return Up || Down;
  }
  
  boolean Boopi(Raquetteuh Coucou){
    return abs( pos.x - Coucou.pos.x ) < rayon + Coucou.largeur/2
        && abs( pos.y - Coucou.pos.y ) < rayon + Coucou.hauteur/2;
  }

}
