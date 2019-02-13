class Snowflakes {

  float x, y;
  int o = 255; //for opacity
  color c;
  float gravity;
  float size;

  //CONSTRUCTOR
  Snowflakes(float _x, float _y) {
    x = _x;
    y = _y;
    size = random (5, 15);

    gravity = random(1, 3);
  }


  //METHODS
  //draw
  void display() {
    fill(255, o);
    ellipse(x, y, size, size);
  }

  //fall
  void fall() {
    //gravity
    y += gravity;
    //opacity
    o --;
  }

  boolean isAlive() {
    if (y<height) {
      return true;
    } else {
      return false;
    }
  }
  //boolean to check if our snowflake is alive
}
