PShape sun, planet1, planet2;
PImage sunText, planet1Text, planet2Text;

Star[] stars = new Star[500];
float speed;

void setup() {
  fullScreen(P3D, 2);
  noStroke();
  sunText = loadImage("sun.jpeg");
  planet1Text = loadImage("earth.jpg");
  planet2Text = loadImage("jupiter.jpg");

  fill(255);

  sun = createShape(SPHERE, 200);
  sun.setTexture(sunText);

  planet1 = createShape(SPHERE, 130);
  planet1.setTexture(planet1Text);

  planet2 = createShape(SPHERE, 100);
  planet2.setTexture(planet2Text);
  
for(int i = 0; i < stars.length; i++){
    stars[i] = new Star();
  }
}

void draw() {
  background(0);

pushMatrix();
  speed = map(mouseX,0, width, 0, 100);
  translate(width/2,height/2);
  for(int i = 0; i < stars.length; i++){
    stars[i].update();
    stars[i].show();
  }

  popMatrix();

  pushMatrix(); //planet2
  translate(width/2, height/2, -250); //translate the sun

  pushMatrix(); //set new coordinate system for canvas
  rotateY(PI* frameCount / 500);
  shape(sun);
  popMatrix();  


  rotateY(PI * frameCount / 300);
  translate(350, 0, 250);
  shape(planet1);
  translate(0, 0, 300);
  shape(planet2);
  popMatrix();
}


//hw make rotations more realistic
//create a starfield using classes of spheres, and arrays
//think about adding point lights/spotlights