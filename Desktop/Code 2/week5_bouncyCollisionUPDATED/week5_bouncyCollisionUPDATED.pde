//Ball[] balls = {new Ball(100, 100, random(40, 60)), new Ball(600, 600, random(50, 80))};

int n = 10;
Ball [] myBalls; //set up a storage container w 10 slots

void setup(){
  size(800, 800);
  
     myBalls = new Ball[n];
     
     for(int i =0; i<n; i++){
     myBalls[i] = new Ball(i*100+50, i*100+50, random(20, 50));
   }
}

void draw(){
  background(91, 123, 245);
  

  //new for loop method
  for(Ball b: myBalls){
    b.update();
    b.display();
    b.checkBound();
  }
  for(int i = 0; i <n-1; i++){
    myBalls[i].checkCol(myBalls);
  }
  //myBalls[0].checkCol();
  //myBalls[1].checkCol(myBalls[0]);
}