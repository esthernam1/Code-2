class Bricks{
  boolean detector;
  float x, y;
  float w, h;
  int o = 255;
  
  //CONSTRUCTOR
  Bricks(float x, float y, int w, int h){
    detector = true;
    this.x = x;
    this.y = y;
    this.w = w;
    this.h = h;
  }
  
  void display(color c){
    fill(c, o);
    rect(x, y, w, h);
  }
 
}
