int cellSize = 10;
int cols, rows;
color colors[][];

void setup() {
  size(1000, 1000);
  background(0);
  noStroke();

  cols = width/cellSize;
  rows = height/cellSize;

  colors = new color [cols][rows];


  for (int i =0; i<cols; i++) {
    for (int j = 0; j<rows; j++) {
    }
  }
}

void draw() {
  float inc = 0.09;


  float xoff = 0.0;
  for (int i =0; i<cols; i++) {
    xoff += inc;

    float yoff = 0.0;
    for (int j = 0; j<rows; j++) {
      //colors[i][j] = color(0, 0, random(100, 255));

      yoff+= inc;

      float noiseVal = noise(xoff, millis()*.001, yoff);


      color fillColor = color(map(noiseVal, 0, 1, 0, 150), 
        map(noiseVal, 0, 1, 76, 225), 
        map(noiseVal, 0, 1, 175, 225));

      if (noiseVal < .5) {
        fillColor = color(map(noiseVal, 0, .5, 0, 150), 
          map(noiseVal, 0, 1, 76, 225), 
          map(noiseVal, 0, 1, 175, 225));
          colors[i][j] = fillColor;
      }
      if (noiseVal >= .5) {
        fillColor = color(map(noiseVal, .5, 1, 153, 255), 
          map(noiseVal, .5, 1, 200, 225), 
          map(noiseVal, .5, 1, 200, 225));
        colors[i][j] = fillColor;
      }


      println(noiseVal);
    }
  }

  for (int i =0; i<cols; i++) {
    for (int j = 0; j<rows; j++) {
      fill(colors[i][j]);
      rect(i*cellSize, j*cellSize, cellSize, cellSize);
    }
  }
}
