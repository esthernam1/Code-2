int branchHeight = 100;
float theta;

void setup() {
  size(640, 360);
}

void draw() {
  background(255);
  float a = (mouseX/ (float) width) *90f;
  theta = radians(a);
  translate(width/2, height);
  line(0, 0, 0, -branchHeight);
  translate(0, -branchHeight);
  drawBranch(branchHeight);
}


//draw a line
//within our draw line function, draw two more lines

void drawBranch(float h) {
  h *= .75;
  if (h > 5) {
    pushMatrix();
    rotate(theta);
    line(0, 0, 0, -h);
    translate(0, -h);
    drawBranch(h);
    popMatrix();

    pushMatrix();
    rotate(-theta);
    line(0, 0, 0, -h);
    translate(0, -h);
    drawBranch(h);
    popMatrix();
  }
}