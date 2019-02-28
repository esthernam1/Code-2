Ball[] balls = {new Ball(100, 100, random(0, 60)), new Ball(600, 600, random(50, 80))};

void setup() {
  size(800, 800);
}


void draw() {
  background(#F0C349);

  //Ball b is temporary
  for (Ball b : balls) {
    b.update();
    b.display();
    b.checkBound();
  }
  balls[0].checkCol(balls[1]);
  balls[1].checkCol(balls[0]);
}