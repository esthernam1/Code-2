class Mover {
  PVector position, velocity, acceleration;
  float mass;

  //constructor with parameters bc something is changing
  Mover(float m, float x, float y) {
    //setting up temporary values 
    mass = m;
    position = new PVector(x, y);
    velocity = new PVector(1, 0);
    acceleration = new PVector(0, 0);
  }

  //methods
  void applyForce(PVector force){
    PVector f = PVector.div(force, mass);
    //PVector f acts as a placeholder 
    acceleration.add(f);
    
    //force = mass*acceleration
  }
  void update() {
    velocity.add(acceleration);
    position.add(velocity);
    acceleration.mult(0);
    
  }
  void display() {
    fill(255, 100);
    ellipse(position.x, position.y, 50, 50);
  }
}
