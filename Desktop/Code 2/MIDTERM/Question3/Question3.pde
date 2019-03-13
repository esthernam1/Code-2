ArrayList<Object> myObject = new ArrayList<Object>();  

void setup() {
  size(600, 600); 
}

void draw() {
  background(255); 
  for (int i=0; i<myObject.size(); i++) {
    Object o = myObject.get(i);
    PVector gravity = new PVector(0, .1*o.mass); 
    PVector wind = new PVector(0.1, 0); 
    o.move(); 
    o.checkBoundaries(); 
    o.display();
    o.addForce(gravity);
    o.addForce(wind);
  }
}

void mousePressed() {
  myObject.add(new Object(mouseX, mouseY));
}
