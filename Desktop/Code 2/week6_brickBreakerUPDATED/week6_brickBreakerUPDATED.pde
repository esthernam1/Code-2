//java.lang.reflect.InvocationTargetException WHATTT

//int[] scores = new int[0];
String [] scorez;
String highestScore;
Table table;
int numRows;

int lives;

int score;

float startTime;
float ellapsedTime;

int w = 50;
int h = 25;
int columns, rows;


Ball b;
Paddle p;s

Bricks myBricks [][];

void setup() {
  scorez = loadStrings("scores.csv");
  highestScore = scorez[0];
  
  for (int i = 0; i<scorez.length; i++) {
    if (int(scorez[i]) > int(highestScore)) {
      highestScore = scorez[i];
    }
  }

  size(500, 500);
  lives = 5;
  startTime = millis();

  columns = int(width/w);
  rows = int(height*.5/h);

  noStroke();

  myBricks = new Bricks[columns][rows];

  b = new Ball(width/2, height*.75, random(2, 4), random(-4, -3)); 
  p = new Paddle();

  for (int i = 0; i<columns; i++) {
    for (int j = 0; j<rows; j++) {
      myBricks[i][j] = new Bricks((i*w)+5, (j*h)+5, w-10, h-10);
    }
  }
}

void draw() {
  background(0);

  b.move();
  b.display();
  //b.checkCollision(p);

  p.display();
  p.reset();
  p.getSmaller();

  //making sure our ball stays within the boundaries of our screen 
  if (b.pos.x<= b.size/2 || b.pos.x>= width-b.size/2) {
    b.bounceSide();
  }

  if (b.pos.y<=b.size/2) {
    b.bounceTop();
  }
  //MAKE LIFE -1 IF GOES OFF BOTTOM
  if (b.pos.y>= height) {
    b.bounceTop();
    b.ballReset();
    lives = lives-=1;
  }

  //ball bouncing off of the paddle 
  //FIX THIS PADDLE CdOLLISION IS NOT WORKING
  if (b.pos.x >= p.pos.x 
    && b.pos.x <= p.pos.x+p.w
    && b.pos.y <= (p.pos.y+(b.size/2))
    && b.pos.y >= (p.pos.y-(b.size/2))) { 
    b.paddleBounce();
  }

  for (int i = 0; i<columns; i++) {
    for (int j = 0; j<rows; j++) {
      float red = map(i, 0, columns, 100, 255);
      float blue = map(j, 0, columns, 100, 255);
      myBricks[i][j].display(color(red, 0, blue));

      // checking to see if ball is within the boundaries of our bricks 
      if (b.pos.x <= (myBricks[i][j].x + myBricks[i][j].w) && b.pos.x>= (myBricks[i][j].x - myBricks[i][j].w) 
        && b.pos.y <= (myBricks[i][j].y + myBricks[i][j].h) && b.pos.y>= (myBricks[i][j].y - myBricks[i][j].h)
        && myBricks[i][j].detector == true) {
        myBricks[i][j].o = 0;  
        score = score+=1;
        //scores = append(scores, score);
        b.bounceTop();
        myBricks[i][j].detector = false;
      }
    }
  }

  if (keyPressed) {
    if (key==CODED) {
      if (keyCode == LEFT) {
        p.moveLeft();
      }
      if (keyCode == RIGHT) {
        p.moveRight();
      }
    }
  }

  //PRINT LIVES
  String printLives = ("Lives: " + lives);
  fill(255);
  textSize(20);
  text(printLives, width-100, height-20);

  //PRINT SCORE
  String printScore = ("Score: " + score);
  fill(255);
  textSize(20);
  text(printScore, 0, height-20);

  //PRINT PREVIOUS SCORE
  //String prevScore = ("Previous Score: " + scorez[0]);
  String prevScore = ("High Score: " + highestScore);
  fill(255);
  textSize(20);
  text(prevScore, 0, height-50);

  //ellapsed == startTime - current second 
  float ellapsedTime = (millis() - startTime)/1000;
  //println(ellapsedTime);
  //Timer
  text(60-ellapsedTime, width*.4, height-20);

  //GAME OVER
  if (lives <= -1 || (60-ellapsedTime) <= 0) {
    fill(0);
    rect(0, 0, 500, 500);
    fill(255);
    text("GAME OVER", width/2-60, height/2);
   
    //scores = append(scores, score);
    scorez = append(scorez, str(score));


    //saving the data into text files:
    //first parameter is what we want it to be called, second is what we're saving
    
    //appending the score to that Scores string array 
    //saving your Scores string array 
    
    //saveStrings("scores.csv", str(scores)); 
    saveStrings("scores.csv", scorez);     
    exit();
  }
}
