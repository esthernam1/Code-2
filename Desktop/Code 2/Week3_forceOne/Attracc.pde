class Attracc {
  float mass;
  float G;
  PVector position, dragOffset;

  //constructor with no parameters
  Attracc() {
    position = new PVector(width/2, height/2);
    mass = 20;
    G = .98;
    dragOffset = new PVector(0.0, 0.0);
  }
  
  PVector Attracc(Mover m){
    PVector force = PVector.sub(position, m.position);
    
    //mag = magnitude gets the absolute value of the distance
    float d = force.mag();
    //constrains a variable into a range of values
    d = constrain(d, 5.0, 25.0);
    //normalize basically SCALES eveything from 0-1 --for a useable proportion
    force.normalize(); 
    float strength = (G * mass * m.mass)/(d*d);
    //bigger the distance the weaker the strnegth
    //closer we get to the attractor, the stronger the force
    force.mult(strength); 
    return force;
  }
  
  void display(){
    fill(255);
    ellipse(position.x, position.y, mass*2, mass*2);
  }
}
