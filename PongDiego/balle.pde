class balle{ 
  
  PVector pos = new PVector (700,400);
  
  void affichage() {
    fill(255);
    ellipse(pos.x, pos.y, 50, 50);
  }
  
  void move() {
    pos.x += 0.9;
  }
   
}
