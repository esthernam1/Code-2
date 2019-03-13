class Paddle {
  int w = 100; 
  int h = 25; 
  PVector pos;
  //float x, y; 

  //CONSTRUCTOR
  Paddle() {
      //x = width/2; 
      //y = height*.75;
      pos = new PVector(width/2, height*.8);
  }

  //METHODS
  void display() {
    fill(255, 255, 0);
    rect(pos.x, pos.y, w, h);
  }

  //void move() {
  //  x = mouseX;
  //}
  
  void getSmaller(){
    if (frameCount%60 == 0) {
      w = w-=.5;
    }
  }

  void moveLeft() {
       pos.x-= 10;
  }

  void moveRight() {
    pos.x+= 10;
  }

  void reset() {
    if (pos.x >= (width+w/2)) {
      pos.x = 0;
    }

    if (pos.x<= (-w/2)) {
      pos.x = width;
    }
  }
}
