PImage bg;
PImage plataforma;

float posx;
boolean perder = false;

Jugador jugador;
Ball ball;

void setup() {
  bg = loadImage("/home/surister/Downloads/img.jpg");
  plataforma = loadImage("/home/surister/Downloads/platform.png");
  size(700, 700);
  jugador = new Jugador();
  ball = new Ball();
}


void draw() {
  image(bg, 0, 0, width, height);
  if (!perder) {

    jugador.update(mouseX);
    jugador.display();

    ball.update();
    ball.comprobarcolision(jugador);
    ball.display();
  }
}

class Jugador {

  float posxraton = 100;

  Jugador() {
  }

  void update(float posx) {
    posxraton = posx;
  }
  void display() {
    fill(1);
    image(plataforma, posxraton, 435, 200.0, height/5);

  }
}

class Ball {

  PVector velocidad;
  PVector posicion;
  color Color;

  Ball() {
    velocidad = new PVector(4, 4);
    posicion = new PVector(109, 25);
  }

  void update() {
    posicion.add(velocidad);
    if (posicion.x > width - 25 || (posicion.x < 25)) {
      velocidad.x *= -1;
    }

    if (posicion.y - 25 < 0) {
      velocidad.y *= -1;
    }
  }
  void comprobarcolision(Jugador other) {

    if ((posicion.y + 25 > 500) && (posicion.x +25 > other.posxraton) && (posicion.x < other.posxraton + 225)) {
      velocidad.y *= -1;
      Color = color(int(random(255)), int(random(59)), 0);
    }

    if (posicion.y > height) {
      perder = true;
    }
  }
  void display() {
    noStroke();
    fill(Color);
    ellipse(posicion.x, posicion.y, 50, 50);
  }
}
