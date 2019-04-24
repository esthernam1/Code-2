void setup() {
  size(500, 500, P3D);
}

void draw() {
  background (0);
spotLight(255, 0, 0, width/2, height/2, 400, 0, 0, -1, PI/4, 2);

  //location
  translate(width/2, height/2, 0);

  rotateY(mouseY*-0.005);
  rotateX(mouseX*-0.005);
  
  fill (0, 255, 255);
   translate(width/2, height/2, 0);
  box(100);
   translate(-width/2, -height/2, 0);
  fill (255, 0, 0, 50);
  sphere (200);
  
}