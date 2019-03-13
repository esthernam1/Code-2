class Ball {
  PVector pos; 
  PVector vel; 

  int size = 20; 

  //CONSTRUCTOR
  Ball(float x, float y, float xSpeed, float ySpeed) {
    pos = new PVector(x, y); 
    vel = new PVector(xSpeed, ySpeed);
  }

  //METHODS
  void bounceSide() {
    vel.x = vel.x*-1;
  }

  void bounceTop() {
    vel.y = vel.y*-1;
  }

  void ballReset() {
    pos.x = random(width*.25, width*.75);
    pos.y = height*.75;
  }

  void paddleBounce() {
    vel = vel.mult(random(-1, -1.3));
  }

  void move() {
    pos.add(vel);
  }

  void display() {
    fill(255); 
    ellipse(pos.x, pos.y, size, size);
  }

  //THIS CAN'T WORK BC THEY ARE DIF SHAPES
  void checkCollision(Paddle p) {
    PVector dist = PVector.sub(p.pos, pos);
    float distMag = dist.mag(); //0verall distance
    float minDist = size + p.w/2; //minimum distance before the balls touch each other

    if (distMag < minDist) {
      b.paddleBounce();
    }
  }
}
