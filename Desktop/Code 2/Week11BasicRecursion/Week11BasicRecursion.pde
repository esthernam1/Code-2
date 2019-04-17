void setup() {
  size(600, 600);
  background(255);
  //noFill();
}

void draw() {
  drawRect(width/2, height/2, width);
}

void drawRect(int x, int y, float radius) {
  rect(x, y, radius, radius);


  if (radius > 10) {//base case
    radius *= .75; //makes radius smaller by .75
    pushMatrix();
    translate(x, y);
    float theta = mouseY;
    //theta += 30;
    rotate(radians(theta));
    drawRect(x, y, radius);
    //drawRect(x/4, y/4, radius/4);
    popMatrix();
  }
}