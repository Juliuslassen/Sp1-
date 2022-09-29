float posXS;
float posYS;

int rectHeight;
int rectSpeed;
int tykkelse;


public class Spiller {

  Spiller(int a, int h ) {
    posXS= 15;
    posYS=a/2;

    rectHeight=h;
    tykkelse= 15;

    rectSpeed=0;
  }

  void drawRect() {
    fill(175);
    rectMode(CENTER);
    rect(posXS, posYS, tykkelse, rectHeight);
  }

  void move() {
    posYS+= rectSpeed;
  }

  // the restart method again.
  void keyPressed() {
    button=!button;
    if (key == 'r') {
      posYS=height/2;
      rectSpeed=0;
    }
    //Code that allows the player to control the "paddle"
    if (key == 'w') {
      rectSpeed=-3;
    if (posYS-(rectHeight/2) <0) 
      rectSpeed=0;
    }
    if ( key == 's') {
      rectSpeed=3;
    if (posYS+(rectHeight/2) > height)
      rectSpeed=0;
    }
  }
}
