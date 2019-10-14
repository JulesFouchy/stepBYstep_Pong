class Raquetteuh{
  
  PVector pos = new PVector(50, 70);
  
  void VienFrer() {
    rect(pos.x, pos.y, 30, 210, 110);
  }
  
  void Djadja (){
    pos.y=mouseY;
  }
  
}
