class raquette{
  
  PVector pos = new PVector (50, 50);
  
  void affichage() {
    fill(255);
    rect(pos.x, pos.y, 50 , 1);
  }
  
  void Move() {
    pos.y = mouseY;
  }

}
