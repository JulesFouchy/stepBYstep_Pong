# PONG pas à pas

Vous pouvez aller sur https://www.openprocessing.org/sketch/764514 et jouer un peu ; ne regardez pas trop le code, on va essayer de tout réécrire nous-même ;)

Ensuite téléchargez "PongCodeATrou", et c'est parti !

# 1) Les raquettes

On commence par la classe la plus simple : Raquette.

Quelles sont les actions qu'une raquette doit pouvoir effectuer ?
Quelles sont les informations qu'elle doit connaître pour cela ?

# 2) La balle

Rebelotte ! Une balle partage peut-être des méthodes en commun avec une raquette, mais elle a aussi ses spécificités ! De quoi a-t-on besoin ?

# 3) Assembler le tout

Pour faire tourner le jeu il va falloir répéter une suite d'action (en général 60 fois par seconde (vous avez déjà entendu parler de "60 FPS" ?)). Quelles sont les actions à répéter à chaque frame ? Que faut-il tester, faire avancer... ?

# 4) Déplacement de la balle

La semaine dernière on a fait se déplacer la balle tout droit en augmentant seulement x (ou y pour certains d'entre vous). Pour qu'elle parte en diagonale, il va falloir augmenter à la fois x et y ; pour cela, on va stocker la direction dans une variable qui sera un vecteur :

```java
class Balle {
  PVector direction = PVector.fromAngle(0.45*TAU);
  // . . .
};
```

Vous pouvez choisir n'importe quelle direction entre 0\*TAU et 1\*TAU (faites des tests !) ; 0\*TAU c'est à droite, 0.25\*TAU en bas, 0.5\*TAU à gauche, 0.75\*TAU en haut.

Maintenant, dans la méthode *move*, on va remplacer "pos.x += 15;" par "pos.add(direction);".

Vous remarquerez que la balle va beaucoup trop lentement ! Il nous faut donc une variable pour préciser la vitesse : 

```java
class Balle {
  float vitesse = 15;
  PVector direction = PVector.fromAngle(0.45*TAU);
  // . . .
};
```

Et maintenant on peut multiplier la direction par la vitesse pour l'agrandir : 
```java
void move() {
  pos.add(PVector.mult(direction, vitesse));
}
```

Remarque : c'est une bonne chose d'avoir séparé direction et vitesse car ça nous permettra d'augmenter la vitesse sans changer la direction, ou changer la direction sans modifier la vitesse.

# 5) Rebonds

Quand la balle atteint le mur du haut ou du bas, ou alors l'une des deux raquettes, il faut qu'elle rebondisse ! C'est-à-dire qu'il faut changer sa direction. Question : quelle est l'opération à effectuer sur direction.x et/ou direction.y ?

SPOIL : quand la balle rebondit sur le mur du haut, elle continue à aller à gauche, mais par contre au lieu de monter elle se met à descendre ; il faut donc qu'au lieu d'ajouter quelque chose à pos.y, on le soustraie. Autrement dit le signe de pos.y change :

```java
void rebondSurMurHautOuBas() {
  direction.y *= -1;
}
```

Remarque : ça marche pour le mur du bas comme pour celui du haut  !

Et pour le rebond sur une raquette ? (c'est-à-dire le rebond vertical).
On fait la même chose mais sur x !

```java
void rebondSurRaquette() {
  direction.x *= -1;
}
```

Bien bien bien, c'est bien beau tout ça, mais avant de faire rebondir la balle il faut déjà savoir quand est-ce qu'il y a collision ! Pour ça il faut pouvoir dire si deux rectangles se chevauchent (même si vous avez choisi de faire une balle avec un cercle, on prendra un carré pour sa hitbox car ça sera plus simple ;) ).

Je vous l'expliquerai à l'oral si vous voulez, en tout cas voilà les fonctions pour tester ça : 

```java
class Balle {
  // . . .
  float rayon = 50;
  
  boolean collisionAvecUnMur() {
    boolean collisionEnHaut = pos.y < rayon;
    boolean collisionEnBas  = pos.y > height - rayon;
    return collisionEnHaut || collisionEnBas;
  }
  
  boolean collisionAvecRaquette(Raquette raquette){
    return abs( pos.x - raquette.pos.x ) < rayon + raquette.largeur/2
        && abs( pos.y - raquette.pos.y ) < rayon + raquette.hauteur/2;
  }
};
```

Pensez bien à mettre la taille de la balle et de la raquette dans des variables si ce n'était pas déjà fait ! (respectivement rayon et largeur/hauteur) (C'est ces variables que vous devez aussi utiliser lors de l'affichage de la balle et de la raquette !)

Maintenant qu'on a tout ce qu'il nous faut, il ne reste plus qu'à tout assembler dans notre fonction principale : *draw*. À vous de jouer !

# 6) Améliorations selon vos envies !

Testez votre jeu ; est-ce que des choses ne vous plaisent pas ? Comment pourrait-on y remédier ?
