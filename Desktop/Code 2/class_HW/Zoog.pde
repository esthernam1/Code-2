class Zoog {
  // Zoog's variables
  float x, y, w, h, eyeSize;
  float size = w*2;




  // Zoog constructor
  Zoog(float tempX, float tempY, float tempW, float tempH, float tempEyeSize) {
    x = tempX;
    y = tempY;
    w = tempW;
    h = tempH;
    eyeSize = tempEyeSize;
  }

  // Move Zoog
  void jiggle(float speed) {
    // Change the location of Zoog randomly
    x = x + random(-1, 1)*speed;
    y = y + random(-1, 1)*speed;
    // Constrain Zoog to window
    x = constrain(x, 0, width-100);
    y = constrain(y, 0, height-100);
  }

  // Display 
  void display() {
    // Set ellipses and rects to CENTER mode
    ellipseMode(CENTER);
    rectMode(CENTER);

    //body
    noStroke();
    fill(220, 130, 60);
    ellipse(x, y+(h/2), w*2, w*2);

    //head
    noStroke();
    fill(255);
    ellipse(x, y-h, w, w);

    //eyes
    fill(0);
    ellipse(x - w/4.2, y-h, eyeSize/2, eyeSize/2);
    ellipse(x + w/4.2, y-h, eyeSize/2, eyeSize/2);

    //arms and legs
    stroke(2);
    line(x - w+20, y + (h/2)/4, x - (w-50), y + h - 30); //left
    line(x + w-20, y + (h/2)/4, x + (w-50), y + h - 30); //right
    noStroke();
    fill(200, 220, 80);
    ellipse(x-40, y+(h+25), w/4, w/4); //;eft
    ellipse(x+40, y+(h+25), w/4, w/4); //right
  }

  //void lerp() {
  //  float new1;
  //  float new2;

  //  float x, y;
  //  float posx, posy;

  //  float point1 = mouseX;
  //  float point2 = mouseY;

  //  float originx1 = 0;
  //  float originy1 = 0;


  //  posx = x;
  //  posy = y;

  //  point1 = lerp(point1, mouseX, 1);
  //  point2 = lerp(point2, mouseY, 1);

  //  originx1 = lerp(originx1, new1, 0.08);
  //  originy1 = lerp(originy1, new2, 0.08);
  //  z.display();
  //  ellipse(originx1, originy1, 50, 50);

  //  new1 = mouseX;
  //  new2 = mouseY;
  //}
}
