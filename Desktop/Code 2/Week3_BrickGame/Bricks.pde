//position
//size
//color + opacity

class Bricks {

  float x, y;
  float w, h;
  int o =255; //opacity

  //constructer
  Bricks(float x, float y, int w, int h) {
    this.x = x; //this.x = to the parameter placeholder you declared
    this.y = y;
    this.w = w;
    this.h = h;
  }

  void display(color c) {
    //bricks
    fill(c, o);
    rect(x, y, w, h);
  }
}
