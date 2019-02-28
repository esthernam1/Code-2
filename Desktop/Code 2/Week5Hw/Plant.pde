class Plant {
  //data
  float plantHeight;
  int numLeaves;
  color plantColor;
  int xPos;

  //constructor
  Plant(int _xPos, float _plantHeight) { 
    xPos = _xPos;
    plantHeight = _plantHeight;
  }




  void display( int _numLeaves, color _plantColor) {

    fill(_plantColor);
    numLeaves = _numLeaves;

    for (int i = 0; i<_numLeaves; i++) {

      ellipse(xPos, plantHeight + 30*i, 50 +(i*5), 20);
    }

    rect(xPos, plantHeight, 10, 500);
  }
  
  
  
  
  void grow() {
    plantHeight -= 1;
  }
}