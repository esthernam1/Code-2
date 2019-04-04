char c = 'b';
//char is a single character 
float xPos = 100;
float yPos = height/2;
float currentPos;
float targetX = 100; 
float targetY = 400;
float easingRate;

void setup() {
  size(500, 500);
  easingRate = .01;
  
  yPos = height/2;
}

void draw() {
  background(255);
  println(stateProb());
  
  if(c == 'a'){
    targetX = 100;
  }else if (c == 'b'){
    targetX = 400;
  }
  xPos += (targetX - xPos) * easingRate;
  yPos += (targetY - yPos) * easingRate;
  
  ellipse(xPos, yPos, 50, 50);
}

char stateProb() {
  //based on a random float value, you want it to return a single char
  float r =  random(0, 1);

  if (c == 'a') {
    if (r <= .8) {
      c = 'a';
    } else {
      c = 'b';
    }
  }

  if (c == 'b') {
    if (r >= .2) {
      c = 'b';
    } else {
      c= 'a';
    }
  }
  //since we have a char variable, we need to return the function
  return c;
}
