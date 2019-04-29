
Car[] cars = new Car[4];
Car myCar; 

void setup() {
  size(480, 270);
  cars[0] = new Car(random(4, 7), 100);
  cars[1] = new Car(random(4, 7), 150);
  cars[2] = new Car(random(4, 7), 200);
  cars[3] = new Car(random(4, 7), 250);
}

void draw() {
  background(255);

  for (Car car : cars) {
    car.move();
    car.display();
  }
}
class Car { 
  // Variables.
  color c; 
  float xpos;
  float ypos;
  float xspeed;

  Car(float velocidad, int y_pos) { 
    c = color(random(175), 54, 64);
    xpos = 10;
    ypos = y_pos;
    xspeed = velocidad;
  }

  void display() { 
    rectMode(CENTER);
    stroke(0);
    fill(c);
    rect(xpos, ypos, 20, 10);
  }

  void move() { 
    xpos = xpos + xspeed;
    if (xpos > width) {
      xspeed = 0;
    }
  }
}
