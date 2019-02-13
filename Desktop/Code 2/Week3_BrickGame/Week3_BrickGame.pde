//declare class type
//need double square brackets bc its a 3d array

int w = 50;
int h = 25;
int cols, rows;
Bricks myBricks[][];

void setup() {
  size(500, 500);
  cols = int(width/w);
  rows = int(height*.5/h); //only cover half of the screen

  noStroke();

  myBricks = new Bricks [cols][rows];

  for (int i = 0; i<cols; i++) {
    for (int j = 0; j<rows; j++) {
      myBricks[i][j] = new Bricks((i*w)+5, (j*h)+5, w-10, h-10);
    }
  }
}

void draw() {
  background(0);
  for (int i = 0; i<cols; i++) {
    for (int j = 0; j<rows; j++) {
      float red = map(i, 0, cols, 0, 255);
      float blue = map(j, 0, rows, 100, 200);
     myBricks[i][j].display(color(red, 0, blue));
     
    }
  }
}
