void setup() {
  size(600, 600);
  background(255);
  rectMode(CENTER);
}

void draw() {
  background(255);
  drawRect(width/2, height/2, width);
}

void drawRect(int x, int y, float radius) {
  rect(x, y, radius, radius);


  if (radius > 10) {//base case
    radius *= .75; //makes radius smaller by .75
    pushMatrix();
    translate(x, y);
    float theta = mouseY;
    rotate(radians(theta));
    drawRect(0, 0, radius);
    popMatrix();
  }
}