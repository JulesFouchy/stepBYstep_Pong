Raquetteuh Coucou = new Raquetteuh();
Raquetteuh A = new Raquetteuh ();
Bouboule L = new Bouboule ();

void setup (){
  size(1400,800);
}

void draw(){
  background(240, 143, 58);
  L.JeanPaul();
  Coucou.VienFrer();
  Coucou.Djadja();
  L.Move();
  A.moveIA(L);
  A.VienFrer();
  if (L.Boopi(Coucou)){
    L.Boopa();
    if (L.Boope()){
      L.Boop();
    }
  }
} 
