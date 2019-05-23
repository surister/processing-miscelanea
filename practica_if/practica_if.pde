int x = 0;
int y = 0;

int numeroAleatorio() {
  return(int(random(-2, 2)));
}
void setup() {
  size(700, 400);
  noStroke();
}

void draw() {
  background(233);
  for (int x = 0; x < width; x+=100) {
    if (numeroAleatorio() > 0) {
      fill(66, 244, 128);
    } else {
      fill(random(255));
    }

    rect(300, x, 10, 100);
    rect(200, x, 10, 100);
    rect(400, x, 10, 100);
    rect(500, x, 10, 100);
    rect(600, x, 10, 100);
    rect(0, x, 10, 100);
  }
}
