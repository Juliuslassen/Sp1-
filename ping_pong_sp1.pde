//Ping i processing
Ball pingball;
Spiller p1;
Ball[] pingball2;

int w1;
int h1;

void setup() {
  size(800, 500);
  w1= width;
  h1= height;
  pingball= new Ball(25, width, height);
  p1= new Spiller(height, 100);
  pingball2 = new Ball[1];
}

void draw() {
  background(255);

  textSize(50);
  fill(0, 15, 255);
  text("Press r to restart", 220, 100);

  textSize(20);
  fill(175, 15, 255);
  text("Use w and s to control", 50, height-40);

  for (Ball ball1 : pingball2) {
    pingball.drawBall();
    pingball.checkCollision(p1);
    pingball.direction();
    pingball.keyPressed();
  }

  p1.drawRect();
  p1.keyPressed();
  p1.move();
}
