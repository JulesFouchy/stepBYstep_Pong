class Partie{
  Balle balle;
  Raquette notreRaquette;
  Raquette raquetteDeIA;
  int compteurDeRebonds;
  
  Partie(){
    notreRaquette = new Raquette(100);
    raquetteDeIA = new Raquette(width - 100);
  }
  
  void commencer(){
    float angle = PI + randomSign() * random(0.15,0.25)*PI;
    balle = new Balle(width/2, height/2, PVector.fromAngle(angle));
    compteurDeRebonds = 0;
  }
  
  void actualiser() {
    // compteur de rebonds
    fill(255);
    textSize(50);
    text(compteurDeRebonds , width/2, height*0.1);
    // on s'occupe de la balle
    balle.deplaceToi();
    if( balle.collisionAvecUnMur() ){
      balle.rebondiSurLeMur();
    }
    if( balle.collisionAvecRaquette( notreRaquette ) || balle.collisionAvecRaquette( raquetteDeIA ) ){
      balle.rebondiSurUneRaquette();
      balle.augmenteTaVitesse();
      compteurDeRebonds += 1;
    }
    balle.afficheToi();
    // on s'occupe de notre raquette
    notreRaquette.suisLaSouris();
    notreRaquette.afficheToi();
    // et de celle de l'IA
    raquetteDeIA.deplacementAutomatique( balle );
    raquetteDeIA.afficheToi();
  }
}
