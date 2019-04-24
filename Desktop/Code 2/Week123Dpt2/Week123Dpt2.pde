float theta;
int frms = 200;

void setup() {
  size(500, 500, P3D);
  smooth(10);
}

void draw() {
  camera(mouseX, height/2, (height/2) / tan(PI/6), width/2, height/2, 0, 0, 1, 0);
  background(255);
  strokeWeight(1);
  stroke(255, 15);
directionalLight(0, 255, 0, 0, -1, 0);  translate(width/2, height/2, -100);
  rotateY(radians(15));
  rotateX(radians(30));

  circle(300, 8, #1F97C9, 30, 1);
  circle(200, 4, #DD4669, 25, -1);
  circle(100, 2, #AFBF14, 20, 1);

  theta += TWO_PI/frms;
}

void circle(float radius, int num, color col, float maxSz, int dir) {
  for (int i=0; i<num; i++) {
    float r = radius;
    float angle = TWO_PI/num*i;
    float x = cos(angle)*r;
    float y = sin(angle)*r;
    float boxSize = map(sin(dir*(theta+angle*1)), -1, 1, 10, maxSz);
    pushMatrix();
    translate(x, y);
    fill(col);
    //stroke(#E9D3AF);
    noStroke();
    sphere(boxSize);
    popMatrix();
  }
}