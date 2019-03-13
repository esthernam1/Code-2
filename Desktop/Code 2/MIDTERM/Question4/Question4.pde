int myState = 0 ;
 
void setup() {
  size(700, 700);
}

void draw() {

  noStroke();
  textAlign(CENTER);
  switch(myState) {
  case 0 :
    background(25, 28, 100);
    fill(255);
    textSize(28);
    text("REVEAL THE PLANETS", width/2, height/3);
    text("Press ANY key!", (width/2)+30, (height/3)+30);

    fill(245, 190, 70);
    ellipse(width/4, height/2, 250, 250);
    //lots of other code
    break;

  case 1:
    background(25, 28, 100);
    fill(245, 190, 70);
    ellipse(width/4, height/2, 250, 250);
    fill(227, 217, 211);
    ellipse (width/2, height/1.5, 50, 50);
    textSize(28);
    text("smol planet", width/2, height/3);

    break;

  case 2:
    background(25, 28, 100);
    fill(188, 104, 55);
    ellipse(500, 350, 120, 120);
    fill(245, 190, 70);
    ellipse(width/4, height/2, 250, 250);
    fill(227, 217, 211);
    ellipse (width/2, height/1.5, 50, 50);
    textSize(28);
    text("mercury?", width/2, height/3);
    break;

  case 3:
    background(25, 28, 100);
    fill(185, 184, 142);
    ellipse(600, 640, 360, 360);
    fill(255, 250, 200);
    ellipse(670, 650, 60, 20);
    ellipse(535, 570, 100, 45);
    ellipse(480, 670, 70, 30);


    fill(188, 104, 55);
    ellipse(500, 350, 120, 120);
    fill(245, 190, 70);
    ellipse(width/4, height/2, 250, 250);
    fill(227, 217, 211);
    ellipse (width/2, height/1.5, 50, 50);
    textSize(28);
    text("wow more planets!", width/2, height/3);
    break;

  case 4:
    background(25, 28, 100);
    textSize(45);
    text("WHERE IS EARTH??", width/2, height/2);
    textSize(30);
    text("press any key to find her!", width/2, height/1.5);
    break; 


  case 5:
    background(25, 28, 100);
    fill(118, 180, 255);
    ellipse(width/2, height/2, 370, 370);
    fill(180, 206, 104);
    ellipse(240, 360, 70, 70);
    ellipse(370, 260, 20, 20);
    ellipse(340, 450, 60, 60); 
    ellipse(430, 380, 80, 80);
    break;

  case 6: 
    background(0);
    fill(255);
    textSize(45);
    text("GOODBYE WORLD!", width/2, height/2);
    textSize(30);
    text("press any key to restart!", width/2, (height/2)+40);
    break;
  }
}

void keyPressed() {
  myState = myState + 1 ;
  if (myState > 6) {
    myState = 0 ;
  }
}
