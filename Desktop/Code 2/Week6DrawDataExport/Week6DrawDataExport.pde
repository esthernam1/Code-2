int [] x = new int [0];
int [] y = new int [0];

void setup() {
  size(800, 800);
}

void draw() {
  stroke(255);
  background(255);

  beginShape();
    for(int i = 0; i < x.length; i++){
      vertex(x[i], y[i]);
      fill(200, 30, 200);
      ellipse(x[i], y[i], 10, 10);
      
      println("x:" + x[i], "y:" + y[i]);
      
    }
  endShape();
}

void mousePressed() {
  x = append(x, mouseX);
  y = append(y, mouseY);
  //append = pushing data/expanding an array
}

void keyPressed(){
  if(key == 's'){
    String [] lines = new String [x.length];
    
    for(int i = 0; i < x.length; i++){
      lines[i] = x[i] + "/t" + y[i];
    }
    
    saveStrings("lines.txt", lines);
    exit();
  }
}