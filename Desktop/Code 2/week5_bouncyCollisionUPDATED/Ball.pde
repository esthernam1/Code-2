class Ball {
  PVector position;
  PVector velocity;
  Ball [] otherB;
  float r, m;

  //CONSTRUCTOR
  Ball(float x, float y, float r) {
    position = new PVector(x, y);

    //random2D returns a vector of a unit 1 in any direction, basically giving it direction
    velocity = PVector.random2D();
    velocity.mult(random(3, 6)); //creating a vector randomized between 3 and 6, basically giving it speed

    this.r = r; //this r in this particular spot is equal to this parameter r here
    m = r*.1;
  }

  //METHODS
  void display() {
    noStroke();
    ellipse(position.x, position.y, r*2, r*2);
  }

  void update() {
    position.add(velocity);
  }

  void checkBound() {
    if (position.x < r || position.x > width-r) {
      velocity.x = -velocity.x;
    }
    if (position.y < r || position.y > height-r) {
      velocity.y = -velocity.y;
    }
  }

  void checkCol(Ball [] otherB) {
    //calling the other Ball as other B just temporarily
    for (int i = 0; i<n; i++) {


      PVector dist = PVector.sub(otherB[i].position, position);
      float distMag = dist.mag(); //0verall distance
      float minDist = r + otherB[i].r; //minimum distance before the balls touch each other

      if (distMag < minDist) {
        float distCorrection = (minDist - distMag)/2; //magnitude of how much we're bouncing off of

        PVector d = dist.copy(); //copies value that it was and stores it in a new variable called d, 
        //aka takes snapshot of the distance in the exact moment they touch 
        PVector correctionVector = d.normalize().mult(distCorrection);

        otherB[i].position.add(correctionVector);
        position.sub(correctionVector);

        float theta = dist.heading(); //returns angle of the vector

        PVector[] bTemp = {new PVector(), new PVector()};

        bTemp[1].x = cos(theta)*dist.x + sin(theta)*dist.y;
        bTemp[1].y = cos(theta)*dist.y - sin(theta)*dist.x;

        PVector[] vTemp = {new PVector(), new PVector()};
        //right before they collide
        vTemp[0].x = cos(theta)*velocity.x + sin(theta)*velocity.y;
        vTemp[0].y = cos(theta)*velocity.y - sin(theta)*velocity.x;
        //right after they collide
        vTemp[1].x = cos(theta)*otherB[i].velocity.x + sin(theta)*otherB[i].velocity.y;
        vTemp[1].y = cos(theta)*otherB[i].velocity.y - sin(theta)*otherB[i].velocity.x;

        PVector[] vFinal = {new PVector(), new PVector()};
        //solving for the final velocity of object a in our above equation 
        vFinal[0].x = ((m - otherB[i].m) * vTemp[0].x + 2 * otherB[i].m * vTemp[1].x) / (m + otherB[i].m);
        vFinal[0].y = vTemp[0].y;

        // final rotated velocity for b[0]
        vFinal[1].x = ((otherB[i].m - m) * vTemp[1].x + 2 * m * vTemp[0].x) / (m + otherB[i].m);
        vFinal[1].y = vTemp[1].y;

        // hack to avoid clumping
        bTemp[0].x += vFinal[0].x;
        bTemp[1].x += vFinal[1].x;


        // rotate balls
        PVector[] bFinal = { 
          new PVector(), new PVector()
        };

        bFinal[0].x = cos(theta) * bTemp[0].x - sin(theta) * bTemp[0].y;
        bFinal[0].y = cos(theta) * bTemp[0].y + sin(theta) * bTemp[0].x;
        bFinal[1].x = cos(theta) * bTemp[1].x - sin(theta) * bTemp[1].y;
        bFinal[1].y = cos(theta) * bTemp[1].y + sin(theta) * bTemp[1].x;

        // update balls to screen position
        otherB[i].position.x = position.x + bFinal[1].x;
        otherB[i].position.y = position.y + bFinal[1].y;

        position.add(bFinal[0]);

        // update velocities
        velocity.x = cos(theta) * vFinal[0].x - sin(theta) * vFinal[0].y;
        velocity.y = cos(theta) * vFinal[0].y + sin(theta) * vFinal[0].x;
        otherB[i].velocity.x = cos(theta) * vFinal[1].x - sin(theta) * vFinal[1].y;
        otherB[i].velocity.y = cos(theta) * vFinal[1].y + sin(theta) * vFinal[1].x;
      }
    }
  }
}