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

# 4) Déplacement de la balle et rebonds

La semaine dernière on a fait se déplacer la balle tout droit en augmentant seulement x (ou y pour certains d'entre vous). Pour qu'elle parte en diagonale, il va falloir augmenter à la fois x et y; pour cela, on va stocker la direction dans une variable qui sera un vecteur :

```java
class Balle{
  PVector direction = PVector.fromAngle(0.1*TAU);
  // . . .
};
```

Vous pouvez choisir n'importe quelle direction entre 0\*TAU et 1\*TAU (faites des tests !) ; 0\*TAU c'est à droite, 0.25\*TAU en haut, 0.5\*TAU à gauche, 0.75\*TAU en bas.

Maintenant, dans la méthode *move*, on va remplacer "pos.x += 0.01;" par "pos.add(direction);". Vous remarquerez que la balle va beaucoup trop lentement ! Il nous faut donc une variable pour préciser la vitesse : 

```java
class Balle{
  PVector direction = PVector.fromAngle(0.1*TAU);
  float vitesse = 15;
  // . . .
};
```

Et maintenant on peut multiplier la direction par la vitesse pour l'agrandir : "position.add(PVector.mult(direction, vitesse))";

Remarque : c'est une bonne chose d'avoir séparé direction et vitesse car ça nous permettra d'augmenter la vitesse sans changer la direction, ou changer la direction sans modifier la vitesse.

# 5) Améliorations selon vos envies !

Testez votre jeu ; est-ce que des choses ne vous plaisent pas ? Comment pourrait-on y remédier ?
