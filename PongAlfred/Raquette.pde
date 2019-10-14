class Raquette{
  
  PVector pos = new PVector(100, 500);

  void affichage(){
    rect(pos.x, pos.y, 40, 200, 70);
  }
 
  void deplacement(){
    pos.y = mouseY;    
  }

}
