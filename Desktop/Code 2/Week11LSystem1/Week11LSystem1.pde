String currentString = "A";
int generations = 0;

void setup() {
}

void draw() {
}

void mousePressed() {
  String nextString = "";

  for (int i = 0; i < currentString.length(); i++) {
    char c = currentString.charAt(i);
    //write out our rules
    if ( c == 'A') {
      nextString += "AB";
    } else if (c == 'B') {
      nextString += "A";
    }
  }
  currentString = nextString;
  generations++;
  println("generations: " + generations + ":" + currentString);
}