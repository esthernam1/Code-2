//Switch not working

int sceneNumber = 0;
int plantNumber = 0;

Rain rainz[] = new Rain[500];

Plant garden[] = new Plant[10];

void setup() {
  size(700, 500);

  //daryl = new Plant (int(random(100, 400)));
  //eugene = new Plant (int(random(100, 400)));

}

void draw() {
  //background(255);
  //eugene.display(10, 4, color(0, 150, 50));
  //daryl.display(100, 10, color(0, 255, 10));



  switch(sceneNumber) {
  case 0:
    scene0();
    // plant0();
    break; //kinda like push pop. break btwn cases

  case 1:
    scene1();
    //plant1();
    break;

  case 2:
    scene2();
    //plant2();
    break;

  case 3:
    sceneNumber = 0;
    //carzNumber = 0;
    break;
  }

  switch(plantNumber) {
  case 0:
    plant0();
    break; //kinda like push pop. break btwn cases

  case 1:
    plant1();
    break;

  //case 2:
  //  plant2();
  //  break;

  case 3:
    plantNumber = 0;
    break;
  }
}

void keyPressed() {
  if (key == CODED) {
    if (keyCode == UP) {
      plantNumber++;
    }
  }
  if (key == ' ') {
    sceneNumber++;
  }
}

void scene0() {
  //BACKGROUND
  background(180, 220, 250);
  fill(100);
  rect(0, height*.8, width, height);
  //for (int i=0; i<rainz.length; i++) {
  //  rainz[i].displayTop();
  //} 

  textSize(20);
  text("Press the spacebar to make it rain", 95, height*.92);
  text("Press up arrow to make plants GROW", 70, height*.97);
}

void plant0() {
  for (int i=0; i<garden.length; i++) {
    garden[i].display(2+i*3, color(10, i*20, 50));
  }
  
   noStroke();
  for (int i=0; i<garden.length; i++) {
    garden[i] = new Plant(int(random(10, width)), int(random(100, width)));
  }
}
 
void scene1() {
  //BACKGROUND
  background(138, 180, 216);
  fill(100);
  rect(0, height*.8, width, height);
  for (int i=0; i<rainz.length; i++) {
    rainz[i].displayTop();
  } 
  fill(255);
  textSize(20);
  text("Press the spacebar to make it rain", 95, height*.92);
  text("Press up arrow to make plants GROW", 70, height*.97);
}

void plant1() {
for (int i=0; i<garden.length; i++) {
    garden[i].display(2+i*3, color(10, i*20, 50));
    garden[i].grow();
    println(garden[0].plantHeight);
  }
}

void scene2() {
  //BACKGROUND
  background(39, 91, 129);
  fill(100);
  rect(0, height*.8, width, height);
  for (int i=0; i<rainz.length; i++) {
    rainz[i].displayBottom();
  }

  fill(255);
  textSize(20);
  text("Press the spacebar to change time of day!", 95, height*.92);
  text("Press right arrow to change car speed/direction", 70, height*.97);
}

//void plant2() {

//}