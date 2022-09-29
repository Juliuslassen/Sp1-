float posX;
float posY;

float ballSpeedX;
float ballSpeedY;

int aColor;

int diameter;

boolean button;
boolean hit;

public class Ball {

  Ball(int tdiameter, float startX, float startY) {
    diameter= tdiameter;

    hit= false;

    posX=startY/2;
    posY=startY/2;

    aColor=(int)random(#000000);

    // en Ternary operator gør det muligt at lave min random coinflip til en linje.
    // The conditional (ternary) operator is the only JavaScript operator that takes three operands: a condition followed by a question mark ( ?
    float startSpeed = random(1) < .5 ? 3 : -3;

    ballSpeedX=startSpeed;
    ballSpeedY=startSpeed;
    println(startSpeed);
  }

  // drawing the ball
  void drawBall()
  {
    ellipseMode(CENTER);

    fill(aColor);
    ellipse(posX, posY, diameter, diameter);
  }

  // a function to check if the ball has hit the playercontrolled paddle
  // when the ball is hit change the direction of the ball and the color.   -> might add score later.
  void checkCollision(Spiller p1) {
    hit = spillerBall(posX, posY, diameter, posXS, posYS, tykkelse, rectHeight);
    if ( hit == true) {
      ballSpeedX *=-1;
      ballSpeedY *= random(1) < .5 ? -1 : 1;
      aColor=(int)random(#000000);
    }
  }


  // a method to make the ball stay inside the window.
  void direction() {

    posX= posX+ballSpeedX;
    posY= posY+ballSpeedY;

    if (posY > height || posY < 0) {
      ballSpeedY *=-1;
    }

    if (posX > width) {
      ballSpeedX *=-1;
    }


    // When the ball hits the "goal" return the ball to the center, and later add a score system.
    if (posX <-60) {
      posX=width/2;
      posY=height/2;
      ballSpeedX = random(1) < 0.5 ? 3 : -3;
    }
  }

  // r key to restart the game.
  void keyPressed() {
    button=!button;
    if (key == 'r') {
      posX=width/2;
      posY=height/2;
      ballSpeedX = random(1) < 0.5 ? 3 : -3;
      ballSpeedY = random(1) < 0.5 ? 3 : -3;
    }
  }
}
