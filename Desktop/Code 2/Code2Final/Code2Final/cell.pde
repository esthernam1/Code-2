class Cell {
  boolean aliveNow = false;
  boolean aliveNext = false;

  int aliveNeighbours = 0;

  int m;
  int n;


  Cell(int m_, int n_) {
    m = m_;
    n = n_;
  }


  void show() {
    if (aliveNow) {
      fill(0, int(map(n, 0, 30, 0, 255)), int(map(m, 0, 30, 100, 255))); //RBG COLOR CHANGING
    } else {
      fill(255, 0);
    }
    rect(n * num, m * num, num, num);
  }
}