void CAN() {  // CountAliveNeighbours
  for (int i = 0; i < rows; i++) {
    for (int j = 0; j < cols; j++) {
      Cell c = cells[i][j];

      int an = 0;

      // The numbering corresponds to the digits on a phone where 5 is cell[i][j]
      // Neighbor 1
      if (cells[(i + rows - 1) % rows][(j + cols - 1) % cols].aliveNow) {
        an++;
      } 
      // Neighbor 2
      if (cells[i][(j + cols - 1) % cols].aliveNow) {
        an++;
      }
      // Neighbor 3
      if (cells[(i+1) % rows][(j + cols - 1) % cols].aliveNow) {
        an++;
      }
      // Neighbor 4
      if (cells[(i + rows - 1) % rows][j].aliveNow) {
        an++;
      }
      // Neighbor 6
      if (cells[(i+1) % rows][j].aliveNow) {
        an++;
      }
      // Neighbor 7
      if (cells[(i + rows - 1) % rows][(j+1) % cols].aliveNow) {
        an++;
      }
      // Neighbor 8
      if (cells[i][(j+1) % cols].aliveNow) {
        an++;
      }
      // Neighbor 9
      if (cells[(i+1) % rows][(j+1) % cols].aliveNow) {
        an++;
      }
      c.aliveNeighbours = an;
    }
  }
}


// --------------------------------------------------------------


void rules() {

  for (int i = 0; i < rows; i++) {
    for (int j = 0; j < cols; j++) {
      Cell c = cells[i][j];

      if (c.aliveNow) {
        if (c.aliveNeighbours < 2) { //no movement
          c.aliveNext = false;
        }
        if (c.aliveNeighbours == 2) { //movement
          c.aliveNext = true;
        }
        if (c.aliveNeighbours == 3) {
          c.aliveNext = true;
        }
        if (c.aliveNeighbours > 3) {
          c.aliveNext = false;
        }
      } else {
        if (c.aliveNeighbours == 3) {
          c.aliveNext = true;
        }
      }
    }
  }
}


// --------------------------------------------------------------


// Prepares for next iteration 

void update() {
  for (int i = 0; i < rows; i++) {
    for (int j = 0; j < cols; j++) {
      Cell c = cells[i][j];
      c.aliveNow = c.aliveNext;
    }
  }
}