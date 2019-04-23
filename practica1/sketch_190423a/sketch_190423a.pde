float bx;
float by;

float velx = 4;

boolean mover = false;
int boxSize = 75;
int frameSize = 700;

void setup() {
  size(700, 700);
  bx = width/2.0;
  by = height/2.0;
  rectMode(CORNER);  
}

void draw() { 
  background(1);
  
  rect(bx, by, boxSize, boxSize);
  if (mover){
    bx += velx;
    if (bx + boxSize >= frameSize){
      velx = -velx;
    }
    else if (bx <= 0) {
      velx = velx * -1;
    }
  }
}
 
void mousePressed() {
  mover = true;
}

void mouseReleased(){
  mover = false;
}
