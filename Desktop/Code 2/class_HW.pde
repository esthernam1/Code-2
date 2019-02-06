Zoog z;
ArrayList<Zoog> myZoog;



void setup() {
  size(480, 270);
  z = new Zoog(width/2, height/2, 60, 60, 16);
  myZoog = new ArrayList <Zoog>();
  noStroke();
}

void draw() {
  background(90, 140, 230);
  // mouseX position determines speed factor
  float factor = constrain(mouseX/10, 0, 5);
  z.jiggle(factor);
  z.display();

  for (int i =0; i<myZoog.size(); i++) {
    Zoog z = myZoog.get(i);
    z.display();
    z.jiggle(factor);
  }

 
}

void mousePressed() {
  //myZoog.add(new Zoog());
}
