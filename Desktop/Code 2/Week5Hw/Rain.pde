class Rain {  
  float x, y, w;

  //CONSTRUCTOR
  Rain() {
    x = random(0, width);
    y = random(0, height);
    w= int(random(5, 8));
  }

  //METHODS
  void displayTop() {
    fill(255);
    ellipse(x, y, w, w);
  }

  void displayMiddle() {
    fill(255);
    ellipse(x, y, w, w);
    fill(255);
  }

  void displayBottom() {
    fill(255);
    ellipse(x, y, w, w);
    fill(255);
  }
}