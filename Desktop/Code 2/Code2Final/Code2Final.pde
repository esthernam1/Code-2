int num = 20;
float table [][] = new float[num][num];

int len = 8;

int wh = 80;
int wi;
int he;

float counter = 0;
boolean move = false;
float cam = 0;



void setup(){
  size(1500, 900, P3D);
  float cameraZ = ((height/2.0) / tan(PI*60.0/360.0));
  //perspective(PI/3.0, width/height, cameraZ/10.0, cameraZ*50.0) ;

  for (int i=0; i<num; i++){
    for (int j=0; j<num; j++){
      float y = i+0.5-float(num)/2;
      float x = j+0.5-float(num)/2;

      table[i][j] = sin(sqrt(x*x+y*y)/4)*500;
      //print(table[i][j]+" ");
    }
    //println("");
  }

  wi = width/2-wh*num/2;
  he = height/2-wh*num/2;
}

void keyPressed(){
  if (keyCode == ' ') {
    if (!move) {
      move = true;
    } else {
      move = false;
    }
  }
}

//void mousePressed()
//{
//  println(mouseY);

//  len = mouseY/900*10;
//}

void draw(){
  background(0);

  translate(0, 0, -600*num/7);
  rotateX(PI/4);
  translate(width/2, height/2, 0);
  rotateZ(cam);
  translate(-width/2, -height/2, 0);

  for (int i=0; i<num; i++){
    for (int j=0; j<num; j++){
      float y = i+0.5-float(num)/2;
      float x = j+0.5-float(num)/2;

      table[i][j] = abs(sin(sqrt(x*x+y*y)/len+counter)*500);

      translate(wi+i*wh, he+j*wh, 0);
      fill(table[i][j]/2, table[i][j]/2.5, 0);
      box(wh, wh, table[i][j]*3);
      translate(-wi-i*wh, -he-j*wh, 0);
    }
  }
  cam += PI/400;
  if (move){
    counter += 0.03;
  }
}