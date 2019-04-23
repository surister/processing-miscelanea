int x = 0;
int y = 0;
boolean cambiar_color = false;
int frames = 5;

void setup() {
  size(700, 400);
  noStroke();
}

void draw() {
  frameRate(frames);
  for (int x = 0; x < width; x+=10) {
    for (int y = 0; y < height; y+=10) {
      if (cambiar_color) {
        int[] colores = { 255, 255, 255 };
        colores[int(random(colores.length))] = int(random(colores[int(random(colores.length))]));
        fill(colores[0], colores[1], colores[2]);
      } else {
        fill(random(255));
      }
      rect(x, y, 10, 10);
    }
  }
}

void mousePressed() {
  cambiar_color = true;
  frames += 5; //<>//
}

void mouseReleased() {
  cambiar_color = false;
}
