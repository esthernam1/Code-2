class Object {
  PVector pos, vel, accel; 
  float mass; 

  Object(float x, float y) {
    pos = new PVector(random(width), random(height)); 
    vel = new PVector(0, 0); 
    accel = new PVector(0, 0); 
    mass = 10.0;
  }

  void move() {
    vel.add(accel); 
    pos.add(vel); 

    accel.mult(0);
  }

  void display() {
    stroke(0);
    fill(175);
    ellipse(pos.x, pos.y, mass*10, mass*10);
  }

  void checkBoundaries() {
    if (pos.x > width) {
      pos.x = width;
      vel.x *= -1;
    } else if (pos.x < 0) {
      vel.x *= -1;
      pos.x = 0;
    }

    if (pos.y > height) {
      vel.y *= -1;
      pos.y = height;
    }
  } 

  void addForce(PVector force) {
    force.div(mass); 
    accel.add(force);
  }
}
