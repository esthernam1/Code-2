//Export the color of the background to a csv file 
//so that when you reload the scene it loads with 
//same color as when the sketch was closed.

float r; 
color bgColor; 
String[] previousBg;
String previousColor;

void setup() {
  size(600, 600); 

  previousBg = loadStrings("colors.csv");
  previousColor = previousBg[0];

  for (int i = 0; i<previousBg.length; i++) {
    if (i>i-1) {
      previousColor = previousBg[i];
    }
  }
  background(int (previousColor));
}

void draw() {
  background(bgColor); 
  text("back ground # : " + bgColor, 100, 100);
}

void mousePressed() {
  bgColor = color(random(0, 255), random(0, 255), random(0, 255)); 
  ellipse(mouseX, mouseY, 50, 50);
}
void keyPressed() {
  if (key == 's') {
    previousBg = append(previousBg, str(bgColor));
    saveStrings("colors.csv", previousBg); 
    exit();
  }
}
