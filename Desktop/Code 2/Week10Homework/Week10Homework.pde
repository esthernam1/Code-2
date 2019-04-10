int loon = 500;
int nSpeed = 150;
float a = 0;

void setup() {
  size(800, 800);
  background(200, 122, 120);
  fill(0, 1);
  stroke(255);
}

void draw() {
  rect(-10, -10, width+10, height+10);
  for (int j = 0; j < 10; j++) {
    //beginShape();
    for (int i = 0; i < 360; i++) {
      float x = width/2 + noise(a/nSpeed) * loon * cos(radians(a));
      float y = height/2 + noise(a/nSpeed) * loon * sin(radians(a));
      line(x, y, width/2, height/2);
      //curveVertex(x,y);
    }
    //endShape(CLOSE);
    a+=.3;
    float rotate = a%360;
  }
}